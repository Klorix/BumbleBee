package net.servlets.categoryServlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import net.dao.CategoryDao.CategoryDao;
import net.dao.CategoryDao.impl.CategoryDaoImpl;
import net.dao.itemDao.ItemDao;
import net.dao.itemDao.impl.ItemDaoImpl;
import net.model.Brand;
import net.model.Category;
import net.model.Item;

@WebServlet("/deleteCategory")
public class DeleteCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CategoryDao categoryDao;

	public void init() {
		categoryDao = new CategoryDaoImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		generateId(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		save(request, response);
	}
	private void save(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		StringBuilder sb = new StringBuilder();
	    BufferedReader reader = request.getReader();
	    try {
	        String line;
	        while ((line = reader.readLine()) != null) {
	            sb.append(line).append('\n');
	        }
	    } finally {
	        reader.close();
	    }
	    Category category = new Gson().fromJson(sb.toString(), Category.class);
	    System.out.println("category Obj : "+category);
	    if(!category.getCategoryId().isEmpty()) {
	    	if(categoryDao.deleteCategory(category.getCategoryId())) {
		    	String resp = new Gson().toJson(new net.model.CommonResponse(true));
		    	// Write content type and also length (determined via byte array).
		    	RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageCategory.jsp");
		    	response.setContentType("application/json");
		    	response.setHeader("Body", resp);
		    	PrintWriter out = response.getWriter();
		        response.setContentType("application/json");
		        response.setCharacterEncoding("UTF-8");
		        out.print(resp);
		        out.flush();
		    }else {
		    	String resp = new Gson().toJson(new net.model.CommonResponse(false));
		    	// Write content type and also length (determined via byte array).
		    	RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageCategory.jsp");
		    	response.setContentType("application/json");
		    	response.setHeader("Body", resp);
		    	PrintWriter out = response.getWriter();
		        response.setContentType("application/json");
		        response.setCharacterEncoding("UTF-8");
		        out.print(resp);
		        out.flush();
		    }
	    }else {
	    	String resp = new Gson().toJson(new net.model.CommonResponse(false));
	    	// Write content type and also length (determined via byte array).
	    	RequestDispatcher dispatcher = request.getRequestDispatcher("item/manageCategory.jsp");
	    	response.setContentType("application/json");
	    	response.setHeader("Body", resp);
	    	PrintWriter out = response.getWriter();
	        response.setContentType("application/json");
	        response.setCharacterEncoding("UTF-8");
	        out.print(resp);
	        out.flush();
	    }
		
	}
	
	public void generateId(HttpServletRequest request,HttpServletResponse response) {
		String id = categoryDao.generateCategoryCode();
		response.setContentType("text/html");
    	response.setHeader("Body", id);
    	PrintWriter out;
		try {
			out = response.getWriter();
			 response.setContentType("text/html");
		        response.setCharacterEncoding("UTF-8");
		        out.print(id);
		        out.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
	}
}
