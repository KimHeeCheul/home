package com.board;

import java.util.List;

public class BoardServiceTestMain {

	public static void main(String[] args)throws Exception {
		BoardService boardService=new BoardService();
		Board board=boardService.selectByNo(4);
		System.out.println(board);

		
		int insertBoard = boardService.insert(new Board(9, "", "", "", ""));
		System.out.println(insertBoard);
		
		
		int updateBoard = boardService.update(new Board(0, "test", "test", "test", "test"));
		System.out.println(updateBoard);
		
		int deleteBoard = boardService.delete(0);
		System.out.println(deleteBoard);
		
		List<Board> boardAll = boardService.selectAll();
		System.out.println(boardAll);
		
		
		
	}

}
