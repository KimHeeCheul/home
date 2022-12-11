package com.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	public BoardController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value="/board_main")
	public String Board_main() {
		return "board_main";
	}
	
}
