package GraphModel.FlowDroid;
/*
 *    輸入爲flowDroid生成的call graph文件
 *    輸出爲一個FGraph對象,並存儲至相應的文件中
 */

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import GraphModel.FGraph;
import GraphModel.FTree;
import GraphModel.MethodEdge;
import GraphModel.MethodNode;

public class FlowDroidResult {
	public String apkFilePath="";
	public String srcFlowDroidGraphFilePath="";
	public FGraph fGraph=new FGraph();
	public FTree fTree=new FTree();
	
	public FlowDroidResult(){
		
	}
	public FlowDroidResult(String apkFilePath){
		this.apkFilePath=apkFilePath;
		
		fTree=new FTree(apkFilePath);  // 過濾無效節點
		fTree.effectClassSet.add("dummyMainClass");
		
		srcFlowDroidGraphFilePath=apkFilePath+"/FGraph/flowInfo.txt";
		String dstGexfFilePath=apkFilePath+"/FGraph/entireGraph.gexf";
		readFile();
		
		System.out.println("Graph Node Size: "+fGraph.nodeMap.size());
		System.out.println("Graph Edge Size: "+fGraph.edgeMap.size());
		fGraph.storeGraph2Gexf(dstGexfFilePath);
	}
	
	public void readFile(){
		try {
			
			int edgeNum=0;
			int effectEdgeNum=0;
			File file=new File(srcFlowDroidGraphFilePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bufferedReader=new BufferedReader(fReader);
			String line="";
			while((line=bufferedReader.readLine())!=null){
				if(line.contains("edge:")&& line.contains("invoke ")){
	//			if(line.contains("edge:")){
					line=line.replace("<init>", "init");
					line=line.replace("<clinit>", "init");
					line=line.replace("'", "");
					edgeNum++;
					String regex="(.*?)\\<(.*?)\\>(.*?) in \\<(.*?)\\> ==> \\<(.*?)\\>";
			//		String regex="(.*?) in \\<(.*?)\\> ==> \\<(.*?)\\>";
					Pattern pattern=Pattern.compile(regex);
					Matcher matcher=pattern.matcher(line);
					if(matcher.find()){
						String callerString=matcher.group(4);
						String calleeString=matcher.group(2);
						
						MethodNode srcNode=new MethodNode(callerString);
						MethodNode dstNode=new MethodNode(calleeString);
						
						String srcPackName=srcNode.packageName;
						
						if(fTree.effectClassSet.contains(srcPackName)){
						
							MethodEdge edge=new MethodEdge();
							edge.srcNode=srcNode;
							edge.dstNode=dstNode;
							
							
							fGraph.nodeMap.put(srcNode.signatureString, srcNode);
							fGraph.nodeMap.put(dstNode.signatureString, dstNode);
							fGraph.edgeMap.put(edge.getSignatureString(), edge);
						}
//						System.out.println(srcNode.getSignatureString());
//						System.out.println(dstNode.getSignatureString());
						
					}
					else{
					//	System.out.println(line);
					}
				}
			}
			bufferedReader.close();
			fReader.close();
			//System.out.println(edgeNum+"/"+effectEdgeNum);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
