package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Question;
import Model.DBConnection;;

public class DetailDAO {
	public static List<Question> ListQuestion(Integer test_id){
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		List<Question> question= new ArrayList<>();
		String sql = "exec XemListCauHoiTheoDe ?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, test_id);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				Integer number= rs.getInt("number");
				String contentquestion = rs.getString("contentquestion");
				String optionA = rs.getString("optionnameA");
				String optionB = rs.getString("optionnameB");
				String optionC = rs.getString("optionnameC");
				String optionD = rs.getString("optionnameD");
				String correctoption = rs.getString("correctoption");
				Question q= new Question(number, contentquestion, optionA, optionB, optionC, optionD, correctoption);
				question.add(q);
			}
			rs.close();
	        ptmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return question;
	}
}
