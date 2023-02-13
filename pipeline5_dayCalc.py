#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/usr/bin/env python

#libraries
import sys
import datetime

def dayCalc():
    #vars
    data = sys.stdin.read()
    data = data.split("\n")
    count = [0, 0, 0, 0, 0, 0, 0]

    #loop tellen frequentie dagen van de week 
    for i in data:
        if(i!=""):
            date = i.split("/") 
            weekday = datetime.datetime(int(date[2]), int(date[1]), int(date[0]))
            count[weekday.weekday()] += 1

    return count
