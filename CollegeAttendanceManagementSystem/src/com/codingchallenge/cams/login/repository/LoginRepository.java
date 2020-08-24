package com.codingchallenge.cams.login.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;





public class LoginRepository {
	public String checkUserValid(String loginUsername,String loginPassword) {
		Connection con = null;
		String data=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cams.db";
			con = DriverManager.getConnection(url, "root", "assassinscreed");
			String selRole="SELECT role FROM login_table where user_id=? and password=?";
			PreparedStatement stmt = con.prepareStatement(selRole);
			stmt.setString(1, loginUsername);
	        stmt.setString(2, loginPassword);
			ResultSet rs=stmt.executeQuery();
			while(rs.next())
			{//String res.put("role",rs.getString("role");
				
	            data=rs.getString("role");
	            //user.setpassword("password");
				
				
			}
				
			
		 }catch (Exception e) {// TODO Auto-generated catch block
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
		
		
		
		
		return data;
		
	}

}
