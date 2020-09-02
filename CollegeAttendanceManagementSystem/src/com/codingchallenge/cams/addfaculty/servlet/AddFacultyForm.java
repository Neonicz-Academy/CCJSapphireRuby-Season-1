package com.codingchallenge.cams.addfaculty.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingchallenge.cams.addfaculty.repository.addFacultyRepository;

/**
 * Servlet implementation class AddFacultyForm
 */
@WebServlet("/AddFacultyForm")
public class AddFacultyForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddFacultyForm() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher serve=null;
		serve = request.getRequestDispatcher("newFaculty.jsp");
		
		

		serve.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String department = request.getParameter("department");
		String Id = request.getParameter("Id");
		String email = request.getParameter("Email");
		String save = request.getParameter("save");
		System.out.println(name+" "+department+" "+Id+" "+email);
		Long id = Long.valueOf(Id);
		request.setAttribute("save",save);
		addFacultyRepository add=new addFacultyRepository();
		add.addFaculty(name, department, id, email);
		doGet(request, response);
	}

}
