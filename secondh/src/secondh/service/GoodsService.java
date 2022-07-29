package secondh.service;

import secondh.dao.GoodsDao;
import secondh.vo.Goods;

public class GoodsService {

	private static GoodsService service = new GoodsService();
	private GoodsService() {	}
	
	private GoodsDao dao = GoodsDao.getInstance();
	
	public static GoodsService getInstance() {
		return service;
	}
	
	public void upload(Goods goods) {
		dao.upload(goods);
	}
	
}
