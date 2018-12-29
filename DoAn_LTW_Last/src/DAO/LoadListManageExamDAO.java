package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Account;
import Model.DBConnection;

public class LoadListManageExamDAO {
	public static List<Account> ListManageExam(){
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		List<Account> acc= new ArrayList<>();
		String sql = "select * from users where role_id=3";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				int userid= rs.getInt("user_id");
				String uname = rs.getString("username");
				String password = rs.getString("password");
				String fullname = rs.getString("fullname");
				String birthday = rs.getString("birthday");
				String country = rs.getString("country");
				String phone = rs.getString("phone");
				String img = rs.getString("img");
				int roleid= rs.getInt("role_id");
				int classid= rs.getInt("class_id");
				Account ac= new Account(userid, uname, password, fullname, birthday, country, phone, img, roleid, classid);
				System.out.println(""+uname+ " " +password);
				acc.add(ac);
			}
			
			rs.close();
	        ptmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return acc;
	}
}
