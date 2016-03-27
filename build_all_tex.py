#! /usr/bin/env python

import glob
import os

cmd = 'rm ./content/pdf/*.pdf'
os.system(cmd)

for path in glob.glob('content/tex/*'):
    cmd = '(cd {} && make cleanAll && make all)'.format(path)
    os.system(cmd)

