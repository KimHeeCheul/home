package com.itflix.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.itflix.service.JjimService;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itflix"})
public class JjimDaoTestApplication {
	public static void main(String[] args) throws Exception {
		/****************case1********************/
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
				new SpringApplication(JjimDaoTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		//JjimDao jjimDao = context.getBean(JjimDao.class);
		JjimService jjimService = context.getBean(JjimService.class);
		
		
		System.out.println(jjimService.jjimCategoryList("guard1@gmail.com", 1));
		//System.out.println(jjimService.jjimCount("guard1@gmail.com"));
		//System.out.println(jjimService.jjimUser("guard1@gmail.com", 15));
		//System.out.println(jjimDao.jjimList("guard1@gmail.com"));
		//System.out.println("찜넣기>>>"+jjimDao.jjimInsert("guard1@gmail.com", 9));
		//System.out.println("찜넣기>>>"+jjimService.jjimInsert("guard1@gmail.com", 13));
		
	}
}