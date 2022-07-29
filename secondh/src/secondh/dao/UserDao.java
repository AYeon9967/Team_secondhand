package secondh.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import secondh.vo.User;

public class UserDao {
	
	private static UserDao dao = new UserDao();
	
	private UserDao() {}
	
	public static UserDao getInstance() { return dao; }

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
	
	public void join(User user) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into user values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0);");
			pstmt.setString(1, user.getUserid());
			pstmt.setString(2, user.getUserpw());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getNickname());
			pstmt.setString(5, user.getBirth());
			pstmt.setString(6, user.getGender());
			pstmt.setString(7, user.getBank());
			pstmt.setString(8, user.getAccount());
			pstmt.setString(9, user.getAddress());
			pstmt.setString(10, user.getPhone());
			pstmt.setString(11, user.getEmail());
			pstmt.executeUpdate();
		} catch(Exception e) { System.out.println("Join error " + e);
		} finally { close(conn, pstmt, null); }
	}

	public boolean login(String id, String pwd) {
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from user where userid=? and userpw=?;");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = true;
			} else {
				result = false;
			}
		} catch(Exception e) { System.out.println("Login error " + e);
		} finally { close(conn, pstmt, rs); }	
		
		return result;
	}

	public User userSearch(String sessionID) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from user where userid=?;");
			pstmt.setString(1, sessionID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				user = new User();
				user.setUserid(rs.getString(1));
				user.setUserpw(rs.getString(2));
				user.setName(rs.getString(3));
				user.setNickname(rs.getString(4));
				user.setBirth(rs.getString(5));
				user.setGender(rs.getString(6));
				user.setBank(rs.getString(7));
				user.setAccount(rs.getString(8));
				user.setAddress(rs.getString(9));
				user.setPhone(rs.getString(10));
				user.setEmail(rs.getString(11));
				user.setPaymoney(rs.getInt(12));
			}
		} catch(Exception e) { System.out.println("uSearch error " + e);
		} finally { close(conn, pstmt, rs); }
		return user;
	}

	public int idcheck(String userid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 1; // 아이디 사용 가능 = 1
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from user where userid=?;");
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 0; // 결과가 있으면 아이디 사용 불가 = 0
			}
		} catch(Exception e) { System.out.println("idCheck error " + e);
		} finally { close(conn, pstmt, rs); }
		
		return result;
	}
	
	public String useridSearch(String name, String gender, String email, String phone) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String findid = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select userid from user where name=? and gender=? and phone=? and email=?;");
			pstmt.setString(1, name);
			pstmt.setString(2, gender);
			pstmt.setString(3, phone);
			pstmt.setString(4, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				findid = rs.getString(1);
			}
		} catch(Exception e) { System.out.print("uidSearch error " + e);
		} finally { close(conn, pstmt, rs); }
		
		return findid;
	}
	
	public String userpwSearch(String userid, String name, String gender, String email, String phone) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String findpw = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select userpw from user where userid=? and name=? and gender=? and phone=? and email=?;");
			pstmt.setString(1, userid);
			pstmt.setString(2, name);
			pstmt.setString(3, gender);
			pstmt.setString(4, phone);
			pstmt.setString(5, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				findpw = rs.getString(1);
			}
		} catch(Exception e) { System.out.print("upwSearch error " + e);
		} finally { close(conn, pstmt, rs); }
		
		return findpw;
	}

	public void changepw(String previouspw, String userpwchange) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("update user set userpw=? where userpw=?;");
			pstmt.setString(1, userpwchange);
			pstmt.setString(2, previouspw);
			pstmt.executeUpdate();
		} catch(Exception e) { System.out.print("changepw error " + e);
		} finally { close(conn, pstmt, null); }		
	}
	
	public void userupdate(User user) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("update user set userpw=?, name=?, nickname=?, email=?, bank=?, account=?, phone=?, address=?, birth=? where userid=?;");
			pstmt.setString(10, user.getUserid());
			pstmt.setString(1, user.getUserpw());
			pstmt.setString(2, user.getName());
			pstmt.setString(3, user.getNickname());
			pstmt.setString(4, user.getEmail());
			pstmt.setString(5, user.getBank());
			pstmt.setString(6, user.getAccount());
			pstmt.setString(7, user.getPhone());
			pstmt.setString(8, user.getAddress());
			pstmt.setString(9, user.getBirth());
			pstmt.executeUpdate();
		} catch(Exception e) { System.out.println("uUpdate error " + e);
		} finally { close(conn, pstmt, null); }	
	}
}
