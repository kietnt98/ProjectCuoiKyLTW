package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BEAN.Test;
import Model.DBConnection;

public class TestDAO {
	public static Test GetTest(int testid) {
		Connection conn = DBConnection.CreateConnection();
		Test existtest=null;
		PreparedStatement ptmt = null;
		String sql = "Select test_id, datetimestart, datetimeend, time, number_question From test where test_id = ?" ;
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, testid);
			ResultSet result = ptmt.executeQuery();
			 if (result.next()) {
				 Integer id = result.getInt("test_id");
					String datetimestart= result.getString("datetimestart");
					String datetimeend= result.getString("datetimeend");
					Integer time = result.getInt("time");
					Integer numberquestion= result.getInt("number_question");
					existtest = new Test(id, datetimestart, datetimeend, time, numberquestion);
		        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return existtest;
	}
	
}
