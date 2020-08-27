package com.codingchallenge.cams.addfaculty.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Map;

public class AddFacultyForm {
	public boolean someclass() {
		Connection con = null;
		//long studentId=1001;
	
		boolean successfull = false;
		/*
		 * //Map<String,String> studentDetails= getDetailsByStudentId(studentId);
		 * System.out.println("student details------"+ studentDetails.size()); Long
		 * batchId=Long.valueOf(studentDetails.get("batchId")); Long
		 * facultyId=Long.valueOf(studentDetails.get("facultyId"));
		 */
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			
			
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
		return successfull;
	}

}
