package GraphModel;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/*
 *    方法節點類
 *    一個方法包含　包名：函數名（參數）返回值　
 */
public class MethodNode { 
	
	public String packageName="";
	public String returnValue="";
	public String methodName="";
	public ArrayList<String> arguList=new ArrayList<>();
	public String signatureString="";
	
	public Set<String> childNodeSigatureSet=new HashSet<>();
	
	public MethodNode(){
		
	}
	
	/*
	 *    基於函數的統一標誌構建　methodNode對象
	 */
	public MethodNode(String line){
		try {
			/*
			 *  String line="com.google.gson.internal.$Gson$Types: java.lang.reflect.Type[] "
					+ "getMapKeyAndValueTypes(java.lang.reflect.Type,java.lang.Class)";
			 */
			
			if(line.length()>0 && line.contains("(") && line.contains("")){
				String regex="(.*?): (.*?)\\((.*?)\\)(.*)";
				Pattern pattern=Pattern.compile(regex);
				Matcher matcher=pattern.matcher(line);
				if(matcher.find()){
					String findPackName=matcher.group(1);
					
					String findMethodName=matcher.group(2);
					String findArguListString=matcher.group(3);
					String findReturnValue=matcher.group(4);
					
					packageName=findPackName;
					returnValue=findReturnValue;
					methodName=findMethodName;
					
					if(findArguListString.contains(",")){
						//   多參數
						String str[]=findArguListString.split(",");
						for(int i=0;i<str.length;i++){
							arguList.add(str[i].trim());
						}
					}
					else{
						// 　　單參數
						arguList.add(findArguListString.trim());
					}	
					
					signatureString=getSignatureString();
				}
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	/*
	 *   得到參數列表字符串標識
	 */
	public String getArguListString(){
		String result="";
		if(arguList.size()>0){
			for(int i=0;i<arguList.size();i++){
				result += arguList.get(i)+",";
			}
			result = result.substring(0,result.length()-1);
		}
		return result;
	}
	/*
	 *   得到該節點的signature標識
	 */
	public String getSignatureString(){
		String result="";
		if(methodName.length()>0){
			result = packageName+": "+methodName+"("
						+ getArguListString()+")"+returnValue;
		}
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
		MethodNode dstNode=(MethodNode) obj;
		if(this.getSignatureString().equals(dstNode.getArguListString())){
			return true;
		}
		return false;
	}
	
	public String showMethodInfo(){
		String result="";
		result += "PackName: "+packageName+"\n";
		result += "Rerurn Value: "+returnValue+"\n";
		result += "Method Name: "+methodName+"\n";
		result += "Argu: "+getArguListString()+"\n";
		return result;
				
	}
	
	
}
