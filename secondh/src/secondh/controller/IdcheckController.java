package secondh.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import secondh.service.UserService;

public class IdcheckController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserService s = UserService.getInstance();
		String userid = request.getParameter("id");
		
		int check = s.idcheck(userid);
		
		request.setAttribute("idcheck", check);
		
		HttpUtil.forward(request, response, "/idcheck.jsp");
	}

}
