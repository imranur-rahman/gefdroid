package Compare.ThirdFeature;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.Namespace;
import org.jdom2.input.SAXBuilder;

import ConstantVar.ConstantValue;

public class AppPermissionFeature {
	public String apkFilePath="";
	public String falName="";
	public String apkName="";
	public ArrayList<Double> perVector=new ArrayList<>();
	public Set<String> applyPerSet=new HashSet<>();
	
	public AppPermissionFeature(){
		
	}
	
	public AppPermissionFeature(String apkFilePath){
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
			String permissionFilePath=apkFilePath+"/SICG/permission.vector";
			perVector=new ArrayList<>();
			File file=new File(permissionFilePath);
			if(file.exists()){
				FileReader fReader=new FileReader(file);
				BufferedReader bReader=new BufferedReader(fReader);
				String line="";
				line=bReader.readLine();
				if(line!=null && line.length()>0){
					String str[]=line.split(",");
					for(int i=0;i<str.length;i++){
						perVector.add(Double.valueOf(str[i]));
					}
				}
				else{
					System.out.println(apkFilePath+" ---  No Permission Vector Content!!!");
				}
				bReader.close();
				fReader.close();
			}
			else{
				System.out.println(apkFilePath+" ---  No Permission Vector File!!!");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void getPerSetFromXML(String xmlFilePath){
		try {
			File file=new File(xmlFilePath);
			if(file.exists()){
				FileReader fReader=new FileReader(file);
				BufferedReader bReader=new BufferedReader(fReader);
				String line="";
				while((line=bReader.readLine())!=null){
					if(line.contains("permission")){
						String regex="(.*?)name=\"android\\.permission\\.(.*?)\"(.*)";
						Pattern pattern=Pattern.compile(regex);
						Matcher matcher=pattern.matcher(line);
						if(matcher.find()){
							String perString=matcher.group(2);
							applyPerSet.add(perString);
						//	System.out.println(perString);
						}
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
	
	public void iniData(){
		try {
			String xmlFilePath=apkFilePath+"/AndroidManifest.xml";
			getPerSetFromXML(xmlFilePath);
			/*
			SAXBuilder builder = new SAXBuilder();  
	    	Namespace type=Namespace.getNamespace("android","http://schemas.android.com/apk/res/android");
		    Document doc = builder.build(new File(xmlFilePath));  
		    Element root = doc.getRootElement();  
		    List<Element> elements = root.getChildren();  
		    for(int i=0;i<elements.size();i++){
		        String tmp=elements.get(i).getAttributeValue("name", type);
		     //   System.out.println(tmp);
		        if(elements.get(i).getName().equals("uses-permission")){
		        	int k=tmp.lastIndexOf(".");
		        	tmp=tmp.substring(k+1);
		        	applyPerSet.add(tmp);
		        	System.out.println(tmp);
		        }
		    }*/
			
		    /*
		     *   構建permission向量
		     */
		    Iterator<String> perIterator=ConstantValue.getVar().permissionSet.iterator();
		    while(perIterator.hasNext()){
		    	String perString=perIterator.next();
		    	if(applyPerSet.contains(perString)){
		    		//System.out.println("Contain: "+perString);
		    		perVector.add(1.0D);
		    	}
		    	else{
		    		perVector.add(0.0D);
		    	}
		    }
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void storePermission2File(){
		try {
			String permissionFilePath=apkFilePath+"/SICG/permission.vector";
			File file=new File(permissionFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			for(int i=0;i<perVector.size();i++){
				line += perVector.get(i)+",";
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
