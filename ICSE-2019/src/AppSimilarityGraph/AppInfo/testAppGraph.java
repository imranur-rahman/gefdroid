package AppSimilarityGraph.AppInfo;

import AppSimilarityGraph.APPGraph;

public class testAppGraph {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		testAppGraph();
	}
	
	public static void testAppGraph(){
		try {
			APPGraph graph=new APPGraph();
			graph.iniGraphEmbedFeature();
			String resultAppGraphFilePath="./file/result/AppGraph-1.gexf";
			graph.storeGraph2Gexf(resultAppGraphFilePath);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
