package BEAN;

public class Account {
	private int userid;
	private String username;
	private String pass;
	private String fullname;
	private String birthday;
	private String country;
	private String phone;
	private String image;
	private int roleid;
	private int classid;
	private int subjectid;
	
	public Account() {}
	
	public Account(int id, String user, String pass, String name, String birthday, String country,
			String phone, String img, int roleid, int classid) {
		this.userid=id;
		this.username= user;
		this.pass= pass;
		this.fullname= name;
		this.birthday= birthday;
		this.country= country;
		this.phone= phone;
		this.image= img;
		this.roleid= roleid;
		this.classid= classid;
		
		
	}
	public Account(int id, String user, String name, String birthday, String country,
			String phone, String img, int classid) {
		this.userid=id;
		this.username= user;
		this.fullname= name;
		this.birthday= birthday;
		this.country= country;
		this.phone= phone;
		this.image= img;
		this.classid= classid;
	}
	public Account(String user, String pass, String name, String birthday, String country,
			String phone, String img, int roleid, int classid) {
		this.username= user;
		this.pass= pass;
		this.fullname= name;
		this.birthday= birthday;
		this.country= country;
		this.phone= phone;
		this.image= img;
		this.roleid= roleid;
		this.classid= classid;
	}
	
	
	public Account(int id) {
		
		this.userid=id;
	}
	
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public int getClassid() {
		return classid;
	}

	public void setClassid(int classid) {
		this.classid = classid;
	}

	public int getSubjectid() {
		return subjectid;
	}

	public void setSubjectid(int subjectid) {
		this.subjectid = subjectid;
	}
}
