package AppSimilarityGraph;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import AppSimilarityGraph.AppInfo.AppFeature;
import Compare.ThirdFeature.AppAPIFeature;
import Compare.ThirdFeature.AppPermissionFeature;
import Compare.ThirdFeature.FalDroidFeature;
import Compare.ThirdFeature.FalDroidResult;
import ConstantVar.Color;
import ConstantVar.ConstantValue;
import Util.VectorSim;

public class APPGraph {
	
	public Map<String, APPNode> nodeMap=new HashMap<>();
	public Map<String, APPEdge> edgeMap=new HashMap<>();
	//     不同特徵的List   每一個item是一個app的特徵向量對象
	public ArrayList<AppFeature> apkFeatureList=new ArrayList<>();
	public ArrayList<AppPermissionFeature> apkPermissionList=new ArrayList<>();
	public ArrayList<AppAPIFeature> apkAPIList=new ArrayList<>();
	public ArrayList<FalDroidFeature> apkFalDroidList=new ArrayList<>();
	
	//********************************************
	
	public ArrayList<String> simFileList=new ArrayList<>();
	public Map<String, String> nodeIdMap=new HashMap<>();   //　節點　id　映射
	
	
	public APPGraph(){
		
	}
	//  ***************************Embedding   Embedding*********************8
	public void iniGraphEmbedFeature(){
		try {
			System.out.println("***********Embedding Feature*****************");
			ArrayList<String> apkList=new ArrayList<>();
			apkList.addAll(ConstantValue.getVar().apkFilePathList);
			
			System.out.println("Start Constructing Node: ");
			long nodeStartTime=System.currentTimeMillis();
			//  構建節點集合
			int index=1;
			for(int i=0;i<apkList.size();i++){
				if(i>=index*100){
					System.out.print(i+"--");
					index++;
				}
				String filePath=apkList.get(i);
				AppFeature aFeature=new AppFeature(filePath);
				String apkName=aFeature.apkName;
				APPNode node=new APPNode(apkName);
				nodeMap.put(apkName, node);
				apkFeatureList.add(aFeature);
				
				nodeIdMap.put(apkName, String.valueOf(i));
			}
			System.out.println();
			long nodeEndTime=System.currentTimeMillis();
			double nodeUseTime=(nodeEndTime-nodeStartTime)/1000.0D;
			System.out.println("Node Construction: "+nodeUseTime);
			// 構建邊集合
			System.out.println("Start Constructing Edge: ");
			index=1;
			long edgeStartTime=System.currentTimeMillis();
			for(int i=0;i<apkFeatureList.size();i++){
				if(i>=index*100){
					System.out.print(i+"--");
					index++;
				}
				
				AppFeature srcAppFea=apkFeatureList.get(i);
				for(int j=0;j<apkFeatureList.size();j++){
					if(j>i){
						AppFeature dstAppFea=apkFeatureList.get(j);
						AppSimilarity appSimilarity=new AppSimilarity(srcAppFea, dstAppFea);
						appSimilarity.calAppSim();
						if(appSimilarity.fileSimMap.size()>=ConstantValue.getVar().minEdgeWeight){
							APPEdge edge=new APPEdge();
							edge.srcNode=nodeMap.get(srcAppFea.apkName);
							edge.dstNode=nodeMap.get(dstAppFea.apkName);
							String edgeString=edge.getUniqueString();
							edge.weight=appSimilarity.fileSimMap.size();
							edgeMap.put(edgeString, edge);
							
							simFileList.addAll(appSimilarity.fileSimMap.keySet());
						}
					}
				}
			}
			System.out.println();
			long edgeEndTime=System.currentTimeMillis();
			double edgeUseTime=(edgeEndTime-edgeStartTime)/1000.0D;
			System.out.println("Edge Construction: "+edgeUseTime);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	//*****************************FalDroid FalDroid FalDroid*************************
	public void iniGraphFalDroidFeature(){
		try {
			System.out.println("***********FalDroid Feature*****************");
			ArrayList<String> apkList=new ArrayList<>();
			apkList.addAll(ConstantValue.getVar().apkFilePathList);
			String falDroidResultFilePath="./file/result/FalDroid/Im--0.5-train.arff";
			FalDroidResult falDroidResult=new FalDroidResult(falDroidResultFilePath);
			
			System.out.println("Start Constructing Node: ");
			long nodeStartTime=System.currentTimeMillis();
			//  構建節點集合
			int index=1;
			for(int i=0;i<falDroidResult.apkFalFeatureList.size();i++){
				if(i>=index*100){
					System.out.print(i+"--");
					index++;
				}
				FalDroidFeature falDroidFeature=falDroidResult.apkFalFeatureList.get(i);
				String apkName=falDroidFeature.apkName;
				APPNode node=new APPNode(apkName);
				apkFalDroidList.add(falDroidFeature);
				nodeMap.put(apkName, node);
				nodeIdMap.put(apkName, String.valueOf(i));
			}
			
			System.out.println();
			long nodeEndTime=System.currentTimeMillis();
			double nodeUseTime=(nodeEndTime-nodeStartTime)/1000.0D;
			System.out.println("Node Construction: "+nodeUseTime);
			
			
			// 構建邊集合
			System.out.println("Start Constructing Edge: ");
			index=1;
			long edgeStartTime=System.currentTimeMillis();
			for(int i=0;i<apkFalDroidList.size();i++){
				if(i>=index*100){
					System.out.print(i+"--");
					index++;
				}
				FalDroidFeature srcFalFea=apkFalDroidList.get(i);
				ArrayList<Double> srcList=new ArrayList<>();
				srcList=srcFalFea.FalVector;
				for(int j=0;j<apkFalDroidList.size();j++){
					if(j>i){
						FalDroidFeature dstFalFea=apkFalDroidList.get(j);
						ArrayList<Double> dstList=new ArrayList<>();
						dstList=dstFalFea.FalVector;
						VectorSim vectorSim=new VectorSim();
						double result=vectorSim.cosineSim(srcList, dstList);
						if(result>=ConstantValue.getVar().graphSimThreshold){
							APPEdge edge=new APPEdge();
							edge.srcNode=nodeMap.get(srcFalFea.apkName);
							edge.dstNode=nodeMap.get(dstFalFea.apkName);
							String edgeString=edge.getUniqueString();
							edge.weight=1;
							edgeMap.put(edgeString, edge);
						}
					}
				}
			}
			System.out.println();
			long edgeEndTime=System.currentTimeMillis();
			double edgeUseTime=(edgeEndTime-edgeStartTime)/1000.0D;
			System.out.println("Edge Construction: "+edgeUseTime);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	//  ***************************API    API   API**************************
	public void iniGraphAPIFeature(){
		try {
			System.out.println("***********API Feature*****************");
			ArrayList<String> apkList=new ArrayList<>();
			apkList.addAll(ConstantValue.getVar().apkFilePathList);
			
			System.out.println("Start Constructing Node: ");
			long nodeStartTime=System.currentTimeMillis();
			//  構建節點集合
			int index=1;
			for(int i=0;i<apkList.size();i++){
				if(i>=index*100){
					System.out.print(i+"--");
					index++;
				}
				String filePath=apkList.get(i);
				AppAPIFeature appAPIFeature=new AppAPIFeature(filePath);
				appAPIFeature.readVectorFromFile();
				String apkName=appAPIFeature.apkName;
				APPNode node=new APPNode(apkName);
				nodeMap.put(apkName, node);
				apkAPIList.add(appAPIFeature);
				nodeIdMap.put(apkName, String.valueOf(i));
			}
			System.out.println();
			long nodeEndTime=System.currentTimeMillis();
			double nodeUseTime=(nodeEndTime-nodeStartTime)/1000.0D;
			System.out.println("Node Construction: "+nodeUseTime);
			// 構建邊集合
			System.out.println("Start Constructing Edge: ");
			index=1;
			long edgeStartTime=System.currentTimeMillis();
			for(int i=0;i<apkAPIList.size();i++){
				if(i>=index*100){
					System.out.print(i+"--");
					index++;
				}
				AppAPIFeature srcAPIFea=apkAPIList.get(i);
				ArrayList<Double> srcList=new ArrayList<>();
				srcList=srcAPIFea.APIVector;
				for(int j=0;j<apkAPIList.size();j++){
					if(j>i){
						AppAPIFeature dstAPIFea=apkAPIList.get(j);
						ArrayList<Double> dstList=new ArrayList<>();
						dstList=dstAPIFea.APIVector;
						VectorSim vectorSim=new VectorSim();
						double result=vectorSim.cosineSim(srcList, dstList);
						if(result>=ConstantValue.getVar().graphSimThreshold){
							APPEdge edge=new APPEdge();
							edge.srcNode=nodeMap.get(srcAPIFea.apkName);
							edge.dstNode=nodeMap.get(dstAPIFea.apkName);
							String edgeString=edge.getUniqueString();
							edge.weight=1;
							edgeMap.put(edgeString, edge);
						}
					}
				}
			}
			System.out.println();
			long edgeEndTime=System.currentTimeMillis();
			double edgeUseTime=(edgeEndTime-edgeStartTime)/1000.0D;
			System.out.println("Edge Construction: "+edgeUseTime);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	// ***********************Permission    Permission***************************
	public void iniGraphPermissionFeature(){
		try {
			System.out.println("***********Permission Feature*****************");
			ArrayList<String> apkList=new ArrayList<>();
			apkList.addAll(ConstantValue.getVar().apkFilePathList);
			
			System.out.println("Start Constructing Node: ");
			long nodeStartTime=System.currentTimeMillis();
			//  構建節點集合
			int index=1;
			for(int i=0;i<apkList.size();i++){
				if(i>=index*100){
					System.out.print(i+"--");
					index++;
				}
				String filePath=apkList.get(i);
				AppPermissionFeature appPermissionFeature=new AppPermissionFeature(filePath);
				appPermissionFeature.readVectorFromFile();
				String apkName=appPermissionFeature.apkName;
				APPNode node=new APPNode(apkName);
				nodeMap.put(apkName, node);
				apkPermissionList.add(appPermissionFeature);
				nodeIdMap.put(apkName, String.valueOf(i));
			}
			System.out.println();
			long nodeEndTime=System.currentTimeMillis();
			double nodeUseTime=(nodeEndTime-nodeStartTime)/1000.0D;
			System.out.println("Node Construction: "+nodeUseTime);
			// 構建邊集合
			System.out.println("Start Constructing Edge: ");
			index=1;
			long edgeStartTime=System.currentTimeMillis();
			for(int i=0;i<apkPermissionList.size();i++){
				if(i>=index*100){
					System.out.print(i+"--");
					index++;
				}
				AppPermissionFeature srcPermissionFea=apkPermissionList.get(i);
				ArrayList<Double> srcList=new ArrayList<>();
				srcList=srcPermissionFea.perVector;
				for(int j=0;j<apkPermissionList.size();j++){
					if(j>i){
						AppPermissionFeature dstPermissionFea=apkPermissionList.get(j);
						ArrayList<Double> dstList=new ArrayList<>();
						dstList=dstPermissionFea.perVector;
						VectorSim vectorSim=new VectorSim();
						double result=vectorSim.cosineSim(srcList, dstList);
						if(result>=ConstantValue.getVar().graphSimThreshold){
							APPEdge edge=new APPEdge();
							edge.srcNode=nodeMap.get(srcPermissionFea.apkName);
							edge.dstNode=nodeMap.get(dstPermissionFea.apkName);
							String edgeString=edge.getUniqueString();
							edge.weight=1;
							edgeMap.put(edgeString, edge);
						}
					}
				}
			}
			System.out.println();
			long edgeEndTime=System.currentTimeMillis();
			double edgeUseTime=(edgeEndTime-edgeStartTime)/1000.0D;
			System.out.println("Edge Construction: "+edgeUseTime);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	}
	
	/*
	 *   生成　gml格式
	 *   
	 */
	
	public void storeGraph2GML(String gmlFilePath){
		try {
			
			File file=new File(gmlFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			Map<String, Integer> nodeLabelIDMap=new HashMap<>();
			int idIndex=-1;
			Iterator<String> nodeLabelIterator=nodeIdMap.keySet().iterator();
			while(nodeLabelIterator.hasNext()){
				idIndex++;
				String nodeAPKName=nodeLabelIterator.next();
				String nodeLabel=nodeIdMap.get(nodeAPKName);
				nodeLabelIDMap.put(nodeLabel, idIndex);
			}
			/*
			 *   寫入節點
			 */
			String line="";
			line="graph\n";
			bWriter.write(line);
			line="[\n";
			bWriter.write(line);
			line="  directed 0\n";
			bWriter.write(line);
			nodeLabelIterator=nodeIdMap.keySet().iterator();
			idIndex=-1;
			while(nodeLabelIterator.hasNext()){
				idIndex++;
				String nodeAPKName=nodeLabelIterator.next();
				String nodeLabel=nodeIdMap.get(nodeAPKName);
				line ="  node\n";
				line+="  [\n";
				line+="    id "+idIndex+"\n";
				line+="    name \""+nodeLabel+"\"\n";
				line+="  ]\n";
				bWriter.write(line);
			}
			
			/*
			 * 寫入邊
			 */
			Iterator<String> edgeIterator=edgeMap.keySet().iterator();
			while(edgeIterator.hasNext()){
				String edgeString=edgeIterator.next();
				APPEdge edge=edgeMap.get(edgeString);
				String srcAppString=edge.srcNode.apkName;
				String dstAppString=edge.dstNode.apkName;
				String srcLabel=nodeIdMap.get(srcAppString);
				String dstLabel=nodeIdMap.get(dstAppString);
				String weight=String.valueOf(edge.weight);
				
				int srcId=nodeLabelIDMap.get(srcLabel);
				int dstId=nodeLabelIDMap.get(dstLabel);
				line ="  edge\n";
				line+="  [\n";
				line+="    source "+srcId+"\n";
				line+="    target "+dstId+"\n";
				line+="    weight "+weight+"\n";
				line+="  ]\n";
				bWriter.write(line);
			}
			line="]\n";
			bWriter.write(line);
			
			bWriter.close();
			fWriter.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	/*
	 *   生成　community detection的輸入格式
	 */
	public void storeGraph2Dot(String dotFilePath){
		try {
			File file=new File(dotFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			
			Iterator<String> nodeIterator=nodeIdMap.keySet().iterator();
			while(nodeIterator.hasNext()){
				String nodeString=nodeIterator.next();
				String nodeId=nodeIdMap.get(nodeString);
				line="node "+nodeId+"\n";
				bWriter.write(line);
			}
			
			Iterator<String> edgeIterator=edgeMap.keySet().iterator();
			while(edgeIterator.hasNext()){
				String edgeString=edgeIterator.next();
				APPEdge edge=edgeMap.get(edgeString);
				String srcAppString=edge.srcNode.apkName;
				String dstAppString=edge.dstNode.apkName;
				String srcId=nodeIdMap.get(srcAppString);
				String dstId=nodeIdMap.get(dstAppString);
				String weight=String.valueOf(edge.weight);
				line="edge "+srcId+" "+dstId+" "+weight;
				bWriter.write(line+"\n");
			}
			bWriter.close();
			fWriter.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void storeGraph2Gexf(String appGraphFilePath){
		try {
			File file=new File(appGraphFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			line +="<?xml version='1.0' encoding='UTF-8'?>\n"+
					"<gexf xmlns='qianniao918@qq.com' version='1.2' xmlns:viz='http://www.gexf.net/1.2draft/viz'>"+
					" xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'"+ 
					" xsi:schemaLocation='http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd'>\n"+
					"	<meta lastmodifieddate='2018-1-25'>\n"+
					"		<creator>FanMing</creator>\n"+
					"		<description>App Graph</description>\n"+
					"	</meta>\n"+
					"	<graph mode='static' defaultedgettype='undirected'>\n"+
					"		<nodes>\n";
			bWriter.write(line);
			/*
			 *   写入节点信息
			 */
			String r="30"; String g="144"; String b="255"; // 默认颜色为湖蓝色
			Iterator<String> nodeIterator=nodeMap.keySet().iterator();
			while(nodeIterator.hasNext()){
				String nodeId=nodeIterator.next();
				String nodeLabel=nodeMap.get(nodeId).falName;
				Color color=new Color();
				//System.out.println(nodeLabel);
				//color=ConstantValue.getVar().FalColMap.get(nodeLabel);
				//r=color.getR();   g=color.getG();    b=color.getB();
				line="		<node id='"+nodeId+"' label='"+nodeLabel+"'>\n"+
						   "			<attvalues></attvalues>\n"+
						   "			<viz:color r='"+r+"' g='"+g+"' b='"+b+"'></viz:color>\n"+
						   "			</node>\n";
				bWriter.write(line);
			}
			line ="		</nodes>\n";
			line +="		<edges>\n";
			bWriter.write(line);
			
			/*
			 *   写入边信息
			 */
			int id=0;
			Iterator<String> edgeIterator=edgeMap.keySet().iterator();
			while(edgeIterator.hasNext()){
				String edgeString=edgeIterator.next();
				APPEdge edge=edgeMap.get(edgeString);
				String srcNodeId=edge.srcNode.apkName;
				String dstNodeId=edge.dstNode.apkName;
				line="			<edge id='"+id+"' source='"+srcNodeId+"' target='"+dstNodeId+"' weight='"+edge.weight+"'/>\n";
				bWriter.write(line);
				id++;
			}
			line ="		</edges>\n";
			line +="	</graph>\n";
			line +="</gexf>";
			bWriter.write(line);
			bWriter.close();
			fWriter.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void storeAppFalId(String appIdMapFilePath){
		try {
			File file=new File(appIdMapFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			
			String line="";
			Iterator<String> nodeIterator=nodeMap.keySet().iterator();
			while(nodeIterator.hasNext()){
				String nodeString=nodeIterator.next();
				String falName=nodeMap.get(nodeString).falName;
				int falId=ConstantValue.getVar().FalIdMap.get(falName);
				String appId=nodeIdMap.get(nodeString);
				line = nodeString +","+appId+","+falId+"\n";
				bWriter.write(line);
			}
			bWriter.close();
			fWriter.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void storeSimFileLog(String logFilePath){
		try {
			String fileResultPath=logFilePath;
			File file=new File(fileResultPath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			for(int i=0;i<simFileList.size();i++){
				line=simFileList.get(i)+"\n";
				bWriter.write(line);
			}
			bWriter.close();
			fWriter.close();
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
