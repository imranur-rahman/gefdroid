package Compare.ThirdFeature;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;

public class FalDroidResult {
	public String falDroidResultFile="./file/data/faldroid-result/Im--0.5-train.arff";
	public ArrayList<FalDroidFeature> apkFalFeatureList=new ArrayList<>();
	
	public FalDroidResult(){
		
	}
	
	public FalDroidResult(String resultFilePath){
		try {
			this.falDroidResultFile=resultFilePath;
			iniData();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void iniData(){
		try {
			File file=new File(falDroidResultFile);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.startsWith("@data")){
					while((line=bReader.readLine())!=null){
						FalDroidFeature falDroidFeature=new FalDroidFeature(line);
						apkFalFeatureList.add(falDroidFeature);
					}
					break;
				}
			}
			
			bReader.close();
			fReader.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
