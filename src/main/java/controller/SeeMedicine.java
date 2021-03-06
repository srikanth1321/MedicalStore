package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UserService;

public class SeeMedicine extends HttpServlet {
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();

		ArrayList<String> vacc = new ArrayList<String>();
		Map<String,String> m = new UserService().seeMedicines();
		request.setAttribute("AllMedicines", m);

		RequestDispatcher rd = request.getRequestDispatcher("AllMedicines.jsp");
		rd.forward(request, response);
	}
}
