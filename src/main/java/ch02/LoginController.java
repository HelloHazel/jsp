package ch02;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;


@WebServlet("/ch02_servlet/*")//공통URI값
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(request.getRequestURL());
		System.out.println(request.getRequestURI());
		String uri = request.getRequestURI();
		//문자열.indexOf("찾을내용") : 찾을내용(특정문자열)이 앞에서부터 처음 발견되는
		//인덱스를 반환, 만약 찾지 못했을 경우 -1을 리턴함. ex) HelloJava
		System.out.println(uri.indexOf("login.do"));//값 체크
		System.out.println(uri.indexOf("logout.do"));
		if(uri.indexOf("login.do") != -1) {//ch02_servlet/login.do 로 요청이 오면
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			System.out.println(userid);
			System.out.println(passwd);
			MemberDAO dao=new MemberDAO();
			String name=dao.loginCheck(userid, passwd);//로그인 체크
			String message="";
			String page="";//이동할 페이지 주소 준비
			if(name==null) {//로그인 실패
				message="아이디 또는 비밀번호가 일치하지 않습니다.";
				message=URLEncoder.encode(message, "utf-8");
				page="/ch02/sessionTestForm.jsp?message="+message;
			}else {//로그인 성공
				message=name+"님 환영합니다.";
				HttpSession session=request.getSession();//서블릿에서는 세션객체생성을 해야함
				session.setAttribute("userid", userid);//세션에 저장
				session.setAttribute("message", message);
				page="/ch02/session_success.jsp";
			}
			System.out.println(message);
			response.sendRedirect(request.getContextPath()+page);
		}else if(uri.indexOf("logout.do") != -1) {//ch02_servlet/logout.do 값으로 요청이오면
			HttpSession session=request.getSession();
			session.invalidate();//세션 초기화
			//주소창에는 한글,특수문자를 넘길 수 없으므로 인코딩을 해야 함.
			//URLEncoder.encode("인코딩할 문자열", "언어셋")
			String message=URLEncoder.encode("로그아웃되었습니다.","utf-8");
			response.sendRedirect(request.getContextPath()
					+"/ch02/sessionTestForm.jsp?message="+message);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}