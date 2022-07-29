package secondh.service;

import secondh.dao.UserDao;
import secondh.vo.User;

public class UserService {

	private static UserService service = new UserService();
	private UserService() {		}
	
	private UserDao dao = UserDao.getInstance();
	
	public static UserService getInstance() {
		return service;
	}
	
	public void join(User user) {
		dao.join(user);
	}

	public boolean login(String id, String pwd) {
		return dao.login(id, pwd);
	}

	public User userSearch(String sessionID) {
		return dao.userSearch(sessionID);
	}

	public int idcheck(String userid) {
		return dao.idcheck(userid);
	}

	public String useridSearch(String name, String gender, String email, String phone) {
		return dao.useridSearch(name, gender, email, phone);
	}

	public String userpwSearch(String userid, String name, String gender, String email, String phone) {
		return dao.userpwSearch(userid, name, gender, email, phone);
	}

	public void changepw(String previouspw, String userpwchange) {
		dao.changepw(previouspw, userpwchange);
	}

	public void userupdate(User user) {
		dao.userupdate(user);
	}


	
}
