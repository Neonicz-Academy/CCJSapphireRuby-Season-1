package com.codingchallenge.cams.admin.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class adminRepository {
	public List<Map<String, String>> getFacultyList() {
		List<Map<String, String>> faculty = null;
		Connection con = null;
		String getValues = "SELECT * FROM faculty_table";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			PreparedStatement smt = con.prepareStatement(getValues);
			ResultSet rs = smt.executeQuery();
			faculty = new ArrayList<Map<String, String>>();
			while (rs.next()) {
				Map<String, String> row = new HashMap<String, String>();
				row.put("faculty_id", rs.getString("faculty_id"));
				row.put("faculty_name", rs.getString("faculty_name"));
				row.put("faculty_dept", rs.getString("faculty_dept"));
				row.put("faculty_email", rs.getString("faculty_email"));
				faculty.add(row);
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
		return faculty;
	}
	
	public Boolean delFaculty(long facultyId) {
		Connection con = null;
	
		boolean successfull = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			String addValues = "DELETE FROM faculty_table WHERE (faculty_id = ?)";
			PreparedStatement smt = con.prepareStatement(addValues);
			
			smt.setLong(1, facultyId);
			
			boolean inserted = smt.execute();
			
			System.out.println("inserted");
			if (smt.getUpdateCount() > 0) 
				System.out.println("Data insert successful");
			else {
				System.out.println("Data insert failed");
				successfull = true;
			}

		} catch (ClassNotFoundException e) {
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
