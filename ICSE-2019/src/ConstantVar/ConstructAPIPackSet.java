package ConstantVar;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import Util.DirFileSet;

/*
 *   構建　API的所有包名
 */
public class ConstructAPIPackSet {

	public static Set<String> APIPackSet=new HashSet<>();
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String testDirPath="/home/fan/Android/Sdk/sources/android-14/";
		String sdkDirPath="/home/fan/Android/Sdk/sources/";
		File sdk=new File(sdkDirPath);
		File files[]=sdk.listFiles();
		for(int i=0;i<files.length;i++){
			run(files[i].getAbsolutePath());
		}
		storeAPIPackSet();
	}

	public static void run(String dirPath){
		try {
			File dir=new File(dirPath);
			String name=dir.getName();
			
			DirFileSet dFileSet=new DirFileSet();
			dFileSet.getDirFileSet(dirPath);
			Iterator<String> filePathIetrator=dFileSet.fileSet.iterator();
			while(filePathIetrator.hasNext()){
				String filePath=filePathIetrator.next();
				if(filePath.contains(name)){
					String tmp[]=filePath.split(name);
					String packName=tmp[1].trim();
					packName=packName.replace(".java", "");
					packName=packName.replace("/", ".");
					packName=packName.substring(1);
					APIPackSet.add(packName);
					System.out.println("add: "+packName);
				}
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public static void storeAPIPackSet(){
		try {
			String APIPackFilePath="./file/key/APIPackSet.txt";
			File file=new File(APIPackFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bufferedWriter=new BufferedWriter(fWriter);
			Iterator<String> APIPackIterator=APIPackSet.iterator();
			while(APIPackIterator.hasNext()){
				String APIPackName=APIPackIterator.next();
				bufferedWriter.write(APIPackName+"\n");
			}
			
			bufferedWriter.close();
			fWriter.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
