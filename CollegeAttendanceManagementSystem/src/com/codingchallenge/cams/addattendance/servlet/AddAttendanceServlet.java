package com.codingchallenge.cams.addattendance.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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

/**
Servlet implementation class AddAttendanceServlet
*/
 
@WebServlet("/AddAttendanceServlet")
public class AddAttendanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddAttendanceServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher serve=null;
		/*
		 * HttpSession session=request.getSession(true);
		 * session.setAttribute("name","Jithu" ); Boolean authorized=
		 * (Boolean)session.getAttribute("isAuthorized") ; if (authorized!=null &&
		 * authorized) {
		 */
			serve = request.getRequestDispatcher("addAttendance.jsp");
			AddAttendance add= new AddAttendance();
			HttpSession session=request.getSession(true);
			String facultyId= (String)session.getAttribute("Id") ;
			Long Id = Long.valueOf(facultyId);
			String batchId = request.getParameter("batchId");
			Long batchId1 = Long.valueOf(batchId);
			
			/*
			 * String batchId = (String) request.getAttribute("batchId"); Long Id =
			 * Long.valueOf(batchId); System.out.println("id-->" + Id);
			 */
			List<Map<String, String>> students = add.getStudentList(Id,batchId1);
			request.setAttribute("students", students);
		//}
		/*
		 * else { serve = request.getRequestDispatcher("accesssdenied.jsp"); }
		 */
		
		
		serve.forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("hi");
		String[] value = request.getParameterValues("attendanceCheckBox");
		String batchId = request.getParameter("batchId");
		Long batchId1 = Long.valueOf(batchId);
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String date=day.concat("/").concat(month).concat("/").concat(year);
		System.out.println(date);
		/*
		 * String batchId = request.getParameter("batchId"); String facultyId =
		 * request.getParameter("facultyId"); String studentId =
		 * request.getParameter("studentId"); System.out.println(batchId);
		 * System.out.println(facultyId);
		 */
		//System.out.println(request.getParameter("optionsRadios1"));
		System.out.println("value length--"+ value.length);
		for(int i=0;i<value.length;i++)
		{
			if(value[i]==null)
			{
				System.out.println(" Validation is not done");
			}
			else {
				HttpSession session=request.getSession(true);
				String facultyId= (String)session.getAttribute("Id") ;
				Long Id = Long.valueOf(facultyId);
				AddAttendance add= new AddAttendance();
				Long studentId=Long.valueOf(value[i]);
				add.addAtten(studentId,date,Id,batchId1);
			}
			
		}
		
		doGet(request, response);
	}

}
