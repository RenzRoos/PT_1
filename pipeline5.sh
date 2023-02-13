#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/bin/sh

#Is filename given? 
if [ -z "$1"  ]; then 
    #error
    echo "Geen file in aanroeping.\nRoep aan met \"./pipeline5.sh [FILE]\""
else
    #pipeline
    bzcat $1 | awk -F "," '{ if($2 == "Personenauto") { print $6 } }' | python3 pipeline5_plot.py
fi