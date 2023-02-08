#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/bin/sh

#bestandsnaam meegegeven? 
if [ -z "$1"  ]; then 
    #error
    echo "Geen file in aanroeping.\nRoep aan met \"./pipeline4.sh [FILE]\""
else
    
    brand=""
    sumYears=0 
    counter=0
    age=0


    #pipeline
    bzcat $1 | awk -F "," '{if ($2 == "Personenauto") {print $3, $21} }'  | awk -F "/" '{print $1, $3}' | awk -F " " '{ if(NF > 1 ) { $(NF-1)=""; print $0} }'|
    awk '{ $(NF-1)=$(NF-1)","}1' | sort |  
    awk -F "," '{
        
        if(brand==$1){
            sumYears+=$2 
            counter+=1
        }
        else{
            if(counter>=100){
                age=2021-(sumYears/counter)
                print age, brand
            }
            brand=$1
            sumYears=$2
            counter=1
        }
    }' | sort -n | python pipeline4.py
fi