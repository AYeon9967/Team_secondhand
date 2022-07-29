package secondh.vo;

public class Goods {
	private int goodsnum; // sql 자동생성(auto_increment)
	private String category;
	private String goodstitle;
	private String writer;
	private String uploaddate;
	private String goodsprice;
	private String goodscontents;
	private String goodsstate;
	private String goodsimg;
	
	public Goods() { }
	
	@Override
	public String toString() {
		return "Goods [goodsnum=" + goodsnum + ", category=" + category + ", goodstitle=" + goodstitle + ", writer=" + writer + ", uploaddate=" + uploaddate + 
				", goodsprice=" + goodsprice + ", goodscontents=" + goodscontents + ", goodsstate=" + goodsstate + ", goodsimg=" + goodsimg + "]";
	}

	public int getGoodsnum() {
		return goodsnum;
	}

	public void setGoodsnum(int goodsnum) {
		this.goodsnum = goodsnum;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getGoodstitle() {
		return goodstitle;
	}

	public void setGoodstitle(String goodstitle) {
		this.goodstitle = goodstitle;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getUploaddate() {
		return uploaddate;
	}

	public void setUploaddate(String uploaddate) {
		this.uploaddate = uploaddate;
	}

	public String getGoodsprice() {
		return goodsprice;
	}

	public void setGoodsprice(String goodsprice) {
		this.goodsprice = goodsprice;
	}

	public String getGoodscontents() {
		return goodscontents;
	}

	public void setGoodscontents(String goodscontents) {
		this.goodscontents = goodscontents;
	}

	public String getGoodsstate() {
		return goodsstate;
	}

	public void setGoodsstate(String goodsstate) {
		this.goodsstate = goodsstate;
	}

	public String getGoodsimg() {
		return goodsimg;
	}

	public void setGoodsimg(String goodsimg) {
		this.goodsimg = goodsimg;
	}
	
}
