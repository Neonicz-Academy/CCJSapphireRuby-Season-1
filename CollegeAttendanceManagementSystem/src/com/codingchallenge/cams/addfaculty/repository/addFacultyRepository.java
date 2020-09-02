package com.codingchallenge.cams.addfaculty.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class addFacultyRepository {
	public boolean addFaculty(String name,String department, Long id, String email) {
		Connection con = null;
		boolean successfull = false;
		String addValues="INSERT INTO faculty_table (faculty_id, faculty_name, faculty_dept, faculty_email) VALUES (?,?,?,?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			PreparedStatement smt = con.prepareStatement(addValues);
			smt.setLong(1, id);
			smt.setString(2, name );
			smt.setString(3, department);
			smt.setString(4, email);
            boolean inserted = smt.execute();
			
			System.out.println("inserted");
			if (smt.getUpdateCount() > 0) 
				System.out.println("Data insert successful");
			else {
				System.out.println("Data insert failed");
				successfull = true;
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
		return successfull;
	}


}
