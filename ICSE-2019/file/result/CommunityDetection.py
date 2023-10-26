# -*- coding:utf-8 -*-
from itertools import combinations
from igraph import *
import networkx as nx
import numpy as np
import igraph as igraph
import sys, getopt
import os
import pylab as plt
from math import *

#os.chdir('/home/fan/workspace/AndroidEmbedding/file/result/')

argv=sys.argv[1:]

print 'argv: ',argv
inputfile=""
outputfile=""
try:
	opts, args = getopt.getopt(argv, "hi:0:",["infile=", "outfile="])
except getopt.GetoptError:
	print 'Error: test_arg.py -i <inputfile> -o <outputfile>'
        print '   or: test_arg.py --infile=<inputfile> --outfile=<outputfile>'
	sys.exit(2)

for opt, arg in opts:
	if opt == "-h":
		print 'test_arg.py -i <inputfile> -o <outputfile>'
		print 'or: test_arg.py --infile=<inputfile> --outfile=<outputfile>'
		sys.exit()
	elif opt in ("-i", "--infile"):
		inputfile=arg
	elif opt in ("-o", "--outfile"):
		outputfile=arg

print 'Input file: ', inputfile
print 'Output file: ', outputfile

weights=[]
g=igraph.Graph.Read_GML(inputfile)
weights=g.es['weight']
print g.summary()

f=open(outputfile,'w')

print "start community infomap analysis"
communityCluster_Im = g.community_infomap(edge_weights=weights)
modularityScore_Im=g.modularity(communityCluster_Im)
im_index=0
im_nodeSum=0
for im in communityCluster_Im:
	f.write('im-'+str(im_index)+'[')
	for ver in im:
		f.write(g.vs[ver]['name']+",")
	f.write(']\n')
	im_index=im_index+1
	im_nodeSum=im_nodeSum+len(im)
print ('   im-size:'+str(im_index)+' node-size:'+ str(im_nodeSum))
print ('   Modularity　Score Im:'+str(float(modularityScore_Im)))

'''print "start community label propagation analysis"
communityCluster_Lp = g.community_label_propagation(weights=weights)
modularityScore_Lp=g.modularity(communityCluster_Lp)
lp_index=0
lp_nodeSum=0
for lp in communityCluster_Lp:
	f.write('lp-'+str(lp_index)+'[')
	for ver in lp:
		f.write(g.vs[ver]['name']+",")
	f.write(']\n')
	lp_index=lp_index+1
	lp_nodeSum=lp_nodeSum+len(lp)
print ('   lp-size:'+str(lp_index)+' node-size:'+ str(lp_nodeSum))
print ('   Modularity　Score Lp:'+str(float(modularityScore_Lp)))


print "start community fast greedy analysis"
VertexDendrogram=g.community_fastgreedy(weights=weights)
communityCluster_Fg = VertexDendrogram.as_clustering()
modularityScore_Fg=g.modularity(communityCluster_Fg)
fg_index=0
fg_nodeSum=0
for fg in communityCluster_Fg:
	f.write('fg-'+str(fg_index)+'[')
	for ver in fg:
		f.write(g.vs[ver]['name']+",")
	f.write(']\n')
	fg_index=fg_index+1
	fg_nodeSum=fg_nodeSum+len(fg)
print ('   fg-size:'+str(fg_index)+' node-size:'+ str(fg_nodeSum))
print ('   Modularity　Score Fg:'+str(float(modularityScore_Fg)))


print "start community multilevel analysis"
communityCluster_Ml = g.community_multilevel(weights=weights)
modularityScore_Ml=g.modularity(communityCluster_Ml)
ml_index=0
ml_nodeSum=0
for ml in communityCluster_Ml:
	f.write('ml-'+str(ml_index)+'[')
	for ver in ml:
		f.write(g.vs[ver]['name']+",")
	f.write(']\n')
	#print ('ml-'+str(ml_index), ml)
	ml_index=ml_index+1
	ml_nodeSum=ml_nodeSum+len(ml)
print ('   ml-size:'+str(ml_index)+' node-size:'+ str(ml_nodeSum))
print ('   Modularity　Score Ml:'+str(float(modularityScore_Ml)))'''

f.write('Im Size: '+str(im_index)+' ModScore: '+str(float(modularityScore_Im))+'\n')
'''f.write('Lp Size: '+str(lp_index)+' ModScore: '+str(float(modularityScore_Lp))+'\n')
f.write('Fg Size: '+str(fg_index)+' ModScore: '+str(float(modularityScore_Fg))+'\n')
f.write('Ml Size: '+str(ml_index)+' ModScore: '+str(float(modularityScore_Ml))+'\n')'''


print "finish!"
