package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BEAN.Question;
import Model.DBConnection;

public class InsertQuestionDAO {
	public static Boolean InsertQuestion(Question q) {
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		boolean rowAdd= false; 
		String sql = "EXEC ThemCauHoi ?,?,?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, q.getNumber());
			ptmt.setString(2, q.getContentquestion());
			ptmt.setString(3, q.getCorrectoption());
		    rowAdd = ptmt.executeUpdate() > 0;
		    ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rowAdd;
	}
	
	public static Boolean InsertOption(Question q) {
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		boolean rowAdd= false; 
		String sql = "EXEC ThemLuaChon ?,?,?,?,?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, q.getQuestionid());
			ptmt.setString(2, q.getOptionA());
			ptmt.setString(3, q.getOptionB());
			ptmt.setString(4, q.getOptionC());
			ptmt.setString(5, q.getOptionD());
			
		    rowAdd = ptmt.executeUpdate() > 0;
		    ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rowAdd;
	}
	
	public static Boolean InsertQuesttionOfTest(int testid, int questionid) {
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		boolean rowAdd= false; 
		String sql = "EXEC ThemCauHoiDeThi ?,?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, testid);
			ptmt.setInt(2, questionid);
		    rowAdd = ptmt.executeUpdate() > 0;
		    ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rowAdd;
	}
	
	public static int GetQuestionid(String contentquestion)
	{
		Connection conn = DBConnection.CreateConnection();
		int id=-1;
		PreparedStatement ptmt = null;
		String sql = "Select question_id From question where contentquestion = ?" ;
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, contentquestion);
			ResultSet result = ptmt.executeQuery();
			 if (result.next()) {
				 id = result.getInt("question_id");	
		        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return id;
	}
}
