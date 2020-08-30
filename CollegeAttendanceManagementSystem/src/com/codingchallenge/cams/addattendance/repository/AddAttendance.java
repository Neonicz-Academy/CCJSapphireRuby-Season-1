package com.codingchallenge.cams.addattendance.repository;

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

public class AddAttendance {

	public Boolean addAtten(long studentId,String date,long facultyId) {
		Connection con = null;
		//long studentId=1001;
	
		boolean successfull = false;
		Map<String,String> studentDetails= getDetailsByStudentId(studentId);
		System.out.println("student details------"+ studentDetails.size());
		Long batchId=Long.valueOf(studentDetails.get("batchId"));
		//Long facultyId=Long.valueOf(studentDetails.get("facultyId"));
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			 String sDate1=date;  
			    Date date1=new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);  
			    System.out.println(sDate1+"\t"+date1); 
			    Timestamp t = new Timestamp(date1.getTime());
			    System.out.println("timestamp"+t);
			String addValues = "INSERT INTO attendance(student_id,batch_id,faculty_id,attendance,date_of_attendance) VALUES(?,?,?,?,?)";
			PreparedStatement smt = con.prepareStatement(addValues);
			smt.setLong(1, studentId);
			smt.setLong(2, batchId );
			smt.setLong(3, facultyId);
			smt.setString(4, "p");
			smt.setTimestamp(5, t);
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
		} catch (ParseException e) {
			// TODO Auto-generated catch block
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

	public List<Map<String, String>> getStudentList() {
		List<Map<String, String>> students = null;
		String getValues = "SELECT batch_student.student_id, batch_student.batch_id, faculty_batch.faculty_id,student_table.student_name FROM batch_student,faculty_batch,student_table WHERE faculty_batch.batch_id= batch_student.batch_id AND batch_student.student_id = student_table.student_id"; 
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			PreparedStatement smt = con.prepareStatement(getValues);
			ResultSet rs = smt.executeQuery();
			students = new ArrayList<Map<String, String>>();
			System.out.println("students length before :>" + students.size());
			while (rs.next()) {
				//System.out.println(rs.getLong("student_id") + "," + rs.getString("student_name"));
				Map<String, String> row = new HashMap<String, String>();
				row.put("batch_student.student_id", rs.getString("student_id"));
				row.put("student_table.student_name", rs.getString("student_name"));
				row.put("batch_student.batch_id", rs.getString("batch_id"));
				row.put("faculty_batch.faculty_id", rs.getString("faculty_id"));
				students.add(row);

			}
			System.out.println("students length after :>" + students.size());

		} catch (Exception e) {// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (con != null) {
					con.close();
				} 
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return students;
	}

	public Map<String,String> getDetailsByStudentId(long studentId){
		String getValues = "SELECT  batch_student.batch_id, faculty_batch.faculty_id FROM batch_student,faculty_batch WHERE faculty_batch.batch_id= batch_student.batch_id AND batch_student.student_id = ?";
		//String getValues="SELECT  faculty_batch.batch_id FROM faculty_batch WHERE faculty_batch.faculty_id= ?";
		Connection con = null;
		Map<String,String> studentDetails= new HashMap<String,String>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			PreparedStatement smt = con.prepareStatement(getValues);
			smt.setLong(1, studentId);
			ResultSet rs = smt.executeQuery();
			while(rs.next()) {
			studentDetails.put("batchId", rs.getString("batch_id"));
			studentDetails.put("facultyId", rs.getString("faculty_id"));
			}
			
		} catch (Exception e) {// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return studentDetails;
	}
}
