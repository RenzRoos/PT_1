#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/bin/sh

#Is filename given? 
if [ -z "$1"  ]; then 
    #error
    echo "Geen file in aanroeping.\nRoep aan met \"./pipeline1.sh [FILE]\""
else
    #pipeline
    bzcat $1 | grep 'Personenauto' | cut -d ',' -f  1 | tail -n +2 | tr A-Z X | tr 0-9 9 | sort | uniq 
fi