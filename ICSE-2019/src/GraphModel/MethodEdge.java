package GraphModel;

public class MethodEdge {
	public MethodNode srcNode=new MethodNode();
	public MethodNode dstNode=new MethodNode();
	
	
	public MethodEdge(){
		
	}

	public String getSignatureString(){
		String result="";
		result = srcNode.getSignatureString()+"--->"+dstNode.getSignatureString();
		return result;
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		int hashCode=getSignatureString().hashCode();
		return hashCode;
	}

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		MethodEdge dstEdge=(MethodEdge) obj;
		if(this.getSignatureString().equals(dstEdge.getSignatureString())){
			return true;
		}
		return false;
	}
	
	
}
