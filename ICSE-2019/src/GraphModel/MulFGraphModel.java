package GraphModel;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import ConstantVar.ConstantValue;
import GraphModel.FlowDroid.FalDroidResult;
import Util.DirDelete;

/*
 *    多層網絡模型
 */
public class MulFGraphModel {
	public String apkFilePath="";  
	public FTree fTree;
	public FGraph fGraph;
	
	public Map<String, FGraph> packGraphMap=new HashMap<>();
	public Map<String, FGraph> fileGraphMap=new HashMap<>();

	public Set<String> storeSubGexfFilePathSet=new HashSet<>();
	
	public MulFGraphModel(){
		
	}
	
	public MulFGraphModel(String apkFilePath){
		try {
			this.apkFilePath=apkFilePath;
		//	FalDroidResult falDroidResult=new FalDroidResult(apkFilePath);
			
			fTree=new FTree(apkFilePath);
			String entireGraphFilePath=apkFilePath+"/FGraph/entireGraph.gexf";
			fGraph=new FGraph(entireGraphFilePath);
			
//			System.out.println("APK File Path: "+apkFilePath);
//			System.out.println("Dir Size: "+(fTree.dirFilePathList.size()-1));
//			System.out.println("File Size: "+fTree.classFilePathList.size());
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/*
	 *   根據　FTree中的文件夾列表，將entireGraph劃分成爲以包爲單位的graph map
	 */
//	public void contructDirGraphMap(){
//		try {
//			for(int i=0;i<fTree.dirFilePathList.size();i++){
//				String packPrefix=fTree.dirFilePathList.get(i);
//				if(!packPrefix.equals("./") && packPrefix.length()>1){  //  不存儲原始圖
//					FGraph subPackGraph=fGraph.getSubPackFGraph(packPrefix);
//					packPrefix=packPrefix.substring(1);
//					packPrefix=packPrefix.replace("/", ".");
//					packGraphMap.put(packPrefix, subPackGraph);
//				}
//			}
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//	}
	
//	public void storeDirGraphMap(){
//		try {
//			String storeDirPath=apkFilePath+"/FGraph/PackGraphMap/";
//			File storeDir=new File(storeDirPath);
//			if(storeDir.exists()){
//				DirDelete delete=new DirDelete();
//				delete.deleteDir(storeDir);
//			}
//			storeDir.mkdirs();
//			Iterator<String> packGraphIterator=packGraphMap.keySet().iterator();
//			while(packGraphIterator.hasNext()){
//				String packPrefix=packGraphIterator.next();
//				String fileName="dir-"+packPrefix+".gexf";
//				String storeFilePath=storeDirPath+fileName;
//				packGraphMap.get(packPrefix).storeGraph2Gexf(storeFilePath);
//			}
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//	}
	
	/*
	 *   根據　FTree中的文件列表，將entireGraph劃分成爲以文件爲單位的graph map
	 */
	public void contructFileGraphMap(){
		try {
			for(int i=0;i<fTree.classFilePathList.size();i++){
				String fileName=fTree.classFilePathList.get(i);
				if(fileName.length()>1){  //  不存儲原始圖
					FGraph subFileGraph=fGraph.getSubFileFGraph(fileName);
					fileName=fileName.substring(1);
					fileName=fileName.replace("/", ".");
					fileName=fileName.replace(".smali", "");
					/*
					 *    過濾第三方包的fileName
					 */
					if(!isBelongAdLib(fileName)){
						int senAPISize=subFileGraph.APINodeMap.size();
						if(senAPISize>=ConstantValue.getVar().storeGraphMinSenAPISize){
							fileGraphMap.put(fileName, subFileGraph);
						}
					}
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	// 判斷一個文件類是否是屬於第三方包
	public boolean isBelongAdLib(String fileName){
		boolean belong=false;
//		if(ConstantValue.getVar().thirdAdPackSet.contains(fileName)){
//			belong=true;
//		}
		if(fileName.contains(".")){
			String str[]=fileName.split("\\.");
			String prefix="";
			for(int i=0;i<str.length;i++){
				
				if(i==0){
					prefix += str[i];
				}
				else{
					prefix += "."+str[i];
				}
				if(ConstantValue.getVar().thirdAdPackSet.contains(prefix)){
					
					belong=true;
					break;
				}
			}
		}
		else{
			if(ConstantValue.getVar().thirdAdPackSet.contains(fileName)){
				belong=true;
			}
		}
		return belong;
	}
	
	public void storeFileGraphMap(){
		try {
			String storeDirPath=apkFilePath+"/FGraph/FileGraphMap/";
			File storeDir=new File(storeDirPath);
			if(storeDir.exists()){
				DirDelete delete=new DirDelete();
				delete.deleteDir(storeDir);
			}
			storeDir.mkdirs();
			Iterator<String> fileGraphIterator=fileGraphMap.keySet().iterator();
			while(fileGraphIterator.hasNext()){
				String filePrefix=fileGraphIterator.next();
				String fileName="file-"+filePrefix+".gexf";
				String subFileDirPath=storeDirPath+filePrefix+"/";
				File subFileDir=new File(subFileDirPath);
				
					if(subFileDir.exists()){
						DirDelete delete=new DirDelete();
						delete.deleteDir(subFileDir);
					}
					subFileDir.mkdirs();
					String storeFilePath=subFileDirPath+fileName;
					FGraph tmpGraph=fileGraphMap.get(filePrefix);
				//	tmpGraph.reduceNode();
					tmpGraph.storeGraph2Gexf(storeFilePath);
					storeSubGexfFilePathSet.add(storeFilePath);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
