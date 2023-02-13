#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/usr/bin/env python

#libraries
import sys

def catWaarde():
    #vars
    data = sys.stdin.read()
    data = data.split("\n")

    brand=""
    sum_cata = 0
    sum_verm = 0
    counter = 0

    arr_counter = 0
    arr_brand = []
    arr_sum_cata = []
    arr_sum_verm = []

    #calc average per brand
    for i in data:
        if(i != ""):
            i = i.split(",")
            if(brand == i[0]):
                sum_cata += int(i[1])
                sum_verm += float(i[2])
                counter+=1
            else:
                if(counter>=10_000):
                    arr_sum_cata.append(sum_cata/counter)
                    arr_sum_verm.append(sum_verm/counter)
                    arr_counter += 1

                brand = i[0]
                sum_cata = int(i[1])
                sum_verm = float(i[2])
                counter = 1

    #return data to plot
    return [arr_sum_cata, arr_sum_verm]