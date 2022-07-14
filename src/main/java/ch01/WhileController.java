package ch01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/WhileController")
public class WhileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		int number=Integer.parseInt(request.getParameter("number"));
		int num=Integer.parseInt(request.getParameter("num"));
		int result=1;
		for(int i=1; i<=num; i++) {
			result *= number;
		}
		System.out.println("결과 : " + result);//톰캣 콘솔상에 출력
		request.setAttribute("result", result);//Object 타입값을 가짐
		
		//forward방식으로 화면처리
		//화면이while_result.jsp"로 넘어가지만 url주소는 그대로 유지됨
		RequestDispatcher rd=request.getRequestDispatcher("/ch01/while_result.jsp");
		rd.forward(request, response);
	}


	//post 방식 호출
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
