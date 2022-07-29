package secondh.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import secondh.service.UserService;
import secondh.vo.User;

public class MypageController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String sessionID = (String)session.getAttribute("sessionID");
		
		UserService s = UserService.getInstance();
		User user = s.userSearch(sessionID);
		
		// 추후 업로드한 상품, 찜한 상품도 불러와야 함
		
		request.setAttribute("userinfo", user);
		HttpUtil.forward(request, response, "/mypage.jsp");
	}

}
