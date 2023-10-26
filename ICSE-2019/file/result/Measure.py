from sklearn import metrics
import sys, getopt
import os

y_true=[]
y_pred_im=[]
y_pred_fg=[]
y_pred_lp=[]
y_pred_ml=[]


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


file=open(inputfile,'r')
each_lines= file.readlines()
for line in each_lines:
	if line.__contains__(','):
		node=line.split(',')
		y_true.append(node[1])
		y_pred_im.append(node[2])
		'''y_pred_fg.append(node[3])
		y_pred_lp.append(node[4])
		y_pred_ml.append(node[5])'''


'''y_true = [0,0,0,0,2,3,1]
y_pred_im = [1,1,1,1,3,3,3]'''
def calMetric(y_true, y_pred):
	nmi = metrics.normalized_mutual_info_score(y_true, y_pred)
	ari = metrics.adjusted_rand_score(y_true, y_pred)
	fmi = metrics.fowlkes_mallows_score(y_true, y_pred)
	homo = metrics.homogeneity_score(y_true, y_pred)
	comp = metrics.completeness_score(y_true, y_pred)
	vmea = metrics.homogeneity_completeness_v_measure(y_true, y_pred)
	result={}
	result['nmi']=str(nmi)
	result['ari']=str(ari)
	result['fmi']=str(fmi)
	result['homo']=str(vmea[0])
	result['comp']=str(vmea[1])
	result['vmea']=str(vmea[2])
	return result

im_result=calMetric(y_true, y_pred_im)
'''fg_result=calMetric(y_true, y_pred_fg)
lp_result=calMetric(y_true, y_pred_lp)
ml_result=calMetric(y_true, y_pred_ml)'''

storeFile=open(outputfile,'w')
storeFile.write("IM----"+'\n')
storeFile.write("   normalized_mutual_info_score: "+str(float(im_result['nmi']))+'\n')
storeFile.write("   adjusted_rand_score: "+str(float(im_result['ari']))+'\n')
storeFile.write("   fowlkes_mallows_score: "+str(float(im_result['fmi']))+'\n')
storeFile.write("   homogeneity_score: "+str(float(im_result['homo']))+'\n')
storeFile.write("   completeness_score: "+str(float(im_result['comp']))+'\n')
storeFile.write("   v_measure: "+str(float(im_result['vmea']))+'\n')

'''storeFile.write("FG----"+'\n')
storeFile.write("   normalized_mutual_info_score: "+str(float(fg_result['nmi']))+'\n')
storeFile.write("   adjusted_rand_score: "+str(float(fg_result['ari']))+'\n')
storeFile.write("   fowlkes_mallows_score: "+str(float(fg_result['fmi']))+'\n')
storeFile.write("   homogeneity_score: "+str(float(fg_result['homo']))+'\n')
storeFile.write("   completeness_score: "+str(float(fg_result['comp']))+'\n')
storeFile.write("   v_measure: "+str(float(fg_result['vmea']))+'\n')

storeFile.write("LP----"+'\n')
storeFile.write("   normalized_mutual_info_score: "+str(float(lp_result['nmi']))+'\n')
storeFile.write("   adjusted_rand_score: "+str(float(lp_result['ari']))+'\n')
storeFile.write("   fowlkes_mallows_score: "+str(float(lp_result['fmi']))+'\n')
storeFile.write("   homogeneity_score: "+str(float(lp_result['homo']))+'\n')
storeFile.write("   completeness_score: "+str(float(lp_result['comp']))+'\n')
storeFile.write("   v_measure: "+str(float(lp_result['vmea']))+'\n')

storeFile.write("ML----"+'\n')
storeFile.write("   normalized_mutual_info_score: "+str(float(ml_result['nmi']))+'\n')
storeFile.write("   adjusted_rand_score: "+str(float(ml_result['ari']))+'\n')
storeFile.write("   fowlkes_mallows_score: "+str(float(ml_result['fmi']))+'\n')
storeFile.write("   homogeneity_score: "+str(float(ml_result['homo']))+'\n')
storeFile.write("   completeness_score: "+str(float(ml_result['comp']))+'\n')
storeFile.write("   v_measure: "+str(float(ml_result['vmea']))+'\n')'''

#print ("NMI: "+str(nmi)) 
#print ("ARI: "+str(ari))
#print ("FMI: "+str(fmi))
#print ("Homogeneity: "+str(homo))
#print ("Completeness: "+str(comp))
#print ("V-measure: "+str(vmea))
