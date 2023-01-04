package com.itflix.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.aspectj.apache.bcel.generic.ReturnaddressType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itflix.controller.interceptor.LoginCheck;
import com.itflix.dto.Category;
import com.itflix.dto.Jjim;
import com.itflix.dto.Movie;
import com.itflix.dto.Review;
import com.itflix.dto.Subscription;
import com.itflix.dto.User_Info;
import com.itflix.service.CategoryService;
import com.itflix.service.JjimService;
import com.itflix.service.ReviewService;
import com.itflix.service.SubscriptonService;
import com.itflix.service.User_InfoService;

@Controller
public class UserController {

	@Autowired
	private User_InfoService user_InfoService;
	@Autowired
	private JjimService jjimService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private SubscriptonService subscriptonService;
	@Autowired
	private CategoryService categoryService;
	
	/* 회원가입 */
	@RequestMapping("CreateUser_action")
	public String CreateUser(HttpServletRequest request) throws Exception {
		String u_email = request.getParameter("u_email");
		String u_pass1 = request.getParameter("u_pass1");
		String u_pass2 = request.getParameter("u_pass2");
		String u_name = request.getParameter("u_name");
		String u_phone = request.getParameter("u_phone");
		String forwardPath = "";
		Boolean resultpass=u_pass1.equalsIgnoreCase(u_pass2);
		try {
			//비밀번호가 같은 경우 
			if(resultpass ==false) {
				request.setAttribute("url", "main");
				request.setAttribute("msg", "비밀번호가 일치하지 않습니다.");
				return "alert";
			}
			//비밀번호가 중복이지 않은 경우
			User_Info checkUser=user_InfoService.selectByNameAndPhone(u_name, u_phone);
				if(checkUser !=null) {
					request.setAttribute("msg", "이미 가입이된 전화번호입니다.");
					request.setAttribute("url", "userSearch");
					return "alert";
				}
			User_Info user = new User_Info(u_email, u_pass1, u_name, u_phone);
			int result2 = user_InfoService.insertUser_Info(user);
				if (result2 == -1) {
					// 중복일 시 -1 반환
					request.setAttribute("msg", "이미 사용 중인 계정입니다.");
					request.setAttribute("url", "userSearch");
					return "alert";
				} else {
					// 회원가입 성공 메세지
					request.setAttribute("msg", "회원가입이 완료되었습니다. 로그인을 해주세요.");
					request.setAttribute("url", "main");
					return "alert";
				}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "redirect:main";
		}
		return forwardPath;
	}

