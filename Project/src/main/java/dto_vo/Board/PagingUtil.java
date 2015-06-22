package dto_vo.Board;

public class PagingUtil {
    private int start;     // 한 페이징 시작 
    private int end;     // 한 페이징 끝
    private int finalPage;
    private int currentPage;
    
    public PagingUtil(int currentPage, int totalCount, int pageSize, int blockSize) {
        
        
//    	int endLevel = (totalCount/pageSize/blockSize)+1;
    	this.currentPage = currentPage;
    	int currentLevel;
    	if(currentPage%blockSize !=0){
    		
    		currentLevel = (currentPage / blockSize) +1;
    	
    	}else{
    		
    		currentLevel = (currentPage / blockSize);
    		
    	}
    	
    	
    	
    	
    	
    	
    	this.finalPage = (totalCount/pageSize)+1;
    	
    	
    	this.start = ((currentLevel-1)*blockSize)+1;
	 	this.end = currentLevel*blockSize;
    	
	 	if(end>=finalPage){
	 		end = finalPage;
	 	}
    	
    	/*
    	 	level = 2
    	 	
    	 	start = ((level-1)*blockSize)+1;
    	 	end = level*blockSize;
    	 	
    	 
    	*/
    	
    	
    	
    	
    	//  이전 [1][2][3][4][5]  다음
    	//  blockSize = 5
    	//	currentPage= 1~5
    	//	level = 1
    	
    	//	이전 [6][7][8][9][10]  다음
    	//  blockSize = 5
    	//	Page = 6 ~ 10
    	//	level = 2
    	
    	//  이전 [1][2][3][4][5][6][7][8][9][10]  다음
    	//  blockSize = 10
    	//	currentPage= 1~10
    	//
    	
    	/*
    	 
    	  	totalcount = 121
    	  	pageSize = 10
    	  	
    	  	
    	  	
    	  	level = 1~3
    	  	totalCount / pageSize = 121/10 = 12.1
    	  	totalCount / pageSize  / blockSize = 121/10/5 = 12.1/5 = 2.42
    	  	
    	  	(totalCount / pageSize  / blockSize) +1 = 3
    	  	
    	  	levelstart = 1
    	  	levelend = 3
    	  	
    	 	
    	 	level = 1 [1] [2] [3] [4] [5]
    	 	level = 2 [6] [7] [8] [9] [10]
    	 	level = 3 [11][12][13]
    	 
    	 
    	 
    	 
    	 	현재 Page로 현재 레벨을 구하는 식은???
    	 	
    	 	currentPage / blockSize
    	 	
    	 	3/ 5 = 0.6
    	 	
    	 	8 / 5 = 1.6
    	 	
    	 	(currentPage / blockSize) +1
    	 	
    	 	3/ 5 = 0.6 +1 = 1
    	 	
    	 	8 / 5 = 1.6 + 1 = 2
    	 	
    	 	
    	 */
    	
    		
    		
    	
        
    }

	public int getStart() {
		return start;
	}

	public int getEnd() {
		return end;
	}

	public int getFinalPage() {
		return finalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}





    

}
