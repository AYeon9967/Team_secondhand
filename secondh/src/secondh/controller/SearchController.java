package secondh.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SearchController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String goodsname = request.getParameter("goodsname");
		
		HttpSession session = request.getSession();
		session.setAttribute("goodsname", goodsname);
		
		HttpUtil.forward(request, response, ".jsp"); // 검색창으로 이동 bbslist.jsp 참고
	}

}
