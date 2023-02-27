#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/bin/sh

#Is filename given? 
if [ -z "$1"  ]; then 
    #error
    echo "Geen file in aanroeping.\nRoep aan met \"./pipeline6.sh [FILE]\""
else
    #pipeline
    bzcat $1 | awk -F "," '{if ($2 == "Personenauto" && ($24 != "" || $51="")) {print $3","$24","$51} }' | 
    sort | python3 pipeline6_plot.py
fi