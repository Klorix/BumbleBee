package net.servlets.itemServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dao.itemDao.ItemDao;
import net.dao.itemDao.impl.ItemDaoImpl;
import net.model.Item;

@WebServlet("/saveItem")
public class SaveItemsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ItemDao itemDao;

	public void init() {
		itemDao = new ItemDaoImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		register(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getAllItems(request);
		RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageItem.jsp");
		dispatcher.forward(request, response);
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String id = request.getParameter("productIdInManageItems");
		String name = request.getParameter("productNameInManageItems");
		int qty = Integer.parseInt(request.getParameter("productQtyInManageItems"));
		double unitPrice = Double.parseDouble(request.getParameter("productUnitPriceInManageItems"));
		String status = request.getParameter("productStatusInManageItems");
		String category = request.getParameter("productCategoryInManageItems");
		String brand = request.getParameter("productBrandInManageItems");
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(qty);
		System.out.println(unitPrice);
		System.out.println(status);
		System.out.println(category);
		System.out.println(brand);
		
	    Item i = new Item(id,name,qty,unitPrice,status,category,brand);
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
		dispatcher.forward(request, response);
	}
	public void getAllItems(HttpServletRequest request) {
		List<Item>items = itemDao.getAllItems();
		request.setAttribute("itemDetails", items);
	}
}
