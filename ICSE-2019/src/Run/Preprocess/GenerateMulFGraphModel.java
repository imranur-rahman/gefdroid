package Run.Preprocess;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Iterator;


import ConstantVar.ConstantValue;
import Gexf2Feature.Gexf2Feature;
import GraphModel.MulFGraphModel;
import GraphModel.FlowDroid.FalDroidResult;

public class GenerateMulFGraphModel {

	public static ArrayList<Double> timeList=new ArrayList<>();
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		for(int i=0;i<ConstantValue.getVar().apkFilePathList.size();i++){
		//	if(i==0){
			System.out.println("Index: "+i);
			String apkFilePath=ConstantValue.getVar().apkFilePathList.get(i);
		//	if(!apkFilePath.contains("geinimi")){
				
				
				storeEntireGexf(apkFilePath);
				long startTime=System.currentTimeMillis();
				storeSubFileGexf(apkFilePath);
				long endTime=System.currentTimeMillis();
				double dureTime=(endTime-startTime)/Double.valueOf(1000);
				System.out.println("Using Time: "+dureTime+" s");
				
				timeList.add(dureTime);
		//	}
		//	}
		}
	}
	
	public static void storeTimeList(){
		try {
			String pathName="./file/result/Time/";
			File timeDir=new File(pathName);
			if(!timeDir.exists()){
				timeDir.mkdirs();
			}
			String timeFilePath=pathName+"featureTime.txt";
			File timeFile=new File(timeFilePath);
			FileWriter fWriter=new FileWriter(timeFile);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			for(int i=0;i<timeList.size();i++){
				bWriter.write(timeList.get(i)+"\n");
			}
			bWriter.close();
			fWriter.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void storeEntireGexf(String apkFilePath){
		try {
			FalDroidResult fDroidResult=new FalDroidResult(apkFilePath);
			
			
			int nodeSize=fDroidResult.fGraph.nodeMap.size();
			int edgeSize=fDroidResult.fGraph.edgeMap.size();
			File apkFile=new File(apkFilePath);
			String apkName=apkFile.getName();
			System.out.println("Finish Construct Entire Graph: "+apkName);
			System.out.print("#Node--"+nodeSize+"  #Edge--"+edgeSize);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void storeSubFileGexf(String apkFilePath){
		try {
			File apkFile=new File(apkFilePath);
			String apkName=apkFile.getName();
			
			MulFGraphModel mulFGraphModel=new MulFGraphModel(apkFilePath);
			mulFGraphModel.contructFileGraphMap();
			mulFGraphModel.storeFileGraphMap();
			System.out.println("  #SubFile-- "+mulFGraphModel.fileGraphMap.size());
			int k=0;
			Iterator<String> subGexfFileIterator=mulFGraphModel.storeSubGexfFilePathSet.iterator();
			while(subGexfFileIterator.hasNext()){
				String subGexfFilePath=subGexfFileIterator.next();
				Gexf2Feature gexf2Feature=new Gexf2Feature(subGexfFilePath);
				k++;
				System.out.print(k+"--");
			}
			System.out.println("Finish Construct Graph Feature!");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
