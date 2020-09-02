package com.codingchallenge.cams.facultyfront.servlet;

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
import com.codingchallenge.cams.facultyfront.repository.facultyRepository;

/**
 * Servlet implementation class facultyPage
 */
@WebServlet("/facultyPage")
public class facultyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public facultyPage() {
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
		String name= request.getParameter("name");
		serve = request.getRequestDispatcher("facultyhome.jsp");
		String batchId = request.getParameter("batchId");
		String batchId1 = (String) request.getAttribute("batchId");
		System.out.println(batchId1);
		HttpSession session=request.getSession(true);
		String facultyId= (String)session.getAttribute("Id") ;
		Long Id = Long.valueOf(facultyId);
		facultyRepository view = new facultyRepository();
		List<Map<String, String>> batchs = view.getBatchList(Id);
		request.setAttribute("batchs", batchs);
		
		if(batchId!=null)
		{
			request.setAttribute("batchId", batchId);
			System.out.println("batchId --->"+batchId);
			response.sendRedirect("AddAttendanceServlet");
			
		}
		serve.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String value = (String) request.getAttribute("batchId");
		
		System.out.println("batchId --->"+value);
		
		Long batchId = Long.valueOf(value);
		request.setAttribute("batchId", batchId.toString());
		
				
				
		
		doGet(request, response);
	}


}
