import sys
data = sys.stdin.read()
data = data.split("\n")

for line in data:
    line = line.split(" ")
    if line[0] == '' or line[1] == '':
        continue
    line[0] = line[0].replace(',', ".")
    line[0] = round( float( line[0] ) )
    line[0] = str(line[0])
    print(' '.join(line))