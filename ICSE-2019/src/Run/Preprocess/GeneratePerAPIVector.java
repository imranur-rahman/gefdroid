package Run.Preprocess;

import Compare.ThirdFeature.AppAPIFeature;
import Compare.ThirdFeature.AppPermissionFeature;
import ConstantVar.ConstantValue;

public class GeneratePerAPIVector {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		generatePermissionVector();
	//	generateAPIVector();
		
	}
	
	public static void generateAPIVector(){
		try {
			for(int i=0;i<ConstantValue.getVar().apkFilePathList.size();i++){
				String apkFilePath=ConstantValue.getVar().apkFilePathList.get(i);
				AppAPIFeature appAPIFeature=new AppAPIFeature(apkFilePath);
				appAPIFeature.iniData();
				appAPIFeature.storeAPI2File();
				System.out.println("index:"+i);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void generatePermissionVector(){
		try {
			for(int i=0;i<ConstantValue.getVar().apkFilePathList.size();i++){
				String apkFilePath=ConstantValue.getVar().apkFilePathList.get(i);
				AppPermissionFeature aPermissionFeature=new AppPermissionFeature(apkFilePath);
//				aPermissionFeature.readVectorFromFile();
			
				aPermissionFeature.iniData();
				aPermissionFeature.storePermission2File();
				System.out.println("index:"+i);
	
			}
			System.out.println("Finish generating all permission vectors!!!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
