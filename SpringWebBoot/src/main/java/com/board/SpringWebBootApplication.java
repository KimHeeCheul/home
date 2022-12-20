package com.board;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class SpringWebBootApplication {

	public static void main(String[] args) throws Exception {
		ConfigurableApplicationContext context=SpringApplication.run(SpringWebBootApplication.class, args);
		BoardService boardService=(BoardService)context.getBean("boardService");
		System.out.println(boardService);
	}

}
