package secondh.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import secondh.service.UserService;

public class LoginController implements Controller{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("userid");
		String pwd = request.getParameter("userpw");
		
		UserService s = UserService.getInstance();
		boolean result = s.login(id, pwd);
		
		String path = null;
		if(result) {
			HttpSession session = request.getSession();
			session.setAttribute("sessionID", id); // 세션 id로 생성
			path = "/main.jsp";
		} else {
			request.setAttribute("loginerror", "아이디 혹은 비밀번호가 존재하지 않습니다.");
			path = "/login.jsp";
		}
		HttpUtil.forward(request, response, path);

	}
	
}
