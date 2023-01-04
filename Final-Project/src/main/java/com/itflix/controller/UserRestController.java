package com.itflix.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itflix.dto.Subscription;
import com.itflix.dto.User_Info;
import com.itflix.service.SubscriptonService;
import com.itflix.service.User_InfoService;

import ch.qos.logback.core.joran.conditional.ElseAction;

@RestController
public class UserRestController {

	@Autowired
	private User_InfoService user_InfoService;
	@Autowired
	private SubscriptonService subscriptonService;
	/*로그인*/
	@RequestMapping(value = "rest_user_login_action")
	public Map rest_user_login_action(HttpSession session, @RequestParam String u_email, @RequestParam String u_pass) {
		//System.out.println(u_email);
		//System.out.println(u_pass);
		Map resultMap = new HashMap();
		int code = 0;
		String msg = "";
		List data = new ArrayList();

		try {
			/*  1:성공 
			 * -1:비번 불일치 
			 * -2:email 미존재
			 */
			int result = user_InfoService.login(u_email, u_pass);
			if (result == 1) {
				User_Info loginUser = user_InfoService.selectByEmail(u_email);
				//로그인시 구독권 존재 여부 객체
				Subscription subscription= subscriptonService.selectByEndDate(u_email);
				//오늘 날짜 출력 객체
				Date date = new Date();
				//오늘 날짜 연월일 변환 formatter
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
				//금일 날짜 확인 
				System.out.println(formatter.format(date));
				
				//구독권이 없을 경우
				if(subscription==null){
					session.setAttribute("login_email", loginUser.getU_email());
					session.setAttribute("login_user", loginUser);
					session.setAttribute("subscription", subscription);
				//구독권이 있는 경우 	
				}else if(subscription != null) {
					//구독권 종료일 체크 
					String subString=formatter.format(subscription.getS_end());
					//현재시간과 구독권 종료시간 비교 후 값출력(result2)
					int result2=subString.compareTo(formatter.format(date));
					
					/*구독권 상태 체크 result2
					 * 1 : 구독결제일 남음
					 * 0 : 구독결제일 (당일)
					 * -1: 구독 결제일 지남 
					 */ 
					if(result2 >= 1) {
					// 남음 	
						session.setAttribute("login_email", loginUser.getU_email());
						session.setAttribute("login_user", loginUser);
						session.setAttribute("subscription", subscription);
					}else if(result2==0) {
					// 결제 당일	
						session.setAttribute("login_email", loginUser.getU_email());
						session.setAttribute("login_user", loginUser);
						session.setAttribute("subscription", subscription);
						
					}else if(result2 <= -1) {
					// 결제일 지남	
						subscriptonService.deleteSubscription(loginUser.getU_email());
						session.invalidate();
						Subscription subscription2=subscriptonService.selectByEndDate(loginUser.getU_email());
						session.setAttribute("login_email", loginUser.getU_email());
						session.setAttribute("login_user", loginUser);
						session.setAttribute("subscription", subscription2);
					}
				}
				code=1;
				
				
			} else if (result == -1) {
				code=2;
				msg="비밀번호가 일치하지 않습니다.";
			} else if (result == -2) {
				code=3;
				msg="아이디가 존재하지 않습니다.";
			}
		} catch (Exception e) {
			e.printStackTrace();
			code=4;
			msg="잘못 된 로그인 입니다.";
		}
		
		resultMap.put("code", code);
		resultMap.put("msg", msg);
		resultMap.put("data", data);
			
		return resultMap;
	}

}//
