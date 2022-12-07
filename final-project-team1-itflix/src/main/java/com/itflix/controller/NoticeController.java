package com.itflix.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itflix.dto.Notice;
import com.itflix.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	//공지사항 페이지
		@RequestMapping(value = "noticeList")
		public String noticeList(Model model)throws Exception {
			String forwardPath="";

					List<Notice> noticeList = noticeService.selectAll();
					int noticeTotal = noticeService.totalCount();
					model.addAttribute("noticeTotal", noticeTotal);
					model.addAttribute("noticeList", noticeList);
					forwardPath = "noticeList";
			
					
				return forwardPath;
		}
		
		//공지사항 상세페이지
		@RequestMapping(value = "/noticeDetail", params = "n_no")
		public String noticeDetail(@RequestParam int n_no, Model model)throws Exception {
			Notice notice=noticeService.selectByNo(n_no);
			model.addAttribute("notice",notice);
			return "noticeDetail";
		}
		
		//공지사항 작성 페이지 
		@RequestMapping(value = "noticeWrite")
		public String noticeWrite(HttpServletRequest request, HttpSession session) throws Exception {
			String forwardPath="";
			String user_Info = (String)session.getAttribute("login_email");
			try {
				System.out.println(user_Info);
			String admin ="admin@gmail.com";
			int result=user_Info.compareTo(admin);
			if(result==0) {
				//0이면 관리자 계정
				request.setAttribute("msg", "환영합니다 관리자님");
				return "noticeWrite";
			}else if(result==1) {
				
				request.setAttribute("msg", "관리자 계정이 아닙니다.");
				request.setAttribute("url", "main");
				return "alert";
			}
			}catch (Exception e) {
				e.printStackTrace();
				forwardPath="404";
			}
			
			return forwardPath;
			}
		
		//공지사항 작성 action
		@RequestMapping(value = "noticeWrite_action")
		public String noticeWrite_action(HttpServletRequest request, Model model) throws Exception {
			String msg = "";
			String n_title=request.getParameter("n_title");
			String n_content=request.getParameter("n_content");
			try {
				if(n_title.equals("")) {
					msg = "제목을 입력하세요.";
					request.setAttribute("msg", msg);
					request.setAttribute("url", "noticeWrite");
					return "alert";
				}else if(n_content.equals("")) {
					msg = "내용을 입력하세요.";
					request.setAttribute("msg", msg);
					request.setAttribute("url", "noticeWrite");
					return "alert";					
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("오류체크");
			}
			Notice notice=new Notice(0, null, n_title, n_content, 0, 0, 0);
			int result=noticeService.insertNotice(notice);
			List<Notice>noticeList = noticeService.selectAll();
			model.addAttribute("noticeList", noticeList);
			System.out.println(result);
			return "noticeList";
		}
		
		//공지사항 수정 페이지
		@RequestMapping(value = "noticeModify")
		public String noticeModify(HttpServletRequest request,Model model) throws Exception {
			String n_no=request.getParameter("n_no");
			Notice notice=noticeService.selectByNo(Integer.parseInt(n_no));
			model.addAttribute("notice", notice);
			return "noticeModify";
		}
		
		//공지사항 수정 action
		@RequestMapping(value = "noticeModify_action")
		public String noticeModify_action(HttpServletRequest request) throws Exception {
			String n_no= request.getParameter("n_no");
			String n_title= request.getParameter("n_title");
			String n_content= request.getParameter("n_content");
			Notice notice =new Notice(Integer.parseInt(n_no), null,n_title, n_content, 0,0,0);
			noticeService.updateNotice(notice);
			request.setAttribute("notice", notice);
			return "noticeDetail";
			
		}
		
		

		//공지사항 키워드 페이지 
		@RequestMapping(value = "searchNotice")
		public String  searchNotice(Model model,HttpServletRequest request) throws Exception {
			String keyword=request.getParameter("keyword");
			List<Notice> noticeList=noticeService.selectByTitle(keyword);
			int noticeTotal = noticeService.totalKeywordCount(keyword);
			model.addAttribute("noticeList", noticeList);
			model.addAttribute("noticeTotal", noticeTotal);
			return "searchNotice";
		}
		
		//공지사항 삭제 action
		@RequestMapping(value = "deleteNotice_action")
		public String deleteNotice_action(@RequestParam int n_no, Model model) throws Exception {
			int result=noticeService.deleteNotice(n_no);
			System.out.println(result);
			List<Notice>noticeList=noticeService.selectAll();
			model.addAttribute("noticeList", noticeList);
			return "noticeList";
		}
}
