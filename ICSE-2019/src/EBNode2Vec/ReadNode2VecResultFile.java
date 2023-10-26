package EBNode2Vec;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.DoubleToLongFunction;


public class ReadNode2VecResultFile {
	public String resultFilePath="";
	public int nodeNum=0;
	public int vecLength=0;
	public Map<String, NodeVec> nodeMap=new HashMap<>();  // 節點map
	
	public ArrayList<Double> graphVector=new ArrayList<>();
	
	
	public ReadNode2VecResultFile(){
		
	}
	
	public ReadNode2VecResultFile(String filePath){
		this.resultFilePath=filePath;
		readFile();
	}
	
	public void readFile(){
		try {
			File file=new File(resultFilePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			line=bReader.readLine();
			if(line.length()>0){
				String str[]=line.split(" ");
				if(str.length==2){
					String nodeNum=str[0].trim();
					String vecLength=str[1].trim();
					this.nodeNum=Integer.valueOf(nodeNum);
					this.vecLength=Integer.valueOf(vecLength);
				}
			}
			while((line=bReader.readLine())!=null){
				String str[]=line.split(" ");
				if(str.length>0){
					NodeVec nodeVec=new NodeVec();
					nodeVec.vecLength=vecLength;
					int size=str.length;
					String nodeId=str[0].trim();
					nodeVec.nodeId=Integer.valueOf(nodeId);
					for(int i=1;i<size;i++){
						double dimValue=Double.valueOf(str[i]);
						nodeVec.vector.add(dimValue);
					}
				//	nodeVec.L2Norm();
					nodeMap.put(nodeId, nodeVec);
				}
			}
			
			bReader.close();
			fReader.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void iniGraphVector(){
		try {
			for(int i=0;i<vecLength;i++){
			double tmp=0.0D;
			Iterator<String> nodeIterator=nodeMap.keySet().iterator();
			while(nodeIterator.hasNext()){
				String nodeId=nodeIterator.next();
				NodeVec nodeVec=nodeMap.get(nodeId);
				tmp += nodeVec.vector.get(i);
			}
			graphVector.add(tmp);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public void showFileInfo(){
		try {
			System.out.println("Node Num: "+ nodeNum);
			System.out.println("Vector Length: "+vecLength);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
