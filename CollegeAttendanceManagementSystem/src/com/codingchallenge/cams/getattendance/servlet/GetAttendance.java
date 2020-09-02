package com.codingchallenge.cams.getattendance.servlet;

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

import com.codingchallenge.cams.getattendance.repository.GetAttendanceRepository;


/**
 * Servlet implementation class GetAttendance
 */
@WebServlet("/GetAttendance")
public class GetAttendance extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public GetAttendance() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher serve = null;

		serve = request.getRequestDispatcher("studentHome.jsp");
		HttpSession session = request.getSession(true);
		String studentId = (String) session.getAttribute("Id");
		Long Id = Long.valueOf(studentId);
		String month= (String) request.getAttribute("month");
		String year= (String)request.getAttribute("year");
		GetAttendanceRepository get= new GetAttendanceRepository();
		List<Integer> atten = get.getAttenList(month, year,Id);
		request.setAttribute("atten", atten);
		
		
		serve.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		System.out.println(year);
		System.out.println(month);
		request.setAttribute("year", year);
		request.setAttribute("month", month);
		doGet(request, response);
	}

}
