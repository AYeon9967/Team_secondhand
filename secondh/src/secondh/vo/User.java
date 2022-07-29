package secondh.vo;

public class User {
	
	private String userid;
	private String userpw;
	private String name;
	private String nickname;
	private String birth;
	private String gender;
	private String bank;
	private String account;
	private String address;
	private String phone;
	private String email;
	private int paymoney;

	public User() {	}

	public User(String userid, String userpw, String name, String nickname, String birth, String gender, String bank, String account, String address, String phone, String email) {
		this.userid = userid;
		this.userpw = userpw;
		this.name = name;
		this.nickname = nickname;
		this.birth = birth;
		this.gender = gender;
		this.bank = bank;
		this.account = account;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.paymoney = 0; // 기본값 0
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPaymoney() {
		return paymoney;
	}

	public void setPaymoney(int paymoney) {
		this.paymoney = paymoney;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}
		
}