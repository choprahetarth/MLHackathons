from glob import glob
import os
import pandas as pd


files = glob(os.path.join('data', '*_result.txt'))
for file in files:
    df = pd.read_csv(file, sep='\t', header=None, skiprows=2)
    df = df[df[0]!='**ILL INST**']
    df.to_csv(file, index=False, header=None, sep='\t')