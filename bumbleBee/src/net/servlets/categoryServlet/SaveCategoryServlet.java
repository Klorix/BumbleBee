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
import net.model.Category;

@WebServlet("/saveCategory")
public class SaveCategoryServlet extends HttpServlet {
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
		String name = request.getParameter("categoryNameInManageCategory");
		
		System.out.println(id);
		System.out.println(name);
		
		Category c = new Category(id,name);
			if(categoryDao.saveCategory(c) == true) {
				request.setAttribute("NOTIFICATION", "Category Saved Successfully!");
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
