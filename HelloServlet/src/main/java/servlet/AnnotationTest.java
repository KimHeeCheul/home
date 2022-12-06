package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/annotation.do")
public class AnnotationTest extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter show=response.getWriter();
		show.println("<!DOCTYPE html>");
		show.println("<html>");
		show.println("<head>");
		show.println("<title>       </title>");
		show.println("<meta charset='UTF-8'>");
		show.println("</head>");
		show.println("<body>");
		show.println("<h1>test1</h1>");
		show.println("<h1>test2</h1>");
		show.println("<h1>test3</h1>");
		show.println("</body>");
		show.println("</html>");
	}
	
}
