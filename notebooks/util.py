"""
Various helper functions
"""

# Colorblind-friendly colors from: http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette
import plotnine as p9

# Filter to include/exclude 'not provided' rows in series
def filter_notprovided(series, keep=False):
    import pandas as pd
    from numpy import ndarray, int32
    if keep:
        if type(series.iloc[0]) == ndarray:
            return series.map(lambda x: x.tolist() == ['not provided'])
        elif type(series.iloc[0]) == int32:
            return series.map(pd.isnull)
        else:
            return series.map(lambda x: x == 'not provided')
    
    if type(series.iloc[0]) == ndarray:
        return series.map(lambda x: x.tolist() != ['not provided'])
    elif type(series.iloc[0]) == int32:
            return series.map(pd.isnull)
    else:
        return series.map(lambda x: x != 'not provided')

# Length and percentage of df as part of whole df
def len_and_pct(partdf, wholedf):
    pct = f'{round(len(partdf)/float(len(wholedf))*100, 2)}\%'
    return (len(partdf), pct)

# Abbreviate words
def abbrev(s):
    import re
    words = s.split()
    shortened = [re.sub('[\(\)]', '', x)[0:5] for x in words]
    return " ".join(shortened)

# Replace words with known abbreviations
def shorten(s):
    maps = {
        'unavailable': 'Unavail',
        'degraded performance': 'Perf',
        'intermittent': 'Interm',
        'continuous': 'Cont',
        'visual': 'Vis',
        'some': 'SU',
        'all': 'AU',
        'single region': 'SR',
        'multiple regions': 'MR',
        'single availability zone': 'SAZ',
        'code error': 'CODE',
        'third party': '3P',
        'internal api issue': 'INTCOM',
        'increased load': 'LOAD',
        'internal network issue': 'INTCONN',
        'unhealthy unit': 'UNHLT',
        'configuration error': 'CFG',
        'maintenance side effect': 'MAINT',
        'deployment task': 'DEPLTSK',
        'shock event': 'SHOCK',
        'backend inefficiency': 'BKINEF',
        'environmental conditions': 'ENV',
        'nodes/devices/instances': 'UNIT',
        'external requests (apis)': 'EXTREQ',
        'storage': 'STOR',
        'internal communication interfaces': 'INTREQ',
        'external network/connectivity': 'EXTCONN',
        'processing backend': 'BKPROC',
        'certificates/licenses': 'CERT',
        'internal network': 'INTCONN',
        'user interface': 'UI',
        'everything': 'ALL',
        'one': '1',
        'multiple': '+',
        'human': 'HUMAN',
        'external': 'EXTERN',
        'network': 'NETW',
        'load': 'LOAD',
        'unit': 'UNIT'
    }
    return maps[s]


def export_graph(graphname, df, columns, plot):
    print('Not provided:')
    for c in columns:
        outstr = "{} events, {}".format(*len_and_pct(df[filter_notprovided(df[c], keep=True)], df))
        with open("../report/src/numbers/"+"np-"+graphname+"-"+c+".tex", "w") as f:
            f.write(outstr)
        print(f'- {c}: {outstr}')

    (plot+p9.ggtitle("")).save("../report/src/images/"+graphname+".png", dpi=300)
    print(plot)

def scheme(mode, *colors):
    colordef = {'lred': '#fab7b7', 
                'dred': '#d45079',
                'dblue': '#6886c5', 
                'lblue': '#b0deff', 
                'dorange': '#f5b971',
                'lorange': '#f6d186',
                'dpurp': '#a6b1e1',
                'yellow': '#fcf876',
                'lpurp': '#dcd6f7',
                'lgreen': '#a8e6cf',
                'blackish': '#39375b',
                'seafoam': '#a0ffe6'}
    scfun = p9.scale_fill_manual if mode == 'fill' else p9.scale_color_manual
    if bool(colors):
        return scfun([(colordef[x] if x in colordef else x) for x in colors])
    else:
        return scfun(list(colordef.values()))