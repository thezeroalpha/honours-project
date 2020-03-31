#!/usr/bin/env python3
# coding: utf-8
from os import environ as env

joplin_url = "http://localhost:41184"
token = env['JOPLIN_API_TOKEN']

# Fetch tags from joplin
import requests
import json
try:
    excluded_tags = ['current']
    r = requests.get(url=f"{joplin_url}/tags", params={'token': token, 'fields': 'id,title'})
    data = json.loads(r.content)
    tags = { x['id']: x['title'] for x in data if x['title'] not in excluded_tags }

    # For each tag, fetch the associated notes from joplin
    tagged_notes = {}
    excluded_notes = 'Classification ideas'
    for tag_id in tags.keys():
        r = requests.get(url=f"{joplin_url}/tags/{tag_id}/notes", params={'token': token, 'fields': 'title'})
        data = json.loads(r.content)
        notes_in_tag = [x['title'] for x in data if x['title'] not in excluded_notes]
        tagged_notes[tags[tag_id]] = notes_in_tag

    data = { x: v for x, v in tagged_notes.items() if bool(v)}

    # Create the dataframe to hold the rowss
    import pandas as pd
    df = pd.DataFrame([], columns=list(data.keys()))

    # For each column, insert the rows
    for col, vals in data.items():
        for i in vals:
            df.at[int(i), col] = True

    # Convert NaN to False
    df = df.applymap(lambda x: False if pd.isna(x) else x)

    # The main classes
    columns = ['services', 'severity', 'range', 'users', 'cause', 'duration', 'affected']

    # Function to flatten values if a column only contains singleton and empty lists
    def has_nonsingletons(l):
        return len([x for x in l if len(x) > 1]) > 0

    def remove_empty_from_sublists(l):
        return list(map(lambda y: list(filter(lambda x: x != '', y)), l))

    def flatten_singletons(l):
        return list(map(lambda x: x[0] if len(x) == 1 else '', l))

    def flatten_if_possible(l):
        l = remove_empty_from_sublists(l)
        if has_nonsingletons(l):
            return l
        else:
            return flatten_singletons(l)

    # Group classifications by class
    for col in columns:
        matching_in_df = [c for c in df if c.startswith(col)]
        for colname in matching_in_df:
            newname = ' '.join(colname.split()[1:])
            df[colname] = df[colname].map(lambda x: newname if x else "")
        l = df[matching_in_df].values.tolist()
        df[col] = flatten_if_possible(l)
        df = df.drop(columns=matching_in_df)

    # Save the dataframe as a parquet file
    df.to_parquet("../data/classified.parquet")
except (requests.ConnectionError):
    print("error: can't connect to Joplin server")
