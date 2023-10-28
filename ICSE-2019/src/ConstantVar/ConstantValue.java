package ConstantVar;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;




public class ConstantValue {
	public static final String FAMILIESDIRPATH_STRING="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/";
	public static ArrayList<String> apkFilePathList=new ArrayList<>();
	public static Set<String> familySet=new HashSet<>();
	public static int apkSize=0;
	public static ConstantValue var;
	
	public static String stru2vecPath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/struc2vec/src/main.py";
	
	public static Set<String> WholeAPIPackSet=new HashSet<>();
	public static Set<String> SenAPISet=new HashSet<>();
   // public static double fileSimThreshold=0.33;  //  對於節點相似度劃分　　　<0.25, 0.25~0.75  >0.75
	public static int storeGraphMinSenAPISize=2;
	public static double graphSimThreshold=0.75D;
	public static int minSenAPISize=2;
	public static int minEdgeWeight=1;
	
    public static Set<String> thirdAdPackSet=new HashSet<>();
    public static Map<String, Color> FalColMap=new HashMap<>();
    public static Map<String, Integer> FalIdMap=new HashMap<>();
    public static Set<String> permissionSet=new HashSet<>();
    
    public static Set<String> singleFamilySet=new HashSet<>();
    
    
	public static void iniAPKFilePathList(){
		try {
//			FalIdMap.put("adrd", 0);  FalIdMap.put("anserverbot", 1);  FalIdMap.put("boxer", 2);
//			FalIdMap.put("dowgin", 3);FalIdMap.put("droiddreamlight", 4);FalIdMap.put("droidkungfu", 5);
//			FalIdMap.put("fakedoc", 6);FalIdMap.put("fakeinst", 7); FalIdMap.put("geinimi", 8);
//			FalIdMap.put("gingermaster", 9);FalIdMap.put("golddream", 10);FalIdMap.put("iconosys", 11);
//			FalIdMap.put("imlog", 12); FalIdMap.put("kmin", 13); FalIdMap.put("mobiletx", 14);
//			FalIdMap.put("pjapps", 15);FalIdMap.put("plankton", 16);FalIdMap.put("smsreg", 17);
//			FalIdMap.put("utchi", 18);FalIdMap.put("yzhc", 19); FalIdMap.put("zitmo", 20);
//			
//			familySet.add("adrd");  
//			familySet.add("anserverbot");  
//			familySet.add("boxer");
//			familySet.add("dowgin");
//			familySet.add("droiddreamlight");
//			familySet.add("droidkungfu");
//			familySet.add("fakedoc");
//			familySet.add("fakeinst");
//			familySet.add("geinimi");			
//			familySet.add("gingermaster");
//			familySet.add("golddream");
//			familySet.add("iconosys");
//			familySet.add("imlog");
//			familySet.add("kmin");
//			familySet.add("mobiletx");
//			familySet.add("pjapps");
//			familySet.add("plankton");
//			familySet.add("smsreg");
//			familySet.add("utchi");
//			familySet.add("yzhc");
//			familySet.add("zitmo");
			

			
			
			File dir=new File(FAMILIESDIRPATH_STRING + "ICSE-TestData");
			File fals[]=dir.listFiles();
			for(int i=0;i<fals.length;i++){
				String falName=fals[i].getName();
				FalIdMap.put(falName, i);
				familySet.add(falName);
				if(familySet.contains(falName)){
					
					File srcApks[]=fals[i].listFiles();
					if(srcApks.length==1){
						singleFamilySet.add(falName);
					}
					
					String apktoolPath=fals[i].getAbsolutePath()+"/apktool/";
					File apkTool=new File(apktoolPath);
					if(apkTool.exists()){
						File apks[]=apkTool.listFiles();
						for(int j=0;j<apks.length;j++){
							String tmpApkPath=apks[j].getAbsolutePath();
							if(tmpApkPath.endsWith(".apk")){
								apkFilePathList.add(tmpApkPath);
							}
						}
					}
				}
			}
			apkSize=apkFilePathList.size();
			System.out.println("待分析文件總數： "+apkFilePathList.size());
			System.out.println("家族數量: "+FalIdMap.size());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void iniFalColMap(){
		try {
			FalColMap.put("adrd", new Color("67", "67", "67"));
			FalColMap.put("anserverbot", new Color("102", "102", "102"));
			FalColMap.put("boxer", new Color("255", "153", "0"));
			FalColMap.put("dowgin", new Color("255", "255", "0"));
			FalColMap.put("droiddreamlight", new Color("0", "255", "0"));
			FalColMap.put("droidkungfu", new Color("0", "255", "255"));
			FalColMap.put("fakedoc", new Color("153", "0", "255"));
			FalColMap.put("fakeinst", new Color("39","78","19"));
			FalColMap.put("geinimi", new Color("255", "0", "255"));
			FalColMap.put("gingermaster", new Color("12", "52", "61"));
			FalColMap.put("golddream", new Color("28", "69", "135"));
			FalColMap.put("iconosys", new Color("7", "55", "99"));
			FalColMap.put("imlog", new Color("32", "18", "77"));
			FalColMap.put("kmin", new Color("76", "17", "48"));
			FalColMap.put("mobiletx", new Color("230", "184", "175"));
			FalColMap.put("pjapps", new Color("244", "204", "204"));
			FalColMap.put("plankton", new Color("252", "229", "205"));
			FalColMap.put("smsreg", new Color("217", "234", "211"));
			FalColMap.put("utchi", new Color("208", "224", "227"));
			FalColMap.put("yzhc", new Color("234", "153", "153"));
			FalColMap.put("zitmo", new Color("249", "203", "156"));
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void iniWholeAPIPackSet(){
		try {
			String pathname="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/key/APIPackSet.txt";
			File file=new File(pathname);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				WholeAPIPackSet.add(line);
			}
			bReader.close();
			fReader.close();
			System.out.println("完成構建API集合！");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void iniSenAPISet(){
		try {
			String pathname="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/key/SenAPISet.txt";
			File file=new File(pathname);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.contains("(")){
					String regex="(.*?): (.*?) (.*?)\\((.*)";
					Pattern pattern=Pattern.compile(regex);
					Matcher matcher=pattern.matcher(line);
					if(matcher.find()){
						String packName=matcher.group(1);
						String methodName=matcher.group(3);
						String senSigString=packName+": "+methodName;
						SenAPISet.add(senSigString);
						//System.out.println(senSigString);
					}
				}
			}
			
			bReader.close();
			fReader.close();
			System.out.println("Sensitive API Size: "+SenAPISet.size());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void iniPermissionSet(){
		try {
			String pathname="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/key/perm_name_88.txt";
			File file=new File(pathname);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.length()>0){
					permissionSet.add(line);
				}
			}
			System.out.println("Permission Size: "+permissionSet.size());
			bReader.close();
			fReader.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void iniThirdAdPackSet(){
		try {
			String pathname="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/key/ad_240.txt";
		//	String pathname="./file/key/ad_1050.txt";
			File adFile=new File(pathname);
			FileReader fReader=new FileReader(adFile);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.trim().length()>0){
					thirdAdPackSet.add(line);
				}
			}
			
			bReader.close();
			fReader.close();
			
			String adFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/key/addtionAd.txt";
			File adFile2=new File(adFilePath);
			FileReader fReader2=new FileReader(adFile2);
			BufferedReader bReader2=new BufferedReader(fReader2);
			line="";
			while((line=bReader2.readLine())!=null){
				if(line.trim().length()>0){
					thirdAdPackSet.add(line);
				}
			}
			bReader2.close();
			fReader2.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	private ConstantValue(){
		System.out.println("初始化常量數據......");
		iniAPKFilePathList();
		iniWholeAPIPackSet();
		iniSenAPISet();
		iniPermissionSet();
		iniThirdAdPackSet();
		iniFalColMap();
	}

	public static ConstantValue getVar(){
		if(var==null){
			var=new ConstantValue();
		}
		return var;
	}
}
