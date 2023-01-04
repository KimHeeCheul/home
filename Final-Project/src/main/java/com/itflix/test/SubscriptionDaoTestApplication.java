package com.itflix.test;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.itflix.dao.SubscriptionDao;
import com.itflix.dto.Subscription;
import com.itflix.dto.Ticket;
import com.itflix.dto.User_Info;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itflix"})
public class SubscriptionDaoTestApplication {

	public static void main(String[] args) throws Exception {
		SpringApplication application = 
				new SpringApplication(ReviewServiceTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		SubscriptionDao subscriptionDao = context.getBean(SubscriptionDao.class);
		 System.out.println(subscriptionDao);
		 //전체 구독자 리스트
		 //System.out.println("전체 구독자 리스트"+subscriptionDao.selectListAll());
		 // 구독 시작 날짜 찾기
		 //System.out.println("구독 시작 날짜 찾기"+subscriptionDao.selectByStDate("guard1@gmail.com"));
		 // 구독 마지막 날짜 찾기
		 //System.out.println("구독 마지막 날짜 찾기"+subscriptionDao.selectByEndDate("guard1@gmail.com"));
		 // 구독자 단일 찾기
		 //System.out.println("구독자 단일 찾기"+subscriptionDao.selectByNo("guard1@gmail.com"));
		 //구독권 업데이트
		 //System.out.println("update"+subscriptionDao.updateSubscription(null, null, "스레드", 1234, 1, "guard4@gmail.com"));
		 //구독권 연장
		 System.out.println(">>>>>>"+subscriptionDao.updateEndDate(null, null, "스레드", 1234, 1, "guard4@gmail.com"));
		 //구독권 구매자 찾기
		 //System.out.println(">>>>>>>>"+subscriptionDao.selectBuyTicket("guard1@gmail.com"));
		 //System.out.println("insert>>>"+subscriptionDao.insertSubscription(0, null, null, "김희철", 4444, 1, "guard4@gmail.com"));
		 /*↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑테스트 완↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑*/
		 //구독권 삭제
		 //System.out.println(subscriptionDao.deleteSubscription("guard3@gmail.com"));
		 //구독권 추가
		 //insert into Subscription values(SUBSCRIPTION_S_NO_SEQ.nextval,'2022-07-29','2022-09-28','김성준',1111,1,'guard1@gmail.com');
		 
		 
		 
		 
		 
		 
	}

}
