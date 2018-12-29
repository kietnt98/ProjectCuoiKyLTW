package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import BEAN.Test;
import Model.DBConnection;

public class LoadListExamDAO {
	public static List<Test> ListTest(){
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		List<Test> t= new ArrayList<>();
		String sql = "exec ListTest";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				Integer testid= rs.getInt("test_id");
				String datetimestart = rs.getString("datetimestart");
				String datetimesend = rs.getString("datetimeend");
				Integer time = rs.getInt("time");
				Integer number_question = rs.getInt("number_question");
				String testtypename = rs.getString("testtype_name");
				String subjectname = rs.getString("subject_name");
				Test test= new Test(testid, datetimestart, datetimesend, time, number_question, testtypename, subjectname);
				t.add(test);
			}
			rs.close();
	        ptmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return t;
	}
}
