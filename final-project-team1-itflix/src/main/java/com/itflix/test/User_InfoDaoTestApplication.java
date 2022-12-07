package com.itflix.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.itflix.service.User_InfoService;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itflix"})
public class User_InfoDaoTestApplication {

	public static void main(String[] args) throws Exception{
		/*
		 * application.properties에 설정추가
		 *    spring.main.web-application-type=none
		 */
		/*
		ConfigurableApplicationContext context = 
				SpringApplication.run(GuestDaoSpringBootTestApplication.class, args);
		GuestDao guestDao = (GuestDao) context.getBean(GuestDao.class);
		System.out.println(guestDao.selectAll());
		System.out.println(guestDao.selectByNo(881));
		*/
		
		SpringApplication application = 
				new SpringApplication(User_InfoDaoTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		User_InfoService user_InfoService = context.getBean(User_InfoService.class);
		 System.out.println(user_InfoService);
		 
		 
		 //System.out.println("로그인체크>>" + user_InfoService.login("guard1@gmail.com", "123"));
		 //System.out.println("로그인체크>>" + user_InfoService.login("guard1@gmail.com", "555"));
		 //System.out.println("로그인체크>>" + user_InfoService.login("guard100@gmail.com", "123"));
		 
		 System.out.println("이메일존재여부>>>" + user_InfoService.existedUser("guard1@gmail.com"));

	}

}
