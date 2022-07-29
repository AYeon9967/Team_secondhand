package secondh.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import secondh.service.GoodsService;
import secondh.vo.Goods;


public class UploadController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String sessionID = (String)session.getAttribute("sessionID");
		String saveDirectory = (String)session.getAttribute("saveDirectory");
		//이미지 저장경로 출력
		System.out.println(saveDirectory);
		
		int maxPostSize = 1024 * 1024 * 5;
		String encoding = "UTF-8";
		/*
		MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, new DefaultFileRenamePolicy());
		
		String category = mr.getParameter("category");
		String goodstitle = mr.getParameter("goodstitle");
		String goodsprice = mr.getParameter("goodsprice");
		String goodscontents = mr.getParameter("goodscontents");

		Goods goodsDto = new Goods();
		goodsDto.setCategory(category);
		goodsDto.setGoodstitle(goodstitle);
		goodsDto.setWriter(sessionID);
		goodsDto.setGoodsprice(goodsprice);
		goodsDto.setGoodscontents(goodscontents);
		
		if(mr.getFile("goodsimg") != null) {
			File uploadFile = mr.getFile("goodsimg");
			goodsDto.setGoodsimg(uploadFile.getName());
		}
		
		
		GoodsService s = GoodsService.getInstance();
		s.upload(goodsDto);
		*/
		HttpUtil.forward(request, response, "/main.jsp");
	}

}
