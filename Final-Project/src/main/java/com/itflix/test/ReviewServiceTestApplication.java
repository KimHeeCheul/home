package com.itflix.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;


import com.itflix.service.ReviewService;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itflix"})
public class ReviewServiceTestApplication {
	public static void main(String[] args) throws Exception {
		
		
		SpringApplication application = 
				new SpringApplication(ReviewServiceTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		ReviewService reviewService = context.getBean(ReviewService.class);
		 System.out.println(reviewService);
		 //System.out.println(reviewService.selectAll());
		 //System.out.println(reviewService.selectByNo(3));
		 //System.out.println(reviewService.deleteReview(11));
		 //System.out.println("check"+reviewService.selectWroteReview("guard2@gmail.com"));
		 //System.out.println("check2"+reviewService.selectLatest(6));
		 System.out.println("check3"+reviewService.updateReview("수정은 이렇게", "드디어 ?", 1, 130));
		 //System.out.println(reviewService.insertReview(0, "우리 팀원들 화이팅!", "다 할 수 있어!", 100, null, 0, 0, 0, 23, "guard4@gmail.com"));
		 //System.out.println(reviewService.reviewCount(1));
		 //System.out.println(reviewService.reviewCountByEmail("guard1@gmail.com"));
		 /*↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑테스트완↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑*/
		 //System.out.println(reviewService.insertReview2(new Review(0, "1", "2", 0, null, 0, 0, 0, new Movie(4, null, null, null, null, 0, null, null, 0, 0, 0, null, null, null, null), null, new User_Info("guard4@gmail.com", null, null, null))));
		 
	}
}