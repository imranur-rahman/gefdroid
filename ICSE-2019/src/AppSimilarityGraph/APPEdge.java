package AppSimilarityGraph;

public class APPEdge {
	public APPNode srcNode=new APPNode();
	public APPNode dstNode=new APPNode();
	public int weight=0;
	public String signatureString="";
	
	public APPEdge(){
		
	}
	
	public String getUniqueString(){
		String result="";
		String srcName=srcNode.apkName;
		String dstName=dstNode.apkName;
		if(srcName.hashCode()<=dstName.hashCode()){
			result = srcName+" --- "+dstName;
		}
		else{
			result = dstName+" --- "+srcName;
		}
		signatureString=result;
		return result;
	}

	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		if(signatureString.length()>0){
			// do nothing
		}
		else{
			getUniqueString();
		}
		return signatureString.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		
		APPEdge dstEdge=(APPEdge) obj;
		if(this.getUniqueString().equals(dstEdge.getUniqueString())){
			return true;
		}
		return false;
	}
	
	
	
}
