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
import net.model.Brand;

@WebServlet("/saveBrand")
public class SaveBrandServlet extends HttpServlet {
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
		String name = request.getParameter("brandNameInManageBrand");
		
		System.out.println(id);
		System.out.println(name);
		
		Brand b = new Brand(id,name);
			if(brandDao.saveBrand(b) == true) {
				request.setAttribute("NOTIFICATION", "Brand Saved Successfully!");
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
