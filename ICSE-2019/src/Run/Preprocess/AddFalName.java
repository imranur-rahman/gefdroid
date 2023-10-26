package Run.Preprocess;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;

import ConstantVar.ConstantValue;

/*
 *    Step 1: 重新命名apk文件，帶上家族名
 */
public class AddFalName {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		File rootDir=new File(ConstantValue.getVar().FAMILIESDIRPATH_STRING);
		File fals[]=rootDir.listFiles();
		for(int i=0;i<fals.length;i++){
			String falName=fals[i].getName();
//			String apktoolPath=fals[i].getAbsolutePath()+"/apktool/";
			
//			if(!falName.equals("adrd")){
//				File apktool=new File(apktoolPath);
//				File apks[]=apktool.listFiles();
//				for(int j=0;j<apks.length;j++){
//					if(apks[j].getName().endsWith(".apk")){
//						rename(apks[j].getAbsolutePath(), falName);
//					}
//				}
//			}
			File apks[]=fals[i].listFiles();
			for(int j=0;j<apks.length;j++){
				if(apks[j].getName().endsWith(".apk")){
					String apkFilePath=apks[j].getAbsolutePath();
					rename(apkFilePath, falName);
					//System.out.println(apkFilePath);
				}
			}
		}
		
	}
	
	public static void rename(String apkFilePath, String falName){
		try {
			String srcFilePath=apkFilePath;
			File apkFile=new File(apkFilePath);
			String apkName=apkFile.getName();
			String newApkName=falName+"-"+apkName;
			String newApkFilePath=srcFilePath.replace(apkName, newApkName);
			String cmd="mv "+srcFilePath+" "+newApkFilePath;
			exeCmd(cmd);
			System.out.println("New Path: "+newApkFilePath);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void exeCmd(String cmd){
		Runtime rnRuntime=Runtime.getRuntime();
		String outInfo="";
		try {
			Process process=rnRuntime.exec(cmd);
			InputStream in = ( process).getErrorStream();//得到错误信息输出。
			BufferedReader br = new BufferedReader(new InputStreamReader(in));
			String line = "";
			while ( (line = br.readLine())!= null) {
				outInfo = outInfo + line + "\n";
			} 
			//System.out.println(outInfo);
		}
			catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
