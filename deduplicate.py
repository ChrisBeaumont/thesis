from glob import glob
import re
import os
from collections import Counter

pattern = re.compile('\\label\{(.*?)\}', flags=re.S)

labels = Counter()

for file in glob('*/*tex'):
    data = open(file).read()
    for label in pattern.finditer(data):
        labels.update(label.groups())

labels = [l for l in labels if labels[l] > 1]

for file in glob('*/*tex'):
    ch = os.path.split(file)[0]
    data = open(file).read()
    data0 = data
    for l in labels:
        data = data.replace(r'\label{%s}' % l,
                            r'\label{%s_%s}' % (l, ch))
        data = data.replace(r'\ref{%s}' % l,
                            r'\ref{%s_%s}' % (l, ch))
    with open(file, 'w') as outfile:
        outfile.write(data)
