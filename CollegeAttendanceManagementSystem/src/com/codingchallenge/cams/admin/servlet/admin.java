package com.codingchallenge.cams.admin.servlet;

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
import com.codingchallenge.cams.admin.repository.adminRepository;

/**
 * Servlet implementation class admin
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher serve=null;
		serve = request.getRequestDispatcher("adminHome.jsp");
		adminRepository view= new adminRepository();
		List<Map<String, String>> faculty = view.getFacultyList();
		request.setAttribute("faculty", faculty);

		
		 
		serve.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String[] value = request.getParameterValues("removeCheckBox");
		System.out.println("value length--"+ value.length);
		for(int i=0;i<value.length;i++)
		{
			if(value[i]==null)
			{
				System.out.println(" Validation is not done");
			}
			else {
				
				adminRepository view= new adminRepository();
				Long facultyId=Long.valueOf(value[i]);
				view.delFaculty(facultyId);
			}
			
		}
		
		doGet(request, response);
	}

}
