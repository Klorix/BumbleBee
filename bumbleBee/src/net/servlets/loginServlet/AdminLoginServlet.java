package net.servlets.loginServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.dao.customerDao.CustomerDao;
import net.dao.customerDao.impl.CustomerDAOImpl;



@WebServlet("/adminLogin")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//response.sendRedirect("login/login.jsp");
		response.sendRedirect("login/adminlogin.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		authenticate(request, response);
	}

	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String username = request.getParameter("userNameLoginId");
		String password = request.getParameter("passwordLoginId");
		System.out.println(username);
		System.out.println(password);
		
		if(username.equals("admin") && password.equals("admin")){
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin/adminDashboard.jsp");
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login/adminLogin.jsp");
			dispatcher.forward(request, response);
		}
	}
}
