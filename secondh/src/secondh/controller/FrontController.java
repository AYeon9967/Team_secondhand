package secondh.controller;

import java.io.IOException;

import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet {
	HashMap<String, Controller> map = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException{
		map = new HashMap<String, Controller>();
		// 회원 관리
		map.put("/join.do", new JoinController());
		map.put("/login.do", new LoginController());
		map.put("/logout.do", new LogoutController());
		map.put("/idcheck.do", new IdcheckController());
		map.put("/findid.do", new FindidController());
		map.put("/findpw.do", new FindpwController());
		map.put("/changepw.do", new ChangepwController());
		map.put("/mypage.do", new MypageController());
		map.put("/gouserupdate.do", new GoUserUpdateController()); // 회원정보 수정 페이지로 가는 컨트롤러
		map.put("/userupdate.do", new UserUpdateController()); // 실제 회원정보 수정 컨트롤러 
		
		// 게시물 관리
		map.put("/goodsupload.do", new UploadController());
		map.put("/goodssearch.do", new SearchController());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String path = uri.substring(contextPath.length());
		
		Controller cont = map.get(path);
		cont.execute(req, resp);
	}
}
