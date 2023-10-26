package APKData;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;

/*
 *    输入为一个apk文件的绝对路径以及其预设输出路径，调用apktool命令工具，对其进行反编译
 *    
 */
public class APKTool {
	private String inputPathString;
	private String outputPathString;
	public APKTool(String inputPath, String outputPath){
		File file=new File(inputPath);
		try {
			if(file.exists()){
				/*
				 *   apktool 执行命令　　　apktool d input output
				 */
				String cmdString="apktool d "+inputPath+" -o "+outputPath;
				exeCmd(cmdString);
			//	System.out.println(cmdString);
			}
			else {
				System.err.print("Can not find the file: "+ inputPath);
			}
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
	public String getInputPathString() {
		return inputPathString;
	}
	public void setInputPathString(String inputPathString) {
		this.inputPathString = inputPathString;
	}
	public String getOutputPathString() {
		return outputPathString;
	}
	public void setOutputPathString(String outputPathString) {
		this.outputPathString = outputPathString;
	}
	
	
}
