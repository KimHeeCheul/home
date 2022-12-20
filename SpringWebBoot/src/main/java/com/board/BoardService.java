package com.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardService {
	@Autowired
	private BoardDao boardDao;
	public BoardService() {
		
	}
	public Board selectByNo(int b_n) throws Exception{
	  return boardDao.selectByNo(b_n);
	}
	
	public List<Board> selectAll()throws Exception{
		return boardDao.selectAll();
	}

	public int insert(Board board) throws Exception{
		return boardDao.insert(board);
	}
	
	public int update(Board board) throws Exception{
		return boardDao.update(board);
	}
	
	public int delete(int b_no) throws Exception{
		return boardDao.delete(b_no);
	}
	
	
	
}
