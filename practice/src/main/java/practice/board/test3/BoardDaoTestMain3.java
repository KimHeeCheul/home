package practice.board.test3;

import java.util.List;

public class BoardDaoTestMain3 {
	public static void main(String[] args) throws Exception {
		
		BoardDao3 boardDao3 = new BoardDao3();
		
		System.out.println(">>1.SelectByNo");
		Board findBoard = boardDao3.selectByNo(6);
		
		if(findBoard != null) {
			System.out.println(findBoard);
		}else {
			System.out.println("X");
		}
		
		System.out.println("<<2.SelectAll");
		List<Board> boardList = boardDao3.selectAll();
		System.out.println(boardList);
		
		System.out.println(">>3.insert");
		try {
			Board insertBoard = new Board(6, "123", "123", "123", "2022/11/22");
			boardDao3.insert(insertBoard);
		}catch (Exception e) {
			System.out.println(">>존재");
		}
		
		System.out.println("<<4.Update");
		Board updateBoard = new Board(5, "1", "1", "1", "2022/11/23");
		boardDao3.update(updateBoard);
		System.out.println(updateBoard);
		
		System.out.println(">>5.Delete");
		boardDao3.delete(3);
	}
}
