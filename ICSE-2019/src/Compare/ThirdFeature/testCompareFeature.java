package Compare.ThirdFeature;

import ConstantVar.Color;
import ConstantVar.ConstantValue;

public class testCompareFeature {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ConstantValue.getVar();
		//testAPIFeature();
		//testPermissionFeature();
		testFalDroidFeature();
	}
	
	public static void testFalDroidFeature(){
		try {
			String filePath="./file/data/faldroid-result/Im--0.5-train.arff";
			FalDroidResult fDroidResult=new FalDroidResult(filePath);
			System.out.println(fDroidResult.apkFalFeatureList.size());
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void testAPIFeature(){
		try {
			String apkFilePath="/home/fan/workspace/AndroidEmbedding/file/data/family/adrd/apktool/adrd-01f5ad8046ff54b94997b624890c3e16.apk";
			AppAPIFeature appAPIFeature=new AppAPIFeature(apkFilePath);
			appAPIFeature.iniData();
			appAPIFeature.storeAPI2File();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void testPermissionFeature(){
		try {
			String apkFilePath="/home/fan/workspace/AndroidEmbedding/file/data/family/smsreg/apktool/smsreg-00d931896158edaa43552f8c10d1a888.apk";
			AppPermissionFeature aPermissionFeature=new AppPermissionFeature(apkFilePath);
			aPermissionFeature.iniData();
			aPermissionFeature.storePermission2File();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
