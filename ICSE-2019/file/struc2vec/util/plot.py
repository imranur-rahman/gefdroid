#!/usr/bin/python
# encoding=utf-8
# -*- coding:utf-8 -*
import os
import sys

import numpy
from numpy import *
import numpy as np

from sklearn.manifold import TSNE
from sklearn.datasets import load_iris
from sklearn.decomposition import PCA
import matplotlib.pyplot as plt

x=[]
y=[]
label=[]
cValue=[]
file=open('util/output.emb','r')
each_lines=file.readlines()
for line in each_lines:
	line_split=line.split(' ')
	if len(line_split)>2:
		x.append(float(line_split[1]))
		y.append(float(line_split[2]))
		name=str(line_split[0])
		label.append(name)
		print name
		intLabel=int(name)
		if intLabel<=3:
			cValue.append('b')
		elif intLabel==4 or intLabel==8:
			cValue.append('r')
		elif intLabel==5 or intLabel==6:
			cValue.append('y')
		elif intLabel==7:
			cValue.append('m')
		elif intLabel>=9:
			cValue.append('b')

print ('x length: '+str(len(x)))
print x

print cValue

colors=np.random.rand(len(x))
plt.figure(figsize=(8,8))
plt.xticks(fontsize=16)
plt.yticks(fontsize=16)
plt.scatter(x,y, c=cValue)

#for i in range(0, len(x)):
	#plt.text(x[i], y[i], str(label[i]), style='italic', alpha=1, fontsize=20)
plt.show()

