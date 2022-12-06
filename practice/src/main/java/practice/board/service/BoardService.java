package practice.board.service;

public class BoardService {
	private BoardDao boardDao;
	public BoardService() {
		boardDao=new BoardDao();
	}
	public Board selectByNo(int n) throws Exception{
	  return  boardDao.selectByNo(n);
	}
	

}