	/* 로그인 */
	@RequestMapping(value = "user_login_action")
	public String user_login_action(HttpServletRequest request, HttpSession session) {
		String u_email = request.getParameter("u_email");
		String u_pass = request.getParameter("u_pass");
		System.out.println(u_email);
		System.out.println(u_pass);
		String forwardPath = "";
		try {
			/*
			 * 1:성공 -1:비번 불일치 -2:email 미존재
			 */
			int result = user_InfoService.login(u_email, u_pass);
			if (result == 1) {
				/*
				 * User_Info loginUser = user_InfoService.selectByEmail(u_email); Subscription
				 * userSubscription=subscriptonService.selectBuyTicket(u_email);
				 * session.setAttribute("login_email", loginUser.getU_email());
				 * session.setAttribute("login_user", loginUser);
				 * session.setAttribute("subscript", userSubscription);
				 * System.out.println(userSubscription); forwardPath = "moviesingle?m_no=27";
				 */
			} else if (result == -1) {
				// request.setAttribute("login_id", u_email);
				// forwardPath = "ssss";
			} else if (result == -2) {
				// request.setAttribute("login_id", u_email);
				// forwardPath = "xxxx";
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "404";
		}
		return forwardPath;
	}

	/* 로그아웃 */
	@RequestMapping("user_logout_action")
	public String user_logout_action(HttpSession session) {
		session.invalidate();
		return "redirect:main";
	}

	// 유저 계정찾기 페이지
	@RequestMapping("userSearch")
	public String userSearch() {
		String forwardPath = "";
		forwardPath = "userSearch";
		return forwardPath;
	}

	// 유저 아이디 찾기 새창
	@RequestMapping(value = "/searchId")
	public String searchId(HttpServletRequest request) throws Exception {
		String forwardPath = "";
		String u_name = request.getParameter("u_name1");
		String u_phone = request.getParameter("u_phone");
		User_Info user_Info = user_InfoService.selectByNameAndPhone(u_name, u_phone);
		System.out.println(user_Info);
		request.setAttribute("user_Info", user_Info);
		forwardPath = "searchId";
		return forwardPath;
	}

	// 유저 비밀번호 찾기 새창
	@RequestMapping(value = "/searchPass")
	public String searchPass(HttpServletRequest request) throws Exception {
		String forwardPath = "";
		String u_name = request.getParameter("u_name2");
		String u_email = request.getParameter("u_email");
		User_Info user_Info = user_InfoService.selectByEmailAndName(u_email, u_name);
		System.out.println(user_Info);
		request.setAttribute("user_Info", user_Info);
		forwardPath = "searchPass";
		return forwardPath;
	}

	// 로그인 세션으로 정보를 채워보자
	@LoginCheck
	@RequestMapping(value = "userModify")
	public String userModify(HttpServletRequest request) throws Exception {
		String forwardPath = "";
		User_Info user_Info = (User_Info) request.getSession().getAttribute("login_user");

		System.out.println(user_Info);
		request.setAttribute("user_Info", user_Info);
		forwardPath = "userModify";

		return forwardPath;
	}

	// 회원 프로필 수정 Action
	@RequestMapping(value = "/update_action", method = RequestMethod.POST)
	public String update_action(HttpServletRequest request, Model model) throws Exception {
		String forwardPath = "";

		String u_email = request.getParameter("u_email");
		String u_name = request.getParameter("u_name");
		// 현재 비밀번호 파라메타. 이 값이 현재 계정의 비밀번호와 일치해야함.
		String u_pass = request.getParameter("userPass");
		String u_phone = request.getParameter("u_phone");
		// 새로운 비밀번호 파라메타. 두 값이 일치해야함.
		String u_newpass1 = request.getParameter("userPass1");
		String u_newpass2 = request.getParameter("userPass2");

		User_Info user_Info = user_InfoService.selectByEmail(u_email);
		System.out.println(user_Info);
		// 계정 비밀번호와 현재 비밀번호칸에 입력한 비밀번호가 같은지 확인.
		try {
			if (user_Info.getU_pass().equals(u_pass)) {
				// 같으면 새로운 비밀번호칸에 입력한 정보가 일치하는지 확인하자.
				if (u_newpass1.equals(u_newpass2)) {
					// 여기까지 통과했으면 바꾸자.
					user_InfoService.updateUser_Info(new User_Info(u_email, u_newpass1, u_name, u_phone));
				} else {
					request.setAttribute("msg", "새로운 비밀번호가 일치하지 않습니다.");
					request.setAttribute("url", "userModify");
					return "alert";
				}
			} else {
				request.setAttribute("msg", "현재 비밀번호와 일치하지 않습니다.");
				request.setAttribute("url", "userModify");
				return "alert";
			}

			model.addAttribute("user_Info", user_Info);
			forwardPath = "userprofile";

			return forwardPath;
		} catch (Exception e) {
			request.setAttribute("msg", "정보를 입력하세요.");
			request.setAttribute("url", "userModify");
			return "alert";
		}

	}

	// 회원의 내가 쓴 영화리뷰 페이지
	@LoginCheck
	@RequestMapping(value = "userrate")
	public String userrate(@RequestParam String u_email, Model model) throws Exception {
		String forwardPath = "";
		List<Review> myReview = reviewService.selectWroteReview(u_email);
		User_Info user_Info = user_InfoService.selectByEmail(u_email);
		int reviewCount = reviewService.reviewCountByEmail(u_email);
		model.addAttribute("myReview", myReview);
		model.addAttribute("user_Info", user_Info);
		model.addAttribute("reviewCount", reviewCount);
		System.out.println(myReview);
		forwardPath = "userrate";

		return forwardPath;
	}

	// 내가 쓴 리뷰 삭제
	@LoginCheck
	@RequestMapping(value = "/userrate_review_delete_action", method = RequestMethod.POST)
	public String userrateReviewDelete_action(HttpServletRequest request, Model model) {
		String forwardPath = "";
		try {
			String u_email = request.getParameter("u_email");
			String r_no = request.getParameter("r_no");
			reviewService.deleteReview(Integer.parseInt(r_no));
			List<Review> myReview = reviewService.selectWroteReview(u_email);
			model.addAttribute("myReview", myReview);
			forwardPath = "redirect:userrate?u_email=" + u_email;
			System.out.println("삭제성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("삭제 실패");
		}
		System.out.println("실행확인");
		return forwardPath;
	}

	/* 찜리스트 */
	@LoginCheck
	@RequestMapping("userfavoritegrid")
	public String jjimList(HttpServletRequest request, @RequestParam String u_email) {
		String forwardPath = "";
		try {
			List<Jjim> jjimList = jjimService.jjimList(u_email);
			int jjimCount = jjimService.jjimCount(u_email);
			request.setAttribute("jjimList", jjimList);
			request.setAttribute("jjimCount", jjimCount);
			// System.out.println("보여죠>>"+jjimList);
			// System.out.println("나오나?>>"+jjimCount);
			forwardPath = "userfavoritegrid";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}

	// 유저의 카테고리별 찜 리스트
	@LoginCheck
	@RequestMapping("userfavoriteCategorygrid")
	public String jjimCategoryList(HttpServletRequest request, String cg_no) throws Exception {
		String forwardPath = "";
		try {
			User_Info user_Info = (User_Info) request.getSession().getAttribute("login_user");
			String u_email = user_Info.getU_email();
			List<Jjim> jjimList = jjimService.jjimCategoryList(u_email, Integer.parseInt(cg_no));
			int jjimCount = jjimService.jjimCount(u_email);
			int categoryCount = categoryService.countJjim(u_email, Integer.parseInt(cg_no));
			request.setAttribute("jjimList", jjimList);
			request.setAttribute("jjimCount", jjimCount);
			request.setAttribute("categoryCount", categoryCount);
			forwardPath = "userfavoriteCategorygrid";
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return forwardPath;
	}

	/* 찜하기 */
	@RequestMapping(value = "/jjim_insert_action", method = RequestMethod.POST)
	public String jjim_insert_action(HttpServletRequest request) {
		String forwardPath = "";
		String msg = "";
		try {
			String u_email = request.getParameter("u_email");
			String m_no = request.getParameter("m_no");
			System.out.println(m_no);
			int jjimInsert = jjimService.jjimInsert(u_email, Integer.parseInt(m_no));
			request.setAttribute("jjimInsert", jjimInsert);
			System.out.println(jjimInsert);
			forwardPath = "redirect:moviesingle?m_no=" + m_no;
			msg = "성공";
			System.out.println(msg);

		} catch (Exception e) {
			e.printStackTrace();
			msg = "실패";
			System.out.println(msg);
		}
		return forwardPath;
	}

	/* 찜 취소 하기 */
	@RequestMapping(value = "/jjim_delete_action", method = RequestMethod.POST)
	public String jjim_delete_action(HttpServletRequest request) {
		String forwardPath = "";
		String msg = "";
		try {
			String u_email = request.getParameter("u_email");
			String m_no = request.getParameter("m_no");
			System.out.println(m_no);
			int jjimDelete = jjimService.jjimDelete(u_email, Integer.parseInt(m_no));
			request.setAttribute("jjimDelete", jjimDelete);
			System.out.println(jjimDelete);
			forwardPath = "redirect:moviesingle?m_no=" + m_no;
			msg = "성공";
			System.out.println(msg);
		} catch (Exception e) {
			e.printStackTrace();
			msg = "실패";
			System.out.println(msg);
		}
		return forwardPath;
	}

	/* 회원탈퇴하기 */
	@LoginCheck
	@RequestMapping(value = "/removeUser")
	public String removeUser(HttpSession session , HttpServletRequest request) {
		String forwardPath = "";
		User_Info user_Info = (User_Info) session.getAttribute("login_user");
		try {
			user_InfoService.removeUser(user_Info.getU_email());
			session.invalidate();
			request.setAttribute("msg", "탈퇴성공");
			request.setAttribute("url", "main");
			return "alert";
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "userprofile";
		}
		return forwardPath;
	}

}//