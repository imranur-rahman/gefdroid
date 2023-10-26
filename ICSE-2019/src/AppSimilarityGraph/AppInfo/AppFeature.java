package AppSimilarityGraph.AppInfo;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import ConstantVar.ConstantValue;
import Gexf2Feature.GraphFeature;

public class AppFeature {
	
	public String falName="";
	public String apkFilePath="";
	public String apkName="";
	public Map<String, GraphFeature> apkGraphFeatureMap=new HashMap<>();  //　存儲一個樣本的所有子圖特徵集合
	
	public AppFeature(){
		
	}
	
	public AppFeature(String apkFilePath){
		this.apkFilePath=apkFilePath;
		if(apkFilePath.contains("/apktool/")){
			String str[]=apkFilePath.split("/apktool/");
			this.apkName=str[1].trim();
			int k=str[0].lastIndexOf("/");
			this.falName=str[0].substring(k+1);
			
		}
		iniData();
	}
	
	public void iniData(){
		try {
			String fileGraphMapDirPath=apkFilePath+"/FGraph/FileGraphMap/";
			File fileGraphMapDir=new File(fileGraphMapDirPath);
			File subGraphFiles[]=fileGraphMapDir.listFiles();
			for(int i=0;i<subGraphFiles.length;i++){
				String subFileName=subGraphFiles[i].getName();
				String gexfFeatureFilePath=subGraphFiles[i].getAbsolutePath()+"/file-"+subFileName+".feature";
				GraphFeature gFeature=new GraphFeature(gexfFeatureFilePath);
				if(gFeature.APISet.size()>=ConstantValue.getVar().minSenAPISize){
					if(!isBelongAdLib(subFileName)){
						apkGraphFeatureMap.put(subFileName, gFeature);
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
//			if(ConstantValue.getVar().thirdAdPackSet.contains(fileName)){
//				belong=true;
//			}
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
	
}
