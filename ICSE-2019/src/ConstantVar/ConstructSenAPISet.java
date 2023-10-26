package ConstantVar;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ConstructSenAPISet {

	public static Set<String> SenAPISet=new HashSet<>();
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String sourcePath="./file/key/Ouput_CatSources_v0_9.txt";
		String sinkPath="./file/key/Ouput_CatSinks_v0_9.txt";
		
		String apiFilePath="./file/key/SenAPISet.txt";
		
		readFile(sourcePath);
		readFile(sinkPath);
		storeSenAPISet2File(apiFilePath);
	}
	
	public static void readFile(String filePath){
		try {
			File file=new File(filePath);
			FileReader fReader=new FileReader(file);
			BufferedReader bReader=new BufferedReader(fReader);
			String line="";
			while((line=bReader.readLine())!=null){
				if(line.startsWith("<") && !line.contains("NO_CATEGORY")){
					// <com.android.internal.telephony.sip.SipPhone: java.lang.String getEsn()> (UNIQUE_IDENTIFIER)
					String regex="\\<(.*?)\\>(.*)";
					Pattern pattern=Pattern.compile(regex);
					Matcher matcher=pattern.matcher(line);
					if(matcher.find()){
						String SenAPIString=matcher.group(1);
						SenAPISet.add(SenAPIString);
					}
				}
			}
			
			bReader.close();
			fReader.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void storeSenAPISet2File(String writeFilePath){
		try {
			File file=new File(writeFilePath);
			FileWriter fWriter=new FileWriter(file);
			BufferedWriter bWriter=new BufferedWriter(fWriter);
			Iterator<String> apiIterator=SenAPISet.iterator();
			while(apiIterator.hasNext()){
				String apiString=apiIterator.next();
				bWriter.write(apiString+"\n");
			}
			bWriter.close();
			fWriter.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	

}
