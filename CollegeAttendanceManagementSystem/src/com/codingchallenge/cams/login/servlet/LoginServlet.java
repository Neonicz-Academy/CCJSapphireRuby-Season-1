package com.codingchallenge.cams.login.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codingchallenge.cams.addattendance.repository.AddAttendance;
import com.codingchallenge.cams.login.repository.LoginRepository;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//
		RequestDispatcher serve=null;
	    serve = request.getRequestDispatcher("index.jsp");
		HttpSession session=request.getSession(true);
		Boolean authorized= (Boolean)session.getAttribute("isAuthorized") ;
		String role= (String)session.getAttribute("role") ;
		
		if (authorized!=null && authorized) {
			if(role.equals("Faculty")) {
			//serve = request.getRequestDispatcher("");
			response.sendRedirect("facultyhome.jsp");
			}else if(role.equals("Student"))
			{
				response.sendRedirect("GetAttendance");
			}else if(role.equals("Admin"))
			{
				response.sendRedirect("admin");
			}
		}
		else
		{
			 serve = request.getRequestDispatcher("index.jsp");
			 serve.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * String username="jithu@gmail.com"; String password="123";
		 */
		
		String loginUsername =request.getParameter("loginUsername");
		String loginPassword = request.getParameter("loginPassword");
		
		System.out.println(loginUsername);
		System.out.println(loginPassword);
		LoginRepository log= new LoginRepository();
		String data=log.checkUserValid(loginUsername,loginPassword);
		String role=null;
		Boolean authenticationFailed = true; 
		 if (data != null) {
				 HttpSession session = request.getSession();
				 session.setAttribute("isAuthorized",true );
				 //response.sendRedirect("AddAttendanceServlet");
				 session.setAttribute("role",data );
				 
			 } else {
        	 request.setAttribute("failed",authenticationFailed);
         }
          
        // RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
         //dispatcher.forward(request, response);
		/*
		 * if(username.equals(loginUsername)&& password.equals(loginPassword)) {
		 * System.out.println("Authentication Successfull"); HttpSession
		 * session=request.getSession(true); session.setAttribute("isAuthorized",true );
		 * session.setAttribute("name","Jithu" ); authenticationFailed = false; } else {
		 * System.out.println("Authentication failed"); }
		 * request.setAttribute("failed",authenticationFailed);
		 */
		doGet(request, response);
	}

}
