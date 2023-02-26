package net.servlets.itemServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dao.itemDao.ItemDao;
import net.dao.itemDao.impl.ItemDaoImpl;
import net.model.Item;

@WebServlet("/updateItem")
public class UpdateItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ItemDao itemDao;

	public void init() {
		itemDao = new ItemDaoImpl();
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
		String id = request.getParameter("productIdInManageItems");
		String name = request.getParameter("productNameInManageItems");
		int qty = Integer.parseInt(request.getParameter("productQtyInManageItems"));
		double unitPrice = Double.parseDouble(request.getParameter("productUnitPriceInManageItems"));
		String status = request.getParameter("productStatusInManageItems");
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(qty);
		System.out.println(unitPrice);
		System.out.println(status);
 
	    Item i = new Item(id,name,qty,unitPrice,status);
	    try {
			if(itemDao.updateItem(i) == true) {
				request.setAttribute("NOTIFICATION", "Item Updated Successfully!");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageItem.jsp");
		dispatcher.forward(request, response);
	}
}
