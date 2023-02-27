#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/usr/bin/env python

#libraries
import matplotlib.pyplot as plt
import numpy as np
import pipeline5_dayCalc

count = pipeline5_dayCalc.dayCalc()

#plot init
days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
y_pos = np.arange(len(days))

plt.bar(y_pos,count)
plt.xticks(y_pos, days)

#plot labels
plt.xlabel("Weekdag")
plt.ylabel("Aantal tenaamstellingen")

#plot save as pdf
plt.savefig('pipeline5.pdf')  