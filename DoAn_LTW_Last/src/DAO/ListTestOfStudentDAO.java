package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import BEAN.Test;
import Model.DBConnection;

public class ListTestOfStudentDAO {
	public static List<Test> ListTestSV(String username)
	{
		int ktra=0;
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		PreparedStatement ptmt1 = null;
		List<Test> test= new ArrayList<>();
		String sql = "EXEC KTraTest ?";
		String sql1="EXEC ListTestSV ?";
		try {
		
		ptmt = conn.prepareStatement(sql);
		ptmt.setString(1, username);
		ResultSet rs = ptmt.executeQuery();
		if(rs.next())
		{
			ktra = rs.getInt(1);
		}
		if(ktra!=0)
		{
			ptmt1 = conn.prepareStatement(sql1);
			ptmt1.setString(1, username);
			ResultSet result = ptmt1.executeQuery();
			while(result.next()) {
				int testid= result.getInt("test_id");
				System.out.println(""+testid);
				String datetimestart = result.getString("datetimestart");
				String datetimeend = result.getString("datetimeend");
				int time= result.getInt("time");
				String testtypename = result.getString("testtype_name");
				String subjectname = result.getString("subject_name");
				Test t= new Test(testid,datetimestart, datetimeend, time, testtypename, subjectname);
				test.add(t);
			}
		}
		}
		 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return test;
	}
}
