#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/bin/sh

#bestandsnaam meegegeven? 
if [ -z "$1"  ]; then 
    #error
    echo "Geen file in aanroeping.\nRoep aan met \"./pipeline3.sh [FILE]\""
else
    #pipeline
    bzcat $1 | awk -F "," '{if ($56 == "Ja") {print $3","$4} }' | sort | uniq -c | sort -n -r | head -10 | sed 's/^ *[0-9]* //'
fi