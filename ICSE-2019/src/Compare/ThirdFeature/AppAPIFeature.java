package Compare.ThirdFeature;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import ConstantVar.Color;
import ConstantVar.ConstantValue;

public class AppAPIFeature {
	public String apkFilePath="";
	public String falName="";
	public String apkName="";
	public ArrayList<Double> APIVector=new ArrayList<>();
	public Set<String> applyAPISet=new HashSet<>();
	
	public AppAPIFeature(){
		
	}
	
	public AppAPIFeature(String apkFilePath){
		this.apkFilePath=apkFilePath;
		if(apkFilePath.contains("/apktool/")){
			String str[]=apkFilePath.split("/apktool/");
			this.apkName=str[1].trim();
			int k=str[0].lastIndexOf("/");
			this.falName=str[0].substring(k+1);
		}
	}
	
	
	public void readVectorFromFile(){
		try {
			String APIFilePath=apkFilePath+"/SICG/API.vector";
			APIVector=new ArrayList<>();
			File file=new File(APIFilePath);
			if(file.exists()){
				FileReader fReader=new FileReader(file);
				BufferedReader bReader=new BufferedReader(fReader);
				String line="";
				line=bReader.readLine();
				if(line!=null && line.length()>0){
					String str[]=line.split(",");
					for(int i=0;i<str.length;i++){
						APIVector.add(Double.valueOf(str[i]));
					}
				}
				else{
					System.out.println(apkFilePath+" ---  No API Vector Content!!!");
				}
				bReader.close();
				fReader.close();
			}
			else{
				System.out.println(apkFilePath+" ---  No API Vector File!!!");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public void iniData(){
		try {
			String sourcePath=apkFilePath+"/SICG/Source.txt";
			String sinkPath=apkFilePath+"/SICG/Sink.txt";
			readAPIFromFile(sourcePath);
			readAPIFromFile(sinkPath);
			
			/*
		     *   構建API向量
		     */
		    Iterator<String> APIIterator=ConstantValue.getVar().SenAPISet.iterator();
		    while(APIIterator.hasNext()){
		    	String APIString=APIIterator.next();
		    	if(applyAPISet.contains(APIString)){
		    		//System.out.println("Contain: "+perString);
		    		APIVector.add(1.0D);
		    	}
		    	else{
		    		APIVector.add(0.0D);
		    	}
		    }
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void readAPIFromFile(String filePath){
		try {
			File file=new File(filePath);
			if(file.exists()){
				FileReader fReader=new FileReader(file);
				BufferedReader bReader=new BufferedReader(fReader);
				String line="";
				while((line=bReader.readLine())!=null){
					if(line.length()>0){
						String apiString=line.replace("/", ".");
						int k=apiString.indexOf("(");
						apiString=apiString.substring(0, k);
						applyAPISet.add(apiString);
//						if(ConstantValue.getVar().SenAPISet.contains(apiString)){
//							System.out.println("Find API: "+apiString);
//						}
					}
				}
				bReader.close();
				fReader.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void storeAPI2File(){
		try {
			String APIFilePath=apkFilePath+"/SICG/API.vector";
			File file=new File(APIFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			for(int i=0;i<APIVector.size();i++){
				line += APIVector.get(i)+",";
			}
			line=line.substring(0,line.length()-1);
			bWriter.write(line);
			bWriter.close();
			fWriter.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
