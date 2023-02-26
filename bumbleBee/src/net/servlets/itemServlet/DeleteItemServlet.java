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

@WebServlet("/deleteItem")
public class DeleteItemServlet extends HttpServlet {
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
		System.out.println(id);
	    try {
			if(itemDao.deleteItem(id) == true) {
				request.setAttribute("NOTIFICATION", "Item Deleted Successfully!");
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
