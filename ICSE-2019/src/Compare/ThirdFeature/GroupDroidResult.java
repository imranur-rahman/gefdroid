package Compare.ThirdFeature;

import java.awt.print.Printable;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

import AppSimilarityGraph.APPNode;
import ConstantVar.ConstantValue;

public class GroupDroidResult {

	public static ArrayList<falCluster> nodeList=new ArrayList<>();
	public static ArrayList<Double> timeList=new ArrayList<>();
	public static int maxGroupId=-1;
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ConstantValue.getVar();
		String addResultFilePath="./file/result/groupDroid/1260/exception.txt";
		String groupSetDirPath="./file/result/groupDroid/1260/groupSet/";
		String metricInputDirPath="/home/fan/workspace/AndroidEmbedding/file/result/groupDroid/1260/metricInput/";
		String metricOutputDirPath="/home/fan/workspace/AndroidEmbedding/file/result/groupDroid/1260/metricOutput/";
		
		
		File groupSetDir=new File(groupSetDirPath);
		File groupResult[]=groupSetDir.listFiles();
		for(int i=0;i<groupResult.length;i++){
			nodeList=new ArrayList<>();
			maxGroupId=-1;
			String groupResultFilePath=groupResult[i].getAbsolutePath();
			String name=groupResult[i].getName().replace(".txt", ".input");
			readResultFile(groupResultFilePath);
			addSample(addResultFilePath);
			String storeFilePath=metricInputDirPath+name;
			storeResult(storeFilePath);
			String outFileName=name.replace(".input", ".output");
			String outFilePath=metricOutputDirPath+outFileName;
			calMetric(storeFilePath, outFilePath);
		}
		
	//	processTime();
	}
	
	public static void calMetric(String inputFilePath, String outFilePath){
		try {
			String cmd="python2.7 /home/fan/workspace/AndroidEmbedding/file/result/groupDroid/1260/Measure.py --infile "+inputFilePath+" --outfile "+outFilePath;
			System.out.println(cmd);
			exeCmd(cmd);
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
	
	public static void processTime(){
		try {
			String filePath="./file/data/groupDroid/time1.txt";
			File file=new File(filePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.contains(" ")){
					String str[]=line.split(" ");
					String time=str[1].trim();
					time=time.replace("s", "");
					Double doubleTime=Double.valueOf(time);
					timeList.add(doubleTime);
				}
			}
			
			bReader.close();
			fReader.close();
			
			String writeFilePath="./file/data/groupDroid/CFGTime.txt";
			File writeFile=new File(writeFilePath);
			FileWriter fWriter=new FileWriter(writeFile);
			BufferedWriter bufferedWriter=new BufferedWriter(fWriter);
			for(int i=0;i<timeList.size();i++){
				line=timeList.get(i)+"\n";
				bufferedWriter.write(line);
			}
			bufferedWriter.close();
			fWriter.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void storeResult(String storeFilePath){
		try {
			String metricInputFile=storeFilePath;
			File mtricFile=new File(metricInputFile);
			FileWriter fWriter=new FileWriter(mtricFile);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			for(int i=0;i<nodeList.size();i++){
				String line="";
				line = i+","+nodeList.get(i).falId+","+nodeList.get(i).clusterId;
				bWriter.write(line+"\n");
				
			}
			
			bWriter.close();
			fWriter.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void addSample(String addFilePath){
		try {
			String filePath=addFilePath;
			File file=new File(filePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			int groudId=maxGroupId+1;
		
			while((line=bReader.readLine())!=null){
				if(line.contains("_")){
					//groudId ++;
					String str[]=line.split("_");
					String falStr=str[0].trim();
					falStr=falStr.replace("-", "").replace(".", "");
					if(!ConstantValue.getVar().FalIdMap.containsKey(falStr)){
						System.out.println("Cannot find --"+falStr);
					}
					int falId=ConstantValue.getVar().FalIdMap.get(falStr);
				
					falCluster fCluster=new falCluster();
					fCluster.falId=falId;
					fCluster.clusterId=falId+100;
					nodeList.add(fCluster);
				}
			}
			bReader.close();
			fReader.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void readResultFile(String inputFilePath){
		try {
			String filePath=inputFilePath;
			File file=new File(filePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.startsWith("group")){
					int k=line.indexOf(":");
					String groupStr=line.substring(0, k);
					groupStr=groupStr.replace("group", "");
					int groudId=Integer.valueOf(groupStr);
					if(groudId>=maxGroupId){
						maxGroupId=groudId;
					}
					String appStr=line.substring(k+1);
					appStr=appStr.trim();
					String app[]=appStr.split("   ");
					for(int i=0;i<app.length;i++){
						String str[]=app[i].split("_");
						String falName=str[0].trim();
						falName=falName.replace("-", "").replace(".", "");
						
						
						int falId=-1;
						if(ConstantValue.getVar().FalIdMap.containsKey(falName)){
							falId=ConstantValue.getVar().FalIdMap.get(falName);
						}
						else{
							System.out.println("Cannot find family: "+falName);
						}
						
						
						
						falCluster fCluster=new falCluster();
						fCluster.falId=falId;
						fCluster.clusterId=groudId;
						
					//	if(groudId<=5){
							nodeList.add(fCluster);
					//	}
					}
				}
			}
			
			bReader.close();
			fReader.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	static class falCluster{
		public int  falId=-1;
		public int  clusterId=-1;
		
		public falCluster(){
			
		}
	}
}
