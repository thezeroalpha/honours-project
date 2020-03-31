import pandas as pd

# in case the descriptions contain fucky syntax
def clean_lines(desc):
    import ast
    first_line = desc[0:desc.find('[')]
    nastiness = desc[desc.find('['):]
    lines = [first_line]
    lst = ast.literal_eval(nastiness)
    lines += [x['text'] for x in lst]
    return ' '.join(lines)

data = pd.read_parquet('../data/outages_with_gcp.parquet')
data.columns
for i, row in data[data.vendor == "GCP"].iterrows():
    f = open(f"reports/{i}.md", 'w')
    f.write(f"# {row['vendor'].rstrip()}: {row['service_name'].rstrip()}\n\n")
    f.write(f"{clean_lines(row['description'].rstrip())}")
    f.close()
