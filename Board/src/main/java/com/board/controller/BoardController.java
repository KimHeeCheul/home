package com.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BoardController {

	@RequestMapping("/")
	//@ResponseBody
	public String hello() {
		//return "Hello World";
		
		System.out.println("listForm으로 이동");
		return "redirect:listForm";//listForm으로 리다이렉트
	}
	
	@RequestMapping("/listForm")
	public String listForm() {
		
		return "listForm";
	}
	
	
}
