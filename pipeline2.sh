#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/bin/sh

#Is filename given? 
if [ -z "$1"  ]; then 
    #error
    echo "Geen file in aanroeping.\nRoep aan met \"./pipeline2.sh [FILE]\""
else
    #pipeline
    bzcat $1 | grep 'Personenauto' | cut -d ',' -f  3,4 | sort | uniq -c | sort -n -r | head -10 | sed 's/^ *[0-9]* //'
fi