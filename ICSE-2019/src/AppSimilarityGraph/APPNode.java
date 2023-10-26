package AppSimilarityGraph;

public class APPNode {
	public String apkName="";
	public String falName="";
	
	public APPNode(){
		
	}
	
	public APPNode(String apkName){
		this.apkName=apkName;
		if(apkName.contains("-")){
			String str[]=apkName.split("-");
			falName=str[0].trim();
		}
	}
	
}
