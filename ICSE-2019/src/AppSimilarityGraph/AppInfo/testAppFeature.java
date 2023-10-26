package AppSimilarityGraph.AppInfo;

import AppSimilarityGraph.AppSimilarity;

public class testAppFeature {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//test1();
		
		testAppSim();
	}
	
	public static void test1(){
		try {
			String apkFilePath="./file/data/family/adwo/apktool/adwo-0e57865ce3273af68436155dc23f98b5.apk";
			AppFeature appFeature=new AppFeature(apkFilePath);
			
			System.out.println("Graph Size: "+appFeature.apkGraphFeatureMap.size());
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void testAppSim(){
		try {
			String srcApkFilePath="/home/fan/data/ICSE/ADRD/apktool/ADRD-4de0d8997949265a4b5647bb9f9d42926bd88191.apk";
			String dstApkFilePath="/home/fan/data/ICSE/ADRD/apktool/ADRD-6a0bfabcc1cce2a5424313b34ca967fbc8f98bea.apk";
			
			AppFeature srcAppFea=new AppFeature(srcApkFilePath);
			AppFeature dstAppFea=new AppFeature(dstApkFilePath);
			AppSimilarity appSimilarity=new AppSimilarity(srcAppFea, dstAppFea);
			appSimilarity.calAppSim();
			appSimilarity.showFileSimMap();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
