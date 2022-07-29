package secondh.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import secondh.service.UserService;
import secondh.vo.User;

public class UserUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		User user = new User();
		
		HttpSession session = request.getSession();
		user.setUserid((String)session.getAttribute("sessionID"));
		user.setUserpw(request.getParameter("userpw"));
		user.setName(request.getParameter("name"));
		user.setNickname(request.getParameter("nickname"));
		user.setEmail(request.getParameter("email"));
		user.setBank(request.getParameter("bank"));
		user.setAccount(request.getParameter("account"));
		user.setPhone(request.getParameter("phone"));
		user.setAddress(request.getParameter("address"));
		user.setBirth(request.getParameter("year") + "." + request.getParameter("month") + "." + request.getParameter("day"));

		UserService s = UserService.getInstance();
		s.userupdate(user);

		HttpUtil.forward(request, response, "/mypage.do");
		
	}

}
