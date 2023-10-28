package RunTool;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

import APKData.SmaliGraph.SICG;
import ConstantVar.ConstantValue;

/*   整个实验第一步：反编译
 *  输入为一个目标文件夹，文件夹中所有对象均为apk文件，新建一个apktool文件，对文件夹内所有的
 *  对象均反编译，并且生成相应的分析文件
 */
public class DirAnalysis {
   //	public static String dirString=ConstantValue.getVar().FAMILIESDIRPATH_STRING;
  //  public static String dirString="/home/fan/lab/IR/data/fal/";
 	public static String dirString="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-TestData/";
 	
	public static ArrayList<Double> timeList=new ArrayList<>();
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		long startTime=System.currentTimeMillis();
		File file=new File(dirString);
		File family[]=file.listFiles();
		for(int i=0;i<family.length;i++){
		//	if(family[i].getName().contains("Gone60")){
				analysis(family[i].getAbsolutePath()+"/");
		//	}
		}
		//analysis(dirString);
		System.out.println("Finish!");
		 long endTime=System.currentTimeMillis();
		 long dureTime=(endTime-startTime)/3600000;
		 System.out.println(dureTime+"hour");
//		 String writeFilePath="/home/fan/data/Family/result-final/useTime/dis-Test.txt";
//		 writeFile(writeFilePath);
	}
	public static void analysis(String inputDirString){
		File dirFile=new File(inputDirString+"apktool/");
		if(!dirFile.exists()){
			dirFile.mkdir();
		}
		File file=new File(inputDirString);
		File apks[]=file.listFiles();
		for(int i=0;i<apks.length;i++){
			if(apks[i].getAbsolutePath().endsWith(".apk")){
				long startTime=System.currentTimeMillis();
				SICG sicg=new SICG(apks[i].getAbsolutePath(),dirFile.getAbsolutePath()+"/"+apks[i].getName());
				long endTime=System.currentTimeMillis();
				long useTime=endTime-startTime;
				timeList.add(Double.valueOf(useTime));
			}
		}
	}
	public static void writeFile(String filePath){
		try {
			File file=new File(filePath);
			FileWriter fileWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fileWriter);
			for(int i=0;i<timeList.size();i++){
				bWriter.write(timeList.get(i)+","+"\n");
			}
			bWriter.close();
			fileWriter.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
