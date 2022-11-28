package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Hotel;




/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/")
public class HotelDashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	private HotelDashboardService Admin;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelDashboardServlet() {
    	this.Admin = new HotelDashboardService();
    }
    
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		
		default:
			//handle list
			listOrder(request, response);
			break;
		}
	}
	
	
	private void listOrder(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			List<Hotel> CusDetials = Admin.selectAllOrder();
			request.setAttribute("CusDetials", CusDetials);
			RequestDispatcher dispatcher = request.getRequestDispatcher("AdminDashboard.jsp");
			dispatcher.forward(request, response);
	}
}
