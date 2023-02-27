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

@WebServlet("/itemDetails")
public class ItemDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ItemDao itemDao;

	public void init() {
		itemDao = new ItemDaoImpl();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getAllItems(request);
		RequestDispatcher dispatcher = request.getRequestDispatcher("item/itemDetails.jsp");
		dispatcher.forward(request, response);
	}

	public void getAllItems(HttpServletRequest request) {
		List<Item>items = itemDao.getAllItems();
		request.setAttribute("itemDetails", items);
	}
}
