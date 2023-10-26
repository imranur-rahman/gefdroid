package GraphModel;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import ConstantVar.ConstantValue;

public class FGraph {
//  節點map, key爲節點的signature, value爲節點的　MethodNode　對象
	public Map<String, MethodNode> nodeMap=new HashMap<>();  
//  邊map, key爲邊的signature, value爲邊的　MethodEdge對象
	public Map<String, MethodEdge> edgeMap=new HashMap<>();
	
	public Map<String, MethodNode> APINodeMap=new HashMap<>();
	public Map<String, String> NodeIdMap=new HashMap<>();  //　使用node2vec時需要對節點進行編號
	public Map<String, String> APIIdMap=new HashMap<>();  //是NodeIdMap的子集，元素均爲API節點
	
	public FGraph(){
		
	}
	
	/*
	 *   通過已有的gexf文件初始化FGraph對象
	 */
	public FGraph(String gexfFilePath){
		try {
			File file=new File(gexfFilePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				// <edge id='4445' source='okio.Util: void checkOffsetAndCount(long,long,long)' target='java.lang.Long: java.lang.Long valueOf(long)'/>
				if(line.contains("<edge id")){
					line=line.replace("'", "");
					String regex="(.*?)source=(.*?) target=(.*?)/\\>";
					Pattern pattern=Pattern.compile(regex);
					Matcher matcher=pattern.matcher(line);
					if(matcher.find()){
						String srcNodeSigString=matcher.group(2);
						String dstNodeSigString=matcher.group(3);
						MethodNode srcNode=new MethodNode(srcNodeSigString);
						MethodNode dstNode=new MethodNode(dstNodeSigString);
						
						MethodEdge edge=new MethodEdge();
						edge.srcNode=srcNode;
						edge.dstNode=dstNode;
						
						nodeMap.put(srcNodeSigString, srcNode);
						nodeMap.put(dstNodeSigString, dstNode);
						
						edgeMap.put(edge.getSignatureString(), edge);
					}
				}
			}
			
			bReader.close();
			fReader.close();
//			System.out.println("Node size: "+nodeMap.size());
//			System.out.println("Edge size: "+edgeMap.size());
			
			iniNodeChildren();
			
	//		System.out.println("Finish reading FGraph file");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void storeGraph2Gexf(String gexfFilePath){
		try {
			File file=new File(gexfFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			line +="<?xml version='1.0' encoding='UTF-8'?>\n"+
					"<gexf xmlns='qianniao918@qq.com' version='1.2' xmlns:viz='http://www.gexf.net/1.2draft/viz'>"+
					" xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'"+ 
					" xsi:schemaLocation='http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd'>\n"+
					"	<meta lastmodifieddate='2014-9-21'>\n"+
					"		<creator>FanMing</creator>\n"+
					"		<description>An Android APK Method SCN!</description>\n"+
					"	</meta>\n"+
					"	<graph mode='static' defaultedgettype='directed'>\n"+
					"		<nodes>\n";
			bWriter.write(line);
			/*
			 *   写入节点信息
			 */
			String r="30"; String g="144"; String b="255"; // 默认颜色为湖蓝色
			
			Iterator<String> nodeSigIterator=nodeMap.keySet().iterator();
			while(nodeSigIterator.hasNext()){
				r="30"; g="144"; b="255";
				String nodeSignature=nodeSigIterator.next();
				if(APINodeMap.containsKey(nodeSignature)){
					r="255"; g="0"; b="0";
				}
				line="		<node id='"+nodeSignature+"' label='"+nodeSignature+"'>\n"+
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
			Iterator<String> edgeSigIterator=edgeMap.keySet().iterator();
			while(edgeSigIterator.hasNext()){
				String edgeSigString=edgeSigIterator.next();
				MethodEdge edge=edgeMap.get(edgeSigString);
				String srcNodeSigString=edge.srcNode.getSignatureString();
				String dstNodeSigString=edge.dstNode.getSignatureString();
				line="			<edge id='"+id+"' source='"+srcNodeSigString+"' target='"+dstNodeSigString+"'/>\n";
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
	
	
	public void iniAPINodeIdMap(){
		try {
			//  構建API集合
			Iterator<String> nodeIterator=nodeMap.keySet().iterator();
			while(nodeIterator.hasNext()){
				String nodeString=nodeIterator.next();
				MethodNode tmpNode=nodeMap.get(nodeString);
//				String packName=tmpNode.packageName;
//				if(ConstantValue.getVar().WholeAPIPackSet.contains(packName)){
//					APINodeMap.put(nodeString, tmpNode);
//				}
				String senSigPrefix="";
				if(nodeString.contains("(")){
				//	System.out.println(nodeString);
					int k=nodeString.indexOf("(");
				//	System.out.println(k);
					senSigPrefix=nodeString.substring(0, k);
				}
				
				if(ConstantValue.getVar().SenAPISet.contains(senSigPrefix)){
					APINodeMap.put(nodeString, tmpNode);
				}
			}
			
			//System.out.println("APINodeMap Size: "+APINodeMap.size());
			//  構建node--id集合　　以及API--id集合
			int k=0;
			//System.out.println("NodeMap Size: "+nodeMap.size());
			nodeIterator=nodeMap.keySet().iterator();
			while(nodeIterator.hasNext()){
				k++;
				String nodeString=nodeIterator.next();
				NodeIdMap.put(nodeString, String.valueOf(k));
				if(APINodeMap.containsKey(nodeString)){
					APIIdMap.put(nodeString, String.valueOf(k));
				}
			}
			//System.out.println("APIId Size: "+NodeIdMap.size());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void storeAPIIdMap(String idFilePath){
		try {
			File file=new File(idFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			Iterator<String> idIterator=NodeIdMap.keySet().iterator();
			while(idIterator.hasNext()){
				String APIString=idIterator.next();
				if(APINodeMap.containsKey(APIString)){  //  如果當前函數是API的話
					String id=NodeIdMap.get(APIString);
					line=id+" ---> "+APIString;
					bWriter.write(line+"\n");
				}
			}
			
			bWriter.close();
			fWriter.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void storeGraph2Dot(String dotFilePath){
		try {
			File file=new File(dotFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			Iterator<String> edgeIterator=edgeMap.keySet().iterator();
			while(edgeIterator.hasNext()){
				String edgeString=edgeIterator.next();
				MethodEdge edge=edgeMap.get(edgeString);
				String srcNodeString=edge.srcNode.getSignatureString();
				String dstNodeString=edge.dstNode.getSignatureString();
				String srcId=NodeIdMap.get(srcNodeString);
				String dstId=NodeIdMap.get(dstNodeString);
				
				line=srcId+" "+dstId;
				bWriter.write(line+"\n");
			}
			
			bWriter.close();
			fWriter.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/*
	 *   爲每一個節點構建其子節點集合
	 */
	public void iniNodeChildren(){
		try {
			Iterator<String> edgeSigIterator=edgeMap.keySet().iterator();
			while(edgeSigIterator.hasNext()){
				String edgeSigString=edgeSigIterator.next();
				String str[]=edgeSigString.split("--->");
				if(str.length==2){
					String srcNodeSig=str[0];
					String dstNodeSig=str[1];
					nodeMap.get(srcNodeSig).childNodeSigatureSet.add(dstNodeSig);
				}
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public FGraph getSubFileFGraph(String fileName){
		FGraph resultGraph=new FGraph();
		try {
			if(fileName.startsWith("/") && fileName.length()>1){
				//   如　/com/utilty
				fileName=fileName.substring(1);
				fileName=fileName.replace("/", ".");
				fileName=fileName.replace(".smali", "");
				//System.out.println("FileName: "+fileName);
				// 首先添加滿足包名條件的所有節點
				Iterator<String> nodeSigItetror=nodeMap.keySet().iterator();
				while(nodeSigItetror.hasNext()){
					String nodeSignatureString=nodeSigItetror.next();
					//String packName=nodeMap.get(nodeSignatureString).packageName;
					if(nodeSignatureString.startsWith(fileName+":")){
						resultGraph.nodeMap.put(nodeSignatureString, nodeMap.get(nodeSignatureString));
					//	System.out.println("add ini node: "+nodeSignatureString);
					}
				}
				Iterator<String> edgeSigIterator=edgeMap.keySet().iterator();
				while(edgeSigIterator.hasNext()){
					String edgeSignatureString=edgeSigIterator.next();
					MethodEdge edge=edgeMap.get(edgeSignatureString);
					if(resultGraph.nodeMap.containsKey(edge.srcNode.signatureString)){
						resultGraph.edgeMap.put(edgeSignatureString, edge);
					}
				}
				
				Iterator<String> resultEdgeIterator=resultGraph.edgeMap.keySet().iterator();
				while(resultEdgeIterator.hasNext()){
					String resultEdgeString=resultEdgeIterator.next();
					MethodEdge edge=resultGraph.edgeMap.get(resultEdgeString);
					resultGraph.nodeMap.put(edge.srcNode.signatureString, edge.srcNode);
					resultGraph.nodeMap.put(edge.dstNode.signatureString, edge.dstNode);
				}
				
				resultGraph.iniNodeChildren();
				resultGraph.iniAPINodeIdMap();
				// 然後循環添加所有節點的子節點
		//		while(true){
//					int startSize=resultGraph.nodeMap.size();
//					Set<String> addNodeSigSet=new HashSet<>();
//					Iterator<String> resultNodeSigIterator=resultGraph.nodeMap.keySet().iterator();
//					while(resultNodeSigIterator.hasNext()){
//						String resultNodeSig=resultNodeSigIterator.next();
//						MethodNode curNode=resultGraph.nodeMap.get(resultNodeSig);
//						addNodeSigSet.addAll(curNode.childNodeSigatureSet);
//					}
//					Iterator<String> addNodeSigIterator=addNodeSigSet.iterator();
//					while(addNodeSigIterator.hasNext()){
//						String addNodeSig=addNodeSigIterator.next();
//						resultGraph.nodeMap.put(addNodeSig, nodeMap.get(addNodeSig));
//					//	System.out.println("add child node: "+addNodeSig);
//						
//					}
//					int endSize=resultGraph.nodeMap.size();
//					if(startSize==endSize){
//						break;
//					}
//				}
				
				//  基於現有的節點添加所有的邊信息
//				Iterator<String> edgeSigIterator=edgeMap.keySet().iterator();
//				while(edgeSigIterator.hasNext()){
//					String edgeSigString=edgeSigIterator.next();
//					MethodEdge edge=edgeMap.get(edgeSigString);
//					if(resultGraph.nodeMap.containsKey(edge.srcNode.signatureString) &&
//							resultGraph.nodeMap.containsKey(edge.dstNode.signatureString)){
//						resultGraph.edgeMap.put(edgeSigString, edgeMap.get(edgeSigString));
//					}
//				}
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return resultGraph;
	}
	
	
	/*
	 *   刪除與sensitive API不緊密節點
	 */
	public void reduceNode(){
		try {
			Map<String, MethodNode> reduceNodeMap=new HashMap<>();
			Map<String, MethodEdge> reduceEdgeMap=new HashMap<>();
			
			reduceNodeMap.putAll(APINodeMap);
			/*
			 *   循環添加父節點
			 */
			while(true){
				int startSize=reduceNodeMap.size();
				Iterator<String> edgeIterator=edgeMap.keySet().iterator();
				while(edgeIterator.hasNext()){
					String edgeString=edgeIterator.next();
					MethodEdge edge=edgeMap.get(edgeString);
					if(reduceNodeMap.containsKey(edge.dstNode.signatureString)){
						reduceNodeMap.put(edge.srcNode.signatureString, edge.srcNode);
					}
				}
				int endSize=reduceNodeMap.size();
				if(startSize==endSize){
					break;
				}
			}
			Iterator<String> edgeIterator=edgeMap.keySet().iterator();
			while(edgeIterator.hasNext()){
				String edgeString=edgeIterator.next();
				MethodEdge edge=edgeMap.get(edgeString);
				if(reduceNodeMap.containsKey(edge.srcNode.signatureString) &&
						reduceNodeMap.containsKey(edge.dstNode.signatureString)){
					reduceEdgeMap.put(edgeString, edge);
				}
			}
			nodeMap=new HashMap<>();
			nodeMap.putAll(reduceNodeMap);
			edgeMap=new HashMap<>();
			edgeMap.putAll(reduceEdgeMap);
			APINodeMap=new HashMap<>();
			NodeIdMap=new HashMap<>();
			APIIdMap=new HashMap<>();
			iniAPINodeIdMap();
		//	iniNodeChildren();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
