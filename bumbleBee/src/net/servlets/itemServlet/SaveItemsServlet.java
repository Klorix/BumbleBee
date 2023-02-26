package net.servlets.itemServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dao.UserDao;
import net.dao.customerDao.CustomerDao;
import net.dao.customerDao.impl.CustomerDAOImpl;
import net.model.Customer;
import net.model.User;

@WebServlet("/saveItems")
public class SaveItemsServlet extends HttpServlet {
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
		response.sendRedirect("register/register.jsp");
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String id = request.getParameter("productIdInManageItems");
		String name = request.getParameter("productNameInManageItems");
		String qty = request.getParameter("productQtyInManageItems");
		String unitPrice = request.getParameter("productUnitPriceInManageItems");
		String status = request.getParameter("productStatusInManageItems");
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(qty);
		System.out.println(unitPrice);
		System.out.println(status);
 
	    Customer c = new Customer(signUpId,signUpName,signUpDob,signUpContactNo,signUpUserName,signUpPassword,signUpAddress);
	    try {
			if(customerDao.saveCustmoer(c) == true) {
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
