package com.itflix.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.itflix.service.NoticeService;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itflix"})
public class NoticeDaoTestApplication {
	public static void main(String[] args) throws Exception {
		
		
		SpringApplication application = 
				new SpringApplication(NoticeDaoTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		NoticeService noticeService = context.getBean(NoticeService.class);
		   //System.out.println(noticeService);
		   //System.out.println(noticeService.selectAll());
		   //System.out.println(noticeService.totalCount());
			//System.out.println(noticeService.noticeOne());
			//System.out.println(noticeService.selectByNo(2));
		   //System.out.println(noticeService.selectByTitle("긴급"));
		   //System.out.println(noticeService.insertNotice(new Notice(0,null, "newTitle2", "newContent2", 0, 0, 0)));
		   //System.out.println(noticeService.updateNotice(new Notice(10, null, "change", "change", 0, 0, 0)));
		   //System.out.println(noticeService.deleteNotice(11));
			//System.out.println(noticeService.selectNoticeList(1));
			System.out.println(noticeService.totalKeywordCount("신규"));
		 /**************************테스트 완료 *****************************************/
		
	}
}