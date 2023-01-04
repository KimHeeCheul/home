package com.itflix.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.itflix.dao.PreferDao;


@SpringBootApplication
@ComponentScan(basePackages = {"com.itflix"})
public class PreferDaoTestApplication {
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
				new SpringApplication(PreferDaoTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		PreferDao preferDao = context.getBean(PreferDao.class);
		System.out.println(preferDao);

		//System.out.println("선호카테고리조회>>>"+preferDao.selecCgByEmail("guard1@gmail.com"));	
		//System.out.println("선호카테고리해제>>>"+preferDao.preferDelete("guard1@gmail.com",3));	
		//System.out.println("선호카테고리선택>>>"+preferDao.preferInsert("guard1@gmail.com",3));	
		//System.out.println("선호카테고리무비리스트>>>"+preferDao.selectPreferCgMovieList("guard1@gmail.com",3));
		
		System.out.println("선호카테고리무비리스트>>>"+preferDao.selectPreferCgMovieList222("guard1@gmail.com",6));
		
			

	}
}