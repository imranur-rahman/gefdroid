package GraphModel;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class FTree {
	
	public String apkFilePath="";
	public String smaliDirPath="";
	public ArrayList<String> classFilePathList=new ArrayList<>();
	public ArrayList<String> dirFilePathList=new ArrayList<>();
//	public ArrayList<String> classesList=new ArrayList<>();
	public fileTree tree;
//	public int fileNum=0;
	public Set<String> effectClassSet=new HashSet<>();  // 當前apk的自定義類集合
	
	
	public FTree(){
		
	}
	
	public FTree(String apkFilePath){
		try {
			this.apkFilePath=apkFilePath;
			smaliDirPath=apkFilePath+"/smali/";
			File smaliDirFile=new File(smaliDirPath);
			if(smaliDirFile.exists()){
				this.smaliDirPath=smaliDirFile.getAbsolutePath()+"/";
				tree=new fileTree(smaliDirFile); // 构建文件树
				iniEffectClassSet();
			}
			else {
				System.err.print(" There is no smali file in the apk file: "+ apkFilePath);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void iniEffectClassSet(){
		try {
			for(int i=0;i<classFilePathList.size();i++){
				String srcString=classFilePathList.get(i);
				srcString=srcString.replace(".smali", "");
				srcString=srcString.substring(1);
				srcString=srcString.replace("/", ".");
				effectClassSet.add(srcString);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public String showFTree(){
		String result="";
		try {
			result += "文件："+ apkFilePath+"\n";
			result += "文件夹数目：" +dirFilePathList.size()+"\n";
			for(int i=0;i<dirFilePathList.size();i++){
				result +="     dir: "+dirFilePathList.get(i)+"\n";
			}
			result += "文件数目："+classFilePathList.size()+"\n";
			for(int i=0;i<classFilePathList.size();i++){
				result +="     file: "+classFilePathList.get(i)+"\n";
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return result;
	}
	
	class fileTree{
		
		public String smaliDirPath="";
		public fileNode rootFileNode;
		public fileTree(File file){
			smaliDirPath=file.getAbsolutePath();
			rootFileNode=new fileNode(file);
			dirFilePathList.add(getRelativePath(file.getAbsolutePath()));
			addTreeNode(rootFileNode);
		}
		public void addTreeNode(fileNode tmpNode){
			File [] files=tmpNode.nodeFile.listFiles();
			if(files.length>0){
				for(int i=0;i<files.length;i++){
					fileNode node=new fileNode(files[i]);
					tmpNode.addChildNode(node);
					if(files[i].isDirectory()){
						dirFilePathList.add(getRelativePath(files[i].getAbsolutePath()));
						addTreeNode(node);
					}
					else { // this node is a file which end with smali , then analysis this file
						 classFilePathList.add(getRelativePath(files[i].getAbsolutePath())+"smali");
					}
				}
			}
		}
		
		/*
		 *   獲取相對smali根目錄的相對路徑
		 */
		public String getRelativePath(String absPath){
			String result="";
			if(absPath.equals(smaliDirPath)){
				result = "./";
			}
			else{
				if(absPath.contains("smali")){
					String str[]=absPath.split("smali");
					result = str[1].trim();
				}
			}
			return result;
		}
	}
	
	class fileNode{
		public File nodeFile;
		public String filePathName="";   //   相應文件從初始包到當前文件的路徑名　例如/a/b/c
		public fileNode parentNode;
		public String nodeType="";   // // 若为 dir　表示该节点为文件夹，　若为　File　表示该节点为smali文件
		public ArrayList<fileNode> childrenNodeList=new ArrayList<>();
		
		public fileNode(File file){
			this.nodeFile=file;
			parentNode=null;
			if(file.isDirectory()){
				this.nodeType="Dir";
			}
			else {
				this.nodeType="File";
			}
		}
		
		public void addChildNode(fileNode node){
			node.parentNode=this;
			this.childrenNodeList.add(node);
		}
		
		
	}
}
