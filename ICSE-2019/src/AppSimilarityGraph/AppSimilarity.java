package AppSimilarityGraph;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import AppSimilarityGraph.AppInfo.AppFeature;
import ConstantVar.ConstantValue;
import Gexf2Feature.GraphFeature;
import Gexf2Feature.GraphFeatureSimilarity;

public class AppSimilarity {
	public String srcAPKFilePath="";
	public String dstAPKFilePath="";
	public String srcAPKName="";
	public String dstAPKName="";
	
	public AppFeature srcAppFea=new AppFeature();
	public AppFeature dstAppFea=new AppFeature();
	public Map<String, Double> fileSimMap=new HashMap<>();
	
	public AppSimilarity(){
		
	}
	
	public AppSimilarity(AppFeature srcAppFea, AppFeature dstAppFea){
		try {
			this.srcAppFea=srcAppFea;
			this.dstAppFea=dstAppFea;
			srcAPKFilePath=srcAppFea.apkFilePath;
			dstAPKFilePath=dstAppFea.apkFilePath;
			srcAPKName=srcAppFea.apkName;
			dstAPKName=dstAppFea.apkName;
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void calAppSim(){
		try {
			Iterator<String> srcAppIterator=srcAppFea.apkGraphFeatureMap.keySet().iterator();
			while(srcAppIterator.hasNext()){
				String srcGraphName=srcAppIterator.next();
				GraphFeature srcGFeature=srcAppFea.apkGraphFeatureMap.get(srcGraphName);
				
				Iterator<String> dstAppIterator=dstAppFea.apkGraphFeatureMap.keySet().iterator();
				while(dstAppIterator.hasNext()){
					String dstGraphName=dstAppIterator.next();
					GraphFeature dstGFeature=dstAppFea.apkGraphFeatureMap.get(dstGraphName);
					
					GraphFeatureSimilarity gFeatureSim=new GraphFeatureSimilarity(srcGFeature, dstGFeature);
					gFeatureSim.calSimilarity();
					String key=srcAPKName+": "+srcGraphName+" --- "+dstAPKName+": "+dstGraphName;
					double value=gFeatureSim.similarity;
					//System.out.println(value);
					if(value>=ConstantValue.getVar().graphSimThreshold){
						fileSimMap.put(key, value);
					}
//					else{
//						fileSimMap.put(key, 0.0D);
//					}
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void showFileSimMap(){
		try {
			System.out.println("Sim: ");
			
			Iterator<String> fileSimIterator=fileSimMap.keySet().iterator();
			while(fileSimIterator.hasNext()){
				String fileSimString=fileSimIterator.next();
				double sim=fileSimMap.get(fileSimString);
				if(sim>=ConstantValue.getVar().graphSimThreshold){
					System.out.println(fileSimString+"  ===> "+sim);
				}
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
