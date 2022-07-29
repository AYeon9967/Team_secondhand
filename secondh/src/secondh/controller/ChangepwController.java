package secondh.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import secondh.service.UserService;

public class ChangepwController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String previouspw = request.getParameter("previouspw");
		String userpwchange = request.getParameter("userpwchange");
		
		UserService s = UserService.getInstance();
		s.changepw(previouspw, userpwchange);
		
		HttpUtil.forward(request, response, "changepwResult.jsp");
	}

}
