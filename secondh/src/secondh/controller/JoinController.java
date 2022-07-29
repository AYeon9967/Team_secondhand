package secondh.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import secondh.service.UserService;
import secondh.vo.User;

public class JoinController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("EUC-KR");
		
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String nickname = request.getParameter("nickname");
		String bank = request.getParameter("bank");
		String account = request.getParameter("account");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String birth = request.getParameter("year") + "." + request.getParameter("month") + "." + request.getParameter("day");
		
		String path = null;
		
		UserService s = UserService.getInstance();
		
		User user = new User(userid, userpw, name, nickname, birth, gender, bank, account, address, phone, email);
		s.join(user);
		path = "/main.jsp"; // 회원가입 성공하면 갈 페이지
		
		HttpUtil.forward(request, response, path);
	}
	
}
