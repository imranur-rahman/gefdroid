package Util;

import java.util.ArrayList;

import javax.sql.rowset.CachedRowSet;

public class VectorSim {
	public double similarity=-10.0D;
	
	public VectorSim(){
		
	}
	
	public double euDistance(ArrayList<Double> srcList, ArrayList<Double> dstList){
		double result=0.0D;
		try {
			int srcSize=srcList.size();
			int dstSize=dstList.size();
			if(srcSize!=dstSize){
				return -10000.0D;
			}
			else{
				result =0.0D;
				for(int i=0;i<srcSize;i++){
					double cha=srcList.get(i)-dstList.get(i);
					cha=Math.abs(cha);
					cha = cha * cha;
					result += cha;
				}
				result = Math.sqrt(result);
				
				result = 1.0D/(1.0D+result);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return result;
	}
	
	public double cosineSim(ArrayList<Double> srcList, ArrayList<Double> dstList){
		double result=-100.0D;
		try {
			int srcSize=srcList.size();
			int dstSize=dstList.size();
			if(srcSize!=dstSize){
				return result;
			}
			double fenzi=0.0D;
			for(int i=0;i<srcSize;i++){
				fenzi += srcList.get(i)*dstList.get(i);
			}
			double fenmu=0.0D;
			double srcMu=0.0D;    double dstMu=0.0D;
			for(int i=0;i<srcSize;i++){
				srcMu += srcList.get(i)*srcList.get(i);
				dstMu += dstList.get(i)*dstList.get(i);
			}
			srcMu=Math.sqrt(srcMu);
			dstMu=Math.sqrt(dstMu);
			fenmu = srcMu * dstMu;
			if(fenmu>0.0D){
				result = fenzi/fenmu;
				this.similarity=result;
			}
			else{
				return result;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
}
