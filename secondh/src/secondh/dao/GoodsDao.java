package secondh.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import secondh.vo.Goods;
import secondh.vo.User;

public class GoodsDao {
	
	private static GoodsDao dao = new GoodsDao();
	
	private GoodsDao() {}
	
	public static GoodsDao getInstance() { return dao; }
	
	public Connection connect() {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/secondh?characterEncoding-UTF-8&serverTimezone=UTC";
		String id = "root";
		String pwd = "hello1248";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, id, pwd);
		} catch(Exception e) { System.out.println("MDAO: connect " + e); }
		return conn;
	}
	
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if(pstmt != null) {
			try { pstmt.close();
			} catch(Exception e) { System.out.println("Pstmt close error " + e); }
		}
		if(conn != null) {
			try { conn.close();
			} catch(Exception e) { System.out.println("Conn close error " + e); }
		}
		if(rs != null) {
			try { rs.close();
			} catch(Exception e) { System.out.println("Rs close error " + e); }
		}
	}
	
	public void upload(Goods goods) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into user(category, goodstitle, writer, goodsprice, goodscontents, goodsimg) values(?, ?, ?, ?, ?, ?);");
			pstmt.setString(1, goods.getCategory());
			pstmt.setString(2, goods.getGoodstitle());
			pstmt.setString(3, goods.getWriter());
			pstmt.setString(4, goods.getGoodsprice());
			pstmt.setString(5, goods.getGoodscontents());
			pstmt.setString(6, goods.getGoodsimg());
			pstmt.executeUpdate();
		} catch(Exception e) { System.out.println("Upload error " + e);
		} finally { close(conn, pstmt, null); }
	}

}
