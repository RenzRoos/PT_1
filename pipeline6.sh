#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/bin/sh

#bestandsnaam meegegeven? 
if [ -z "$1"  ]; then 
    #error
    echo "Geen file in aanroeping.\nRoep aan met \"./pipeline6.sh [FILE]\""
else
    #pipeline
    bzcat $1 | awk -F "," '{if ($2 == "Personenauto" && ($24 != "" || $51="")) {print $3, $24, $51} }' | 
    sort | awk '{ $(NF-1)=$(NF-1)","}1' | awk '{ $(NF-2)=$(NF-2)","}1' | python3 pipeline6_plot.py
fi