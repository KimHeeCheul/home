package com.board.controller;



import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	//전체
	@RequestMapping(value = "/board_main")
	public String board_All(HttpServletRequest request) throws Exception {
		System.out.println(">>>main<<<");
		List<Board> boardList = boardService.selectAll();
		request.setAttribute("boardList", boardList);
		return "board_main";
	}
	//리스트 //선택시 이동
	@RequestMapping(value = "/board_list")
	public String boardList(HttpServletRequest request) throws Exception{
		System.out.println("board list!!!");
		List<Board> boardList=boardService.selectAll();
		//Board board = boardService.selectByNo(b_no);
		request.setAttribute("boardList", boardList);
		//request.setAttribute("board", board);
		return "board_list";
	}
	
	//디테일
	@RequestMapping(value = "/board_detail")
	public String boardDetail(@RequestParam int b_no,HttpServletRequest request ) throws Exception{
		System.out.println("board detail!!!");
		Board board=boardService.selectByNo(b_no);
		request.setAttribute("board", board);
		return "board_detail";
	}
	
	//삭제 주소창 입력시
	@RequestMapping(value = "/board_delete_action",method = RequestMethod.GET)
	public String boardDeleteGet(@RequestParam int b_no)throws Exception {
		System.out.println("Get 방식");
		int deleteCount = boardService.b_delete(b_no);
		return "redirect:board_main";
	}
	
	//삭제
	@RequestMapping(value = "/board_delete_action", method = RequestMethod.POST)
	public String boardDelete(@RequestParam int b_no, RedirectAttributes de) throws Exception{
		System.out.println(">>board delete(v_v)");
		String forwardPath="";
		try {
			System.out.println("삭제성공");
			int deleteCount = boardService.b_delete(b_no);
			de.addFlashAttribute("b_no",b_no);
			forwardPath = "redirect:board_main";
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("삭제실패");
			forwardPath = "board_main";
		}
		return forwardPath;
	}
	
	//작성페이지
	@RequestMapping(value = "/board_insert_form")
	public String boardInsert() throws Exception{
		System.out.println(">>insert_(!_!)");
		return "board_insert_form";
	}
	
	//작성
	@RequestMapping(value="/board_insert_action",method = RequestMethod.POST)
	public String board_insert_action(@ModelAttribute Board board) throws Exception {
		String forwardPath="";
		try {
			int insertCount = boardService.insert(board);
			forwardPath = "redirect:board_main";
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath = "board_insert_form";
		}
		return forwardPath;
	}
	
	
	//수정페이지
	@RequestMapping(value = "/board_update")
	public String boardUpdate() throws Exception{
		System.out.println("board update!!!");
		return "board_update";
	}
	
	//수정
	@RequestMapping(value = "/board_update_action")
	public String boardUpdate_action(@ModelAttribute Board board) throws Exception {
		String forwardPath = "";
		try {
			int updateCount = boardService.update(board);
			forwardPath = "redirect:board_main";
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath = "board_update";
		}
		return forwardPath;
	}
	
}
