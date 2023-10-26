package Gexf2Feature;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import ConstantVar.ConstantValue;
import Util.VectorSim;

public class GraphFeatureSimilarity {
	
	public double similarity=-100.0D;
	
	public GraphFeature srcGraphFea=new GraphFeature();
	public GraphFeature dstGraphFea=new GraphFeature();
	
	public Set<String> capAPISet=new HashSet<>();
	public Set<String> cupAPISet=new HashSet<>();
	
	public GraphFeatureSimilarity(){
		
	}
	
	public GraphFeatureSimilarity(GraphFeature srcFea, GraphFeature dstFea){
		srcGraphFea=srcFea;
		dstGraphFea=dstFea;
	}
	
	public void calSimilarity(){
		try {
		
			// 構建capAPISet
			Iterator<String> srcAPIIterator=srcGraphFea.APISet.iterator();
			while(srcAPIIterator.hasNext()){
				String srcAPIString=srcAPIIterator.next();
				if(dstGraphFea.APISet.contains(srcAPIString)){
					capAPISet.add(srcAPIString);
				}
			}
			// 構建cupAPISet
			cupAPISet.addAll(srcGraphFea.APISet);
			cupAPISet.addAll(dstGraphFea.APISet);
			double coareSim=Double.valueOf(capAPISet.size())/Double.valueOf(cupAPISet.size());
			if(capAPISet.size()<=1){
				return;
			}
			
//			System.out.println("Cap Size: "+capAPISet.size());
//			System.out.println("Cup Size: "+cupAPISet.size());
			
//			Set<String> diffAPISet=new HashSet<>();
//			Iterator<String> mCupIteratpr=cupAPISet.iterator();
//			while(mCupIteratpr.hasNext()){
//				String cupString=mCupIteratpr.next();
//				if(!capAPISet.contains(cupString)){
//					diffAPISet.add(cupString);
//				//	System.out.println("Diff API:"+cupString);
//				}
//			}
			
			
			//  計算capAPISet中API的相似度
			double capSimTotal=0.0D;
			Iterator<String> capIterator=capAPISet.iterator();
			while(capIterator.hasNext()){
				String capString=capIterator.next();
				double APISim=APISimilarity(capString);
			//	System.out.println(capString+": "+ APISim);
				if(APISim>=0.0D){
					capSimTotal += APISim;
				}
			}
			//capSimTotal=Math.sqrt(capSimTotal);
//			int min=0;
//			if(srcGraphFea.APISet.size()<=dstGraphFea.APISet.size()){
//				min=srcGraphFea.APISet.size();
//			}
//			else{
//				min=dstGraphFea.APISet.size();
//			}
			int fenmu=cupAPISet.size();
			
			similarity=capSimTotal/Double.valueOf(fenmu);
	//		System.out.println("graph sim: "+similarity+" : "+capSimTotal+"/"+fenmu);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public double APISimilarity(String APIString){
		double similarity=-100.0D;
		try {
			ArrayList<Double> srcNodeVecList=new ArrayList<>();
			ArrayList<Double> dstNodeVecList=new ArrayList<>();
			int srcHash=APIString.hashCode();
			Iterator<String> capIterator=capAPISet.iterator();
			while(capIterator.hasNext()){
				String dstString=capIterator.next();
				if(!APIString.equals(dstString)){
					String keyString="";
					int dstHash=dstString.hashCode();
					if(srcHash<dstHash){
						keyString=APIString+"---"+dstString;
					}
					else{
						keyString=dstString+"---"+APIString;
					}
					if(srcGraphFea.APIPairSimMap.containsKey(keyString)){
						double sim=srcGraphFea.APIPairSimMap.get(keyString);
						if(sim<=0.0D){
							sim=0.0D;
						}
						srcNodeVecList.add(sim);
					}
					else{
						srcNodeVecList.add(0.0D);
					}
					
					if(dstGraphFea.APIPairSimMap.containsKey(keyString)){
						double sim=dstGraphFea.APIPairSimMap.get(keyString);
						if(sim<=0.0D){
							sim=0.0D;
						}
						dstNodeVecList.add(sim);
					}
					else{
						dstNodeVecList.add(0.0D);
					}
				}
			}
			//System.out.println("SrcNodeListSize: "+srcNodeVecList.size());
			VectorSim vSim=new VectorSim();
		//	similarity=vSim.cosineSim(srcNodeVecList, dstNodeVecList);
			similarity=vSim.euDistance(srcNodeVecList, dstNodeVecList);
		//	System.out.println(APIString+": "+similarity);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return similarity;
	}
	
	
//	public int nodeSimDegree(double sim){
//		int degree=-10;
//		if(sim>=(1-ConstantValue.getVar().fileSimThreshold)){
//			degree=1;
//		}
//		else if(sim>=ConstantValue.getVar().fileSimThreshold && (sim<(1-ConstantValue.getVar().fileSimThreshold))){
//			degree=0;
//		}
//		else {
//			degree=-1;
//		}
//		return degree;
//	}
}
