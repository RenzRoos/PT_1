#Programmeer opdracht 1, data analysis pipelines
#Door: Renz Roos, s2509652 

#!/usr/bin/env python

#libraries
import matplotlib.pyplot as plt
import numpy as np
import pipeline6_catWaarde

#get data 
arrays = pipeline6_catWaarde.catWaarde()

#plot data points
x = np.array(arrays[0])
y = np.array(arrays[1])
plt.scatter(x, y)

#plot labels
plt.title("Analyse 6")
plt.xlabel("Gem. Cataloguswaarde")
plt.ylabel("Gem. Vermogen per kg")

#plot show
plt.show()