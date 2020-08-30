package com.codingchallenge.cams.getattendance.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;



public class GetAttendanceRepository {
	public List<Map<String, String>> getAttenList(String month,String year,long studentId) {
		List<Map<String, String>> atten = null;
		Connection con = null;
		String getValues = "SELECT attendance, DAY(date_of_attendance) FROM attendance where student_id=? AND YEAR(date_of_attendance) =? AND MONTH(date_of_attendance) = ?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			PreparedStatement smt = con.prepareStatement(getValues);
			smt.setLong(1, studentId);
			smt.setString(2, year);
			smt.setString(3, month);
			ResultSet rs = smt.executeQuery();
			atten = new ArrayList<Map<String, String>>();
			while (rs.next()) {
				Map<String, String> row = new HashMap<String, String>();
				row.put("attendance", rs.getString("attendance"));
				row.put("day", rs.getString(" DAY(date_of_attendance)"));
				//Long day=Long.valueOf( rs.getString(" DAY(date_of_attendance)"));
				
				atten.add(row);
			}
			
			
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return atten;
	}

	

}
