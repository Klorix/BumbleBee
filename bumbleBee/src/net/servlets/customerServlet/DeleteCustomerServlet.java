package net.servlets.customerServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dao.customerDao.CustomerDao;
import net.dao.customerDao.impl.CustomerDAOImpl;
import net.model.Customer;
@WebServlet("/deleteCustomer")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerDao customerDao;

	public void init() {
		customerDao = new CustomerDAOImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		update(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("register/register.jsp");
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String signUpId = request.getParameter("signUpId");
		
		System.out.println(signUpId);
	    try {
			if(customerDao.deleteCustmoer(signUpId) == true) {
				request.setAttribute("NOTIFICATION", "Customer Registered Successfully!");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    RequestDispatcher dispatcher = request.getRequestDispatcher("register/register.jsp");
		dispatcher.forward(request, response);
	}
}
