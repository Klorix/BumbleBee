package net.servlets.customerServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dao.customerDao.CustomerDao;
import net.dao.customerDao.impl.CustomerDAOImpl;
import net.model.Customer;
import net.model.Item;

@WebServlet("/registerCustomer")
public class RegisterCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerDao customerDao;

	public void init() {
		customerDao = new CustomerDAOImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		register(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getAllCustomers(request);
		RequestDispatcher dispatcher = request.getRequestDispatcher("customer/customerDetails.jsp");
		dispatcher.forward(request, response);
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String signUpId = request.getParameter("signUpId");
		String signUpName = request.getParameter("signUpName");
		String signUpDob = request.getParameter("signUpDob");
		String signUpContactNo = request.getParameter("signUpContactNo");
		String signUpUserName = request.getParameter("signUpUserName");
		String signUpPassword = request.getParameter("signUpPassword");
		String signUpAddress = request.getParameter("signUpAddress");
		
		System.out.println(signUpId);
		System.out.println(signUpName);
		System.out.println(signUpDob);
		System.out.println(signUpContactNo);
		System.out.println(signUpUserName);
		System.out.println(signUpPassword);
		System.out.println(signUpAddress);
		
		
	    
	    Customer c = new Customer(signUpId,signUpName,signUpDob,signUpContactNo,signUpUserName,signUpPassword,signUpAddress);
	    try {
			if(customerDao.saveCustomer(c) == true) {
				request.setAttribute("NOTIFICATION", "Customer Registered Successfully!");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    RequestDispatcher dispatcher = request.getRequestDispatcher("register/register.jsp");
		dispatcher.forward(request, response);
	}
	public void getAllCustomers(HttpServletRequest request) {
		List<Customer>customers = customerDao.getAllCustomers();
		request.setAttribute("customerDetails", customers);
	}
}
