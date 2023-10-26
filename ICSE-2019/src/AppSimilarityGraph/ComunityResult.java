package AppSimilarityGraph;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import Util.MapSort;

public class ComunityResult {
	public Map<String, String> ImNodeClusterMap=new HashMap<>();
	public Map<String, String> FgNodeClusterMap=new HashMap<>();
	public Map<String, String> LpNodeClusterMap=new HashMap<>();
	public Map<String, String> MlNodeClusterMap=new HashMap<>();
	
	public List<Map.Entry<String, String>> groudTruthList=new ArrayList<>();
	
	public ComunityResult(){
		
	}
	
	public void readDataFromFile(String filePath){
		try {
			File file=new File(filePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.contains("-")){
					String regex="(.*?)-(.*?)\\[(.*?)\\]";
					Pattern pattern=Pattern.compile(regex);
					Matcher matcher=pattern.matcher(line);
					if(matcher.find()){
						String algString=matcher.group(1);
						String clusterIndex=matcher.group(2);
						String nodeListString=matcher.group(3);
						ArrayList<String> nodeList=new ArrayList<>();
						if(nodeListString.contains(",")){
							String str[]=nodeListString.split(",");
							for(int i=0;i<str.length;i++){
								if(str[i].trim().length()>0){
									nodeList.add(str[i].trim());
								}
							}
						}
						else{
							nodeList.add(nodeListString.trim());
						}
						
						if(algString.equals("im")){
							for(int i=0;i<nodeList.size();i++){
								String nodeIndex=nodeList.get(i);
								ImNodeClusterMap.put(nodeIndex, clusterIndex);
							}
						}
						else if(algString.equals("fg")){
							for(int i=0;i<nodeList.size();i++){
								String nodeIndex=nodeList.get(i);
								FgNodeClusterMap.put(nodeIndex, clusterIndex);
							}
						}
						else if(algString.equals("ml")){
							for(int i=0;i<nodeList.size();i++){
								String nodeIndex=nodeList.get(i);
								MlNodeClusterMap.put(nodeIndex, clusterIndex);
							}
						}
						else if(algString.equals("lp")){
							for(int i=0;i<nodeList.size();i++){
								String nodeIndex=nodeList.get(i);
								LpNodeClusterMap.put(nodeIndex, clusterIndex);
							}
						}
						else{
							
							System.out.println("None Cluster!");
						}
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
	
	/*
	 *   讀取apk 真實對應的cluster信息
	 */
	public void readGroudTruthData(String groudTruthDataFilePath){
		try {
			Map<String, String> nodeIdClusterMap=new HashMap<>();
			File file=new File(groudTruthDataFilePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.contains(",")){
					String str[]=line.split(",");
					String nodeId=str[1].trim();
					String clusterIndex=str[2].trim();
					nodeIdClusterMap.put(nodeId, clusterIndex);
				}
			}
			
			MapSort<String, String> mapSort=new MapSort<>();
			groudTruthList=mapSort.sortMapByKeyAsc(nodeIdClusterMap);
			
			bReader.close();
			fReader.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/*
	 *   按照node Index重新排序
	 */
	public void storeMetricInput(String metricInputFilePath){
		try {
			MapSort<String, String> mapSort=new MapSort<>();
			List<Map.Entry<String, String>> ImNodeList=new ArrayList<>();
			ImNodeList=mapSort.sortMapByKeyAsc(ImNodeClusterMap);
			List<Map.Entry<String, String>> FgNodeList=new ArrayList<>();
			FgNodeList=mapSort.sortMapByKeyAsc(FgNodeClusterMap);
			List<Map.Entry<String, String>> LpNodeList=new ArrayList<>();
			LpNodeList=mapSort.sortMapByKeyAsc(LpNodeClusterMap);
			List<Map.Entry<String, String>> MlNodeList=new ArrayList<>();
			MlNodeList=mapSort.sortMapByKeyAsc(MlNodeClusterMap);
			System.out.println("Im Node Size: "+ImNodeList.size());
			System.out.println("Fg Node Size: "+FgNodeList.size());
			System.out.println("Lp Node Size: "+LpNodeList.size());
			System.out.println("Ml Node Size: "+MlNodeList.size());
			System.out.println("Ground Truth Node Size: "+groudTruthList.size());
			
			File file=new File(metricInputFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			for(int i=0;i<groudTruthList.size();i++){
				String nodeIndex=groudTruthList.get(i).getKey();
				String nodeFalId=groudTruthList.get(i).getValue();
				String ImNodeId=ImNodeList.get(i).getKey();
				String ImNodeCluster=ImNodeList.get(i).getValue();
//				String FgNodeId=FgNodeList.get(i).getKey();
//				String FgNodeCluster=FgNodeList.get(i).getValue();
//				String LpNodeId=LpNodeList.get(i).getKey();
//				String LpNodeCluster=LpNodeList.get(i).getValue();
//				String MlNodeId=MlNodeList.get(i).getKey();
//				String MlNodeCluster=MlNodeList.get(i).getValue();
				
				line=nodeIndex+","+nodeFalId+","+ImNodeCluster+"\n";
				bWriter.write(line);
//				if(nodeIndex.equals(ImNodeId)&&nodeIndex.equals(FgNodeId)
//						&&nodeIndex.equals(LpNodeId)&&nodeIndex.equals(MlNodeId)){
//					line=nodeIndex+","+nodeFalId+","+ImNodeCluster+","+FgNodeCluster+
//							","+LpNodeCluster+","+MlNodeCluster+"\n";
//					bWriter.write(line);
//					
//				}
//				else{
//					System.err.println("Wrong Node index:"+ nodeIndex);
//				}
			}
			
			bWriter.close();
			fWriter.close();
//			for(int i=0;i<ImNodeList.size();i++){
//				String key=ImNodeList.get(i).getKey();
//				String value=ImNodeList.get(i).getValue();
//				System.out.println(key+": "+value);
//			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
