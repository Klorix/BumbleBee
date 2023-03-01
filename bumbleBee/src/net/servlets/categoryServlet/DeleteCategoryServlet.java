package net.servlets.categoryServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dao.CategoryDao.CategoryDao;
import net.dao.CategoryDao.impl.CategoryDaoImpl;
import net.dao.itemDao.ItemDao;
import net.dao.itemDao.impl.ItemDaoImpl;
import net.model.Category;
import net.model.Item;

@WebServlet("/deleteCategory")
public class DeleteCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CategoryDao categoryDao;

	public void init() {
		categoryDao = new CategoryDaoImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		save(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getAllItems(request);
		RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageCategory.jsp");
		dispatcher.forward(request, response);
	}

	private void save(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String id = request.getParameter("categoryIdInManageCategory");
		System.out.println(id);
			if(categoryDao.deleteCategory(id) == true) {
				request.setAttribute("NOTIFICATION", "Category Deleted Successfully!");
				getAllItems(request);
			}
	    RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageCategory.jsp");
		dispatcher.forward(request, response);
	}
	public void getAllItems(HttpServletRequest request) {
		List<Category>categories = categoryDao.getCategoryDetails();
		request.setAttribute("categoryDetails", categories);
	}
}