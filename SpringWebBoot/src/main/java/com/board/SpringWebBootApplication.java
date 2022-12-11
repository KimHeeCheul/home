package com.board;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class SpringWebBootApplication {

	public static void main(String[] args) throws Exception {
		ConfigurableApplicationContext context=SpringApplication.run(SpringWebBootApplication.class, args);
		BoardService boardService = (BoardService)context.getBean("boardService");
		System.out.println(boardService);
		System.out.println(boardService.selectAll());
		//System.out.println(boardService.insert(new Board(13, "", "", "", "")));
		System.out.println(boardService.delete(9));
		System.out.println(boardService.update(new Board(12, "test", "test", "test", "2022/11/29")));
		System.out.println(boardService.selectByNo(12));
	}

}
