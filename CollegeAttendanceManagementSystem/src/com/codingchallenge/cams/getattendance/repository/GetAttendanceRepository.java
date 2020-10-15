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
	public List<Integer> getAttenList(String month,String year,long studentId) {
		List<Integer> atten = null;
		Connection con = null;
		String getValues = "SELECT DAY(date_of_attendance) as day_of_attendance FROM attendance where student_id=? AND YEAR(date_of_attendance) =? AND MONTH(date_of_attendance) = ?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			PreparedStatement smt = con.prepareStatement(getValues);
			smt.setLong(1, studentId);
			smt.setString(2, year);
			smt.setString(3, month);
			ResultSet rs = smt.executeQuery();
			atten = new ArrayList<Integer>();
			while (rs.next()) {
				/*
				 * Map<String, String> row = new HashMap<String, String>();
				 * row.put("attendance", rs.getString("attendance")); row.put("day",
				 * rs.getString("day_of_attendance"));
				 */
				//Long day=Long.valueOf( rs.getString(" DAY(date_of_attendance)"));
				
				atten.add(rs.getInt("day_of_attendance"));
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

	public List<Map<String,String>>getStudent(long studentId){
			List<Map<String, String>> students = null;
			Connection con = null;
			String getValues = "SELECT student_id,student_name,student_email FROM student_table WHERE student_id=?";
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/cams.db";
				con = DriverManager.getConnection(url, "root", "assassinscreed");
				PreparedStatement smt = con.prepareStatement(getValues);
				smt.setLong(1, studentId);
				ResultSet rs = smt.executeQuery();
				students = new ArrayList<Map<String, String>>();
				while (rs.next()) {
					Map<String, String> row = new HashMap<String, String>();
					row.put("studentId", rs.getString("student_id"));
					row.put("studentName", rs.getString("student_name"));
					row.put("email", rs.getString("student_email"));
					students.add(row);
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
			return students;
		}
}
