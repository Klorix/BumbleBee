package net.servlets.categoryServlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import net.dao.BrandDao.BrandDao;
import net.dao.BrandDao.impl.BrandDaoImpl;
import net.dao.CategoryDao.CategoryDao;
import net.dao.CategoryDao.impl.CategoryDaoImpl;
import net.model.Brand;
import net.model.Category;
import net.model.Item;
import net.model.Order;

@WebServlet("/categoryDetails")
public class GetCategoryDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CategoryDao dao;

	public void init() {
		dao = new CategoryDaoImpl();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getAllCategories(request,response);
	}

	
	public void getAllCategories(HttpServletRequest request,HttpServletResponse response) {
		List<Category>categories = dao.getCategoryDetails();
		response.setContentType("text/html");
		try {
			String resp = new Gson().toJson(categories);
	    	// Write content type and also length (determined via byte array).
	    	RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageCategory.jsp");
	    	response.setContentType("application/json");
	    	response.setHeader("Body", resp);
	    	PrintWriter out = response.getWriter();
	        response.setContentType("application/json");
	        response.setCharacterEncoding("UTF-8");
	        out.print(resp);
	        out.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		request.setAttribute("itemDetails", items);
	}
	
}
