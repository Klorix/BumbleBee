package net.servlets.placeOrderServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dao.OrderDao.impl.OrderDaoImpl;
import net.model.Item;

@WebServlet("/placeOrder")
public class PlaceOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private net.dao.OrderDao.OrderDao orderDao;

	public void init() {
		orderDao = new OrderDaoImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		placeOrder(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//getAllItems(request);
		RequestDispatcher dispatcher = request.getRequestDispatcher("order/order.jsp");
		dispatcher.forward(request, response);
	}

	private void placeOrder(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		/*String id = request.getParameter("productIdInManageItems");
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
			if(itemDao.saveItem(i) == true) {
				request.setAttribute("NOTIFICATION", "Item Saved Successfully!");
				getAllItems(request);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageItem.jsp");
		dispatcher.forward(request, response);*/
	}
	public void getAllItems(HttpServletRequest request) {
		/*List<Item>items = itemDao.getAllItems();
		request.setAttribute("itemDetails", items);*/
	}
}
