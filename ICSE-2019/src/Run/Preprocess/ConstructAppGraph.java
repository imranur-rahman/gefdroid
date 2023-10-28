package Run.Preprocess;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import AppSimilarityGraph.APPGraph;
import AppSimilarityGraph.ComunityResult;
import ConstantVar.ConstantValue;
import Util.DirDelete;

public class ConstructAppGraph {

	public static String featureType="";
	public static String communityDetectionFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/CommunityDetection.py";
	public static String metricCalculationFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/Measure.py";
	public static double simThreshold=ConstantValue.getVar().graphSimThreshold;
	public static int simEdge=ConstantValue.getVar().minEdgeWeight;
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ConstantValue.getVar();
		//for(int i=10;i<19;i++){
			ConstantValue.getVar().graphSimThreshold=0.75;
			ConstantValue.getVar().minEdgeWeight=1;
			simThreshold=ConstantValue.getVar().graphSimThreshold;
			simEdge=ConstantValue.getVar().minEdgeWeight;
			
			featureType="Embedding";
			run();
			communityDetection();
			analyzeResult();
			mvResultFile();
		//}
		
	}
	
	public static void mvResultFile(){
		try {
			String resultDirPath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/"+featureType+"/"+String.valueOf(simThreshold)+"--"+String.valueOf(simEdge);
			File resultDir=new File(resultDirPath);
			if(resultDir.exists()){
				DirDelete dirDelete=new DirDelete();
				dirDelete.deleteDir(resultDir);
			}
			resultDir.mkdirs();
			Set<String> resultFileSet=new HashSet<>();
			resultFileSet.add("AppFalId.txt");
			resultFileSet.add("Community_Result.txt");
			resultFileSet.add("gml.txt");
			resultFileSet.add("graph.gexf");
			resultFileSet.add("metricInput.txt");
			resultFileSet.add("metricOutput.txt");
			resultFileSet.add("SimFileLog.txt");
			
			Iterator<String> fileIterator=resultFileSet.iterator();
			while(fileIterator.hasNext()){
				String fileName=fileIterator.next();
				String srcFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/"+fileName;
				String dstFilePath=resultDirPath+"/"+fileName;
				String cmd="mv "+srcFilePath+" "+dstFilePath;
				exeCmd(cmd);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void newDir(){
		try {
			String resultDir="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/";
//			String apiDirPath=resultDir+"API/";
//			File apiDir=new File(apiDirPath);
//			if(!apiDir.exists()){
//				apiDir.mkdirs();
//			}
//			String permissionDirPath=resultDir+"Permission/";
//			File permissionDir=new File(permissionDirPath);
//			if(!permissionDir.exists()){
//				permissionDir.mkdirs();
//			}
			String embeddingDirPath=resultDir+"Embedding/";
			File embeddingDir=new File(embeddingDirPath);
			if(!embeddingDir.exists()){
				embeddingDir.mkdirs();
			}
//			String falDroidDirPath=resultDir+"FalDroid/";
//			File falDroidDir=new File(falDroidDirPath);
//			if(!falDroidDir.exists()){
//				falDroidDir.mkdirs();
//			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void run(){
		try {
			//   如果沒有結果文件夾則進行新建
			newDir();
			
			long startTime=System.currentTimeMillis();
			APPGraph graph=new APPGraph();
			
			if(featureType.equals("Embedding")){
				graph.iniGraphEmbedFeature();  // 基於embedding結果構建相似圖
			}
			else if(featureType.equals("Permission")){
				graph.iniGraphPermissionFeature();   //　基於Permission相似性構建相似圖
			} 
			else if(featureType.equals("API")){
				graph.iniGraphAPIFeature();   //　基於API相似性構建相似圖
			}
			else if(featureType.equals("FalDroid")){
				graph.iniGraphFalDroidFeature();
			}
			else {
				
			}          
			
			long endTime=System.currentTimeMillis();
			double dureTime=(endTime-startTime)/Double.valueOf(1000);
			
			
			String appGraphGexfFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/graph.gexf";
			graph.storeGraph2Gexf(appGraphGexfFilePath);
			
//			String appGraphDotFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/graph.dot";
//			graph.storeGraph2Dot(appGraphDotFilePath);
			
			String appGraphGMLFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/gml.txt";
			graph.storeGraph2GML(appGraphGMLFilePath);
			
			String simFileLogPath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/SimFileLog.txt";
			graph.storeSimFileLog(simFileLogPath);
			
			String appFalIdPath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/AppFalId.txt";
			graph.storeAppFalId(appFalIdPath);
			System.out.println("Construct App graph Using Time : "+dureTime);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public static void communityDetection(){
		try {
			//String dotFilePath="./file/result/graph.dot";
			
			String inputFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/gml.txt";
			File inputFile=new File(inputFilePath);
			inputFilePath=inputFile.getAbsolutePath();
			
			String outputFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/Community_Result.txt";
			File outFile=new File(outputFilePath);
			outputFilePath=outFile.getAbsolutePath();
			
			long startTime=System.currentTimeMillis();
			String cmd="python3 "+communityDetectionFilePath+" --infile "+inputFilePath+" --outfile "+outputFilePath;
			exeCmd(cmd);
			long endTime=System.currentTimeMillis();
			double dureTime=(endTime-startTime)/Double.valueOf(1000);
			System.out.println("Community Detection Using Time: "+dureTime);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void analyzeResult(){
		try {
			long startTime=System.currentTimeMillis();
			String communityResultFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/Community_Result.txt";
			String groudTruthDataFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/AppFalId.txt";
			ComunityResult comResult=new ComunityResult();
			comResult.readDataFromFile(communityResultFilePath);
			comResult.readGroudTruthData(groudTruthDataFilePath);
			
			String metricInputFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/metricInput.txt";
			comResult.storeMetricInput(metricInputFilePath);
			
			String inputFilePath=metricInputFilePath;
			File inputFile=new File(inputFilePath);
			inputFilePath=inputFile.getAbsolutePath();
			String outputFilePath="/Users/imranur/Research/LLM-for-package-clustering/ICSE19-GefDroid/GefDroid-Code/ICSE-2019/file/result/metricOutput.txt";
			File outputFile=new File(outputFilePath);
			outputFilePath=outputFile.getAbsolutePath();
			
			
			String cmd="python3 "+metricCalculationFilePath+" --infile "+inputFilePath+" --outfile "+outputFilePath;
			exeCmd(cmd);
			
			
			long endTime=System.currentTimeMillis();
			double dureTime=(endTime-startTime)/Double.valueOf(1000);
			System.out.println("Metric Calculation Time: "+dureTime);
			
			
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
