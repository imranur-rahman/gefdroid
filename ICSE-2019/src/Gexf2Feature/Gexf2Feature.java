package Gexf2Feature;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import ConstantVar.ConstantValue;
import EBNode2Vec.NodeVec;
import EBNode2Vec.ReadNode2VecResultFile;
import GraphModel.FGraph;
import Util.VectorSim;

/*
 *   對於給定的一個gexf文件，構建其特徵文件
 */
public class Gexf2Feature {
	public String gexfFilePath="";
	public String dotFilePath="";
	public String nodeEmbFilePath="";
	public String APIMapFilePath="";
	
	public FGraph fGraph=new FGraph();        //　　圖數據文件
	public ReadNode2VecResultFile node2VecResult=new ReadNode2VecResultFile();   // Embedding結果存儲
	public Map<String, String> APIIdMap=new HashMap<>();  //key是函數signature　value是相應的Id
	
	public GraphFeature gFeature=new GraphFeature();
	public String featureFilePath="";
	
	public Gexf2Feature(){
		
	}
	
	public Gexf2Feature(String filePath){
		this.gexfFilePath=filePath;
		fGraph=new FGraph(gexfFilePath);
		fGraph.iniAPINodeIdMap();
		APIIdMap=fGraph.APIIdMap;
		//將gexf文件轉換成dot文件並存儲相應的API節點
		dotFilePath=gexfFilePath.replace(".gexf", ".dot");
		APIMapFilePath=gexfFilePath.replace(".gexf", ".map");
		generateDotFile(dotFilePath);
		generateAPIIdFile(APIMapFilePath);
	//	System.out.println("完成存儲dot文件");
		//對dot文件進行embedding並存儲結果
		nodeEmbFilePath=gexfFilePath.replace(".gexf", ".emb");
		generateEmbedFile(nodeEmbFilePath);
	//	System.out.println("完成embedding");
		// 讀取embedding結果
		node2VecResult=new ReadNode2VecResultFile(nodeEmbFilePath);
		//構建圖特徵
		constructGraphFeature();
		featureFilePath=gexfFilePath.replace(".gexf", ".feature");
		gFeature.storeGraphFeatureFile(featureFilePath);
		//完成存儲圖特徵
	}
	public void generateDotFile(String dstDotFilePath){
		try {
			fGraph.storeGraph2Dot(dstDotFilePath);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void generateAPIIdFile(String APIIdFilePath){
		try {
			fGraph.storeAPIIdMap(APIIdFilePath);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void generateEmbedFile(String emdFilePath){
		try {
			String inputFilePath=dotFilePath;
			String outputFilePath=emdFilePath;
			
			String cmd="python "+ConstantValue.getVar().stru2vecPath+" --input "+inputFilePath+
					"  --output "+outputFilePath+"  --OPT1 true --OPT2 true --OPT3 true";
			exeCmd(cmd);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void constructGraphFeature(){
		try {
			/*
			 *   計算API對的相似性
			 */
			Iterator<String> srcAPIIterator=APIIdMap.keySet().iterator();
			while(srcAPIIterator.hasNext()){
				String srcAPIString=srcAPIIterator.next();
				String srcAPIId=APIIdMap.get(srcAPIString);
				
				Iterator<String> dstAPIIterator=APIIdMap.keySet().iterator();
				while(dstAPIIterator.hasNext()){
					String dstAPIString=dstAPIIterator.next();
					String dstAPIId=APIIdMap.get(dstAPIString);
					
					if(!srcAPIString.equals(dstAPIString)){
						String APIPairString="";
						int srcHashCode=srcAPIString.hashCode();
						int dstHashCode=dstAPIString.hashCode();
						if(srcHashCode<dstHashCode){
							APIPairString=srcAPIString+"---"+dstAPIString;
						}
						else{
							APIPairString=dstAPIString+"---"+srcAPIString;
						}
						if(!gFeature.APIPairSimMap.containsKey(APIPairString)){
							double result=APICosineSim(srcAPIId, dstAPIId);
							if(result>=0.0D && result<=1.0D){
								gFeature.APIPairSimMap.put(APIPairString, result);
							}
							else{
								result=0.0D;
								gFeature.APIPairSimMap.put(APIPairString, result);
							}
						}
					}
					
				}
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public Double APIEudisSim(String srcNodeId, String dstNodeId){
		Double sim=-1.0D;
		try {
			NodeVec srcNodeVec=node2VecResult.nodeMap.get(srcNodeId);
			NodeVec dstNodeVec=node2VecResult.nodeMap.get(dstNodeId);
			VectorSim vectorSim=new VectorSim();
			double result=vectorSim.euDistance(srcNodeVec.vector, dstNodeVec.vector);
			if(result>=0.0D && result <=1.0D){
				return result;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return sim;
	}
	
	
	public Double APICosineSim(String srcNodeId, String dstNodeId){
		Double sim=-10.0D;
		try {
			
			NodeVec srcNodeVec=node2VecResult.nodeMap.get(srcNodeId);
			NodeVec dstNodeVec=node2VecResult.nodeMap.get(dstNodeId);
			VectorSim vectorSim=new VectorSim();
			double result=vectorSim.cosineSim(srcNodeVec.vector, dstNodeVec.vector);
			if(result>=-1.0D && result <=1.0D){
				return result;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return sim;
	}
	
	public void exeCmd(String cmd){
		Runtime rnRuntime=Runtime.getRuntime();
		String outInfo="";
		try {
			Process process=rnRuntime.exec(cmd);
			InputStream in = ( process).getErrorStream();//得到错误信息输出。
			BufferedReader br = new BufferedReader(new InputStreamReader(in));
			String line = "";
			while ( (line = br.readLine())!= null) {
				outInfo = outInfo + line + "\n";
			} 
			//System.out.println(outInfo);
		}
			catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
