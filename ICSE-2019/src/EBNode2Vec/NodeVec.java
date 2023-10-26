package EBNode2Vec;

import java.util.ArrayList;

public class NodeVec {
	public int nodeId=-1;
	public int vecLength=0;
	public ArrayList<Double> vector=new ArrayList<>();
	
	public NodeVec(){
		
	}
	
	public void showInfo(){
		System.out.println("Node Id: "+nodeId);
		String result="";
		for(int i=0;i<vector.size();i++){
			result += vector.get(i).toString()+" ";
		}
		System.out.println(result);
	}
	
	public void L2Norm(){
		try {
			double t=0.0D;
			for(int i=0;i<vector.size();i++){
				t += vector.get(i) * vector.get(i);
			}
			t=Math.sqrt(t);
			ArrayList<Double> tmpList=new ArrayList<>();
			for(int i=0;i<vector.size(); i++){
				double tmp=vector.get(i)/t;
				tmpList.add(tmp);
			}
			
			vector.clear();
			for(int i=0;i<tmpList.size();i++){
				vector.add(tmpList.get(i));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
