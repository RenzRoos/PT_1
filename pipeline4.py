#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/usr/bin/env python

#libraries
import sys

#vars
data = sys.stdin.read()
data = data.split("\n")

#loop through data to put in correct form
for line in data:
    line = line.split(" ")
    if line[0] == '' or line[1] == '':
        continue
    line[0] = line[0].replace(',', ".")
    line[0] = round( float( line[0] ) )
    line[0] = str(line[0])
    print(' '.join(line))