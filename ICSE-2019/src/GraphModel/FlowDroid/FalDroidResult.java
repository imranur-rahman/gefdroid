package GraphModel.FlowDroid;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.processing.Filer;

import GraphModel.FGraph;
import GraphModel.MethodEdge;
import GraphModel.MethodNode;
import Util.DirDelete;

public class FalDroidResult {
	public String apkFilePath="";
	public String sourceGexfFilePath="";
	public String entireGraphFilePath="";
	public FGraph fGraph=new FGraph();
	
	public FalDroidResult(){
		
	}
	
	public FalDroidResult(String apkFilePath){
		try {
			this.apkFilePath=apkFilePath;
			sourceGexfFilePath=apkFilePath+"/SICG/SourceGraph.gexf";
			
			String FGraphDirPath=apkFilePath+"/FGraph/";
			File fGraphDir=new File(FGraphDirPath);
			if(fGraphDir.exists()){
				DirDelete delete=new DirDelete();
				delete.deleteDir(fGraphDir);
			}
			fGraphDir.mkdirs();
			
			entireGraphFilePath=apkFilePath+"/FGraph/entireGraph.gexf";
			
			iniFGraph();
			fGraph.storeGraph2Gexf(entireGraphFilePath);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void iniFGraph(){
		try {
			fGraph=new FGraph();
			File file=new File(sourceGexfFilePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				line=line.trim();
				if(line.startsWith("<edge id=")){
					line=line.replace("'", "");
					String regex="(.*?)source=(.*?) target=(.*?)/\\>";
					Pattern pattern=Pattern.compile(regex);
					Matcher matcher=pattern.matcher(line);
					if(matcher.find()){
						String srcNodeSigString=matcher.group(2);
						String dstNodeSigString=matcher.group(3);
						MethodNode srcNode=readFalDroidNode(srcNodeSigString);
						MethodNode dstNode=readFalDroidNode(dstNodeSigString);
						fGraph.nodeMap.put(srcNode.getSignatureString(), srcNode);
						fGraph.nodeMap.put(dstNode.getSignatureString(), dstNode);
						MethodEdge edge=new MethodEdge();
						edge.srcNode=srcNode;
						edge.dstNode=dstNode;
						fGraph.edgeMap.put(edge.getSignatureString(), edge);
						
					}
				}
			}
			
			bReader.close();
			fReader.close();
			
			
//			System.out.println("Node Size: "+fGraph.nodeMap.size());
//			System.out.println("Edge Size: "+fGraph.edgeMap.size());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public MethodNode readFalDroidNode(String line){
		MethodNode node=new MethodNode();
		try {
			if(line.length()>0){
				String regex="(.*?): (.*?)\\((.*?)\\)(.*?),(.*)";
				Pattern pattern=Pattern.compile(regex);
				Matcher matcher=pattern.matcher(line);
				if(matcher.find()){
					String packString=matcher.group(1);
					packString=packString.replace("/", ".");
					String methodString=matcher.group(2);
					String arguString=matcher.group(3);
					ArrayList<String> arguList=new ArrayList<>();
					if(arguString.contains(";")){
						String str[]=arguString.split(";");
						for(int i=0;i<str.length;i++){
							String tmpArgu=str[i].trim();
							tmpArgu=tmpArgu.replace("/", ".");
							arguList.add(tmpArgu);
						}
					}
					else{
						arguString=arguString.replace("/", ".");
						arguList.add(arguString);
					}
					
					String returnValue=matcher.group(4).replace("/", ".");
					
					node.packageName=packString;
					node.methodName=methodString;
					node.arguList.addAll(arguList);
					node.returnValue=returnValue;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return node;
	}
	
	
}
