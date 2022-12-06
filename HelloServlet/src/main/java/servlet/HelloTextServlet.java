package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/text.do")
public class HelloTextServlet extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		
		response.setContentType("text/plain;charset=UTF-8");
		
		PrintWriter show = response.getWriter();
		
		show.println("test1");
		show.println("test2");
		show.println("test3");
		show.println("test4");
		return;
	}
}
