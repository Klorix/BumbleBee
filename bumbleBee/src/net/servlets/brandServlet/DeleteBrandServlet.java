package net.servlets.brandServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.dao.BrandDao.BrandDao;
import net.dao.BrandDao.impl.BrandDaoImpl;
import net.dao.CategoryDao.CategoryDao;
import net.dao.CategoryDao.impl.CategoryDaoImpl;
import net.dao.itemDao.ItemDao;
import net.dao.itemDao.impl.ItemDaoImpl;
import net.model.Brand;
import net.model.Category;
import net.model.Item;

@WebServlet("/deleteBrand")
public class DeleteBrandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BrandDao brandDao;

	public void init() {
		brandDao = new BrandDaoImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		save(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getAllItems(request);
		RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageBrand.jsp");
		dispatcher.forward(request, response);
	}

	private void save(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String id = request.getParameter("brandIdInManageBrand");
		System.out.println(id);
			if(brandDao.deleteBrand(id) == true) {
				request.setAttribute("NOTIFICATION", "Brand Deleted Successfully!");
				getAllItems(request);
			}
	    RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageBrand.jsp");
		dispatcher.forward(request, response);
	}
	public void getAllItems(HttpServletRequest request) {
		List<Brand>categories = brandDao.getBrandDetails();
		request.setAttribute("brandDetails", categories);
	}
}
