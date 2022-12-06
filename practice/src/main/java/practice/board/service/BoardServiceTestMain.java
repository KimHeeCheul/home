package practice.board.service;

public class BoardServiceTestMain {

	public static void main(String[] args)throws Exception {
		BoardService boardService=new BoardService();
		Board board=boardService.selectByNo(4);
		System.out.println(board);

	}

}
