package com.board.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.Board;
import com.board.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	public BoardController() {
		// TODO Auto-generated constructor stub
		System.out.println("BoardController 생성자");
	}
	//리스트
	@RequestMapping(value = "/board_list")
	public String boardList(HttpServletRequest request) throws Exception{
		System.out.println("board list!!!");
		List<Board> boardList=boardService.selectAll();
		request.setAttribute("boardList", boardList);
		return "forward:/WEB-INF/views/board_list.jsp";
	}
	//선택
	
	
	//수정
	@RequestMapping(value = "/board_update")
	public String boardUpdate(HttpServletRequest request) throws Exception{
		System.out.println("board update!!!");
		int boardUpdate = boardService.update(new Board(3, "test", "test", "test", "test"));
		request.setAttribute("boardUpdate", boardUpdate);
		return "forward:/WEB-INF/views/board_update.jsp";
	}
	
}
