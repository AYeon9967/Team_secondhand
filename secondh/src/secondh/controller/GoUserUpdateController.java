package secondh.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import secondh.service.UserService;
import secondh.vo.User;

public class GoUserUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String sessionID = (String)session.getAttribute("sessionID");
		
		UserService s = UserService.getInstance();
		User user = s.userSearch(sessionID);
		
		request.setAttribute("userinfo", user);
		HttpUtil.forward(request, response, "/updateuserinfo.jsp");
	}

}
