package Compare.ThirdFeature;

import java.util.ArrayList;

public class FalDroidFeature {
	//public String apkFilePath="";
	public String falName="";
	public String apkName="";
	public ArrayList<Double> FalVector=new ArrayList<>();
	
	public FalDroidFeature(){
		
	}
	
	public FalDroidFeature(String line){
		try {
			String str[]=line.split(",");
			for(int i=0;i<str.length-2;i++){
				FalVector.add(Double.valueOf(str[i]));
			}
			falName=str[str.length-2];
			apkName=str[str.length-1];
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
}
