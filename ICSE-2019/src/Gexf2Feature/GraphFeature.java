package Gexf2Feature;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import Util.MapSort;

/*
 *    一個圖的固定feature對象
 */
public class GraphFeature {
	public Map<String, Double> APIPairSimMap=new HashMap<>();
	public Set<String> APISet=new HashSet<>();
	
	
	public GraphFeature(){
		
	}
	
	/*
	 *   通過讀取ferature file文件構建GraphFeature對象
	 */
	public GraphFeature(String gFeatureFilePath){
		try {
			File file=new File(gFeatureFilePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.contains(" : ")){
					String str[]=line.split(" : ");
					String APIPairString=str[0].trim();
					Double value=Double.valueOf(str[1].trim());
					APIPairSimMap.put(APIPairString, value);
					
					String tmp[]=str[0].split("---");
					APISet.add(tmp[0].trim());
					APISet.add(tmp[1].trim());
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
	 * 存儲圖特徵信息
	 */
	public void storeGraphFeatureFile(String gFeatureFilePath){
		try {
			File file=new File(gFeatureFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			String line="";
			
			MapSort<String, Double> mapSort=new MapSort<>();
			List<Map.Entry<String, Double>> APIPairList=new ArrayList<>();
			APIPairList=mapSort.sortMapByValue(APIPairSimMap);
			for(int i=0;i<APIPairList.size();i++){
				String key=APIPairList.get(i).getKey();
				double value=APIPairList.get(i).getValue();
				line=key+" : "+value;
				bWriter.write(line+"\n");
			}
			
			bWriter.close();
			fWriter.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
