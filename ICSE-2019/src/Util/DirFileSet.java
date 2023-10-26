package Util;

import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/*
 *   獲取一個文件夾下的所有文件的路徑
 */
public class DirFileSet {

	public static Set<String> fileSet=new HashSet<>();
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String dirPath="/home/fan/workspace/AndroidEmbedding/file/test/android-25/";
		getDirFileSet(dirPath);
		showFileSet();
	}
	
	public static void showFileSet(){
		try {
			Iterator<String> fileIterator=fileSet.iterator();
			while(fileIterator.hasNext()){
				System.out.println(fileIterator.next());
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void getDirFileSet(String dirPath){
		try {
			File dir=new File(dirPath);
			if(dir.isDirectory()){
				File files[]=dir.listFiles();
				for(int i=0;i<files.length;i++){
					if(files[i].isFile()){
						String filePath=files[i].getAbsolutePath();
						if(filePath.endsWith(".java")){
							fileSet.add(filePath);
						}
					}
					else{
						getDirFileSet(files[i].getAbsolutePath());
					}
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
