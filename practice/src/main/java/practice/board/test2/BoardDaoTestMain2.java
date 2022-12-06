package practice.board.test2;

public class BoardDaoTestMain2 {
	
	public static void main(String[] args) throws Exception {
		BoardDao2 boardDao2 = new BoardDao2();
		
		boardDao2.selectAll();
		//boardDao2.selectByNo(6);
		//boardDao2.insert(1, "테스트", "스", "트스테", "2022/11/19");
		//boardDao2.update(5, "테스트", "김철수", "테스트", "2022/11/19");
		boardDao2.delete(7);
	}
}
