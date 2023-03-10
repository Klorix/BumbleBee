package net.servlets.itemServlet;

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
import net.model.Item;

@WebServlet("/updateItem")
public class UpdateItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ItemDao itemDao;
	private CategoryDao categoryDao;
	private BrandDao brandDao;
	public void init() {
		itemDao = new ItemDaoImpl();
		categoryDao = new CategoryDaoImpl();
		brandDao = new BrandDaoImpl();
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
		String name = request.getParameter("productNameInManageItems");
		int qty = Integer.parseInt(request.getParameter("productQtyInManageItems"));
		double unitPrice = Double.parseDouble(request.getParameter("productUnitPriceInManageItems"));
		String status = request.getParameter("productStatusInManageItems");
		String categoryId = request.getParameter("productCategoryInManageItems");
		String brand = request.getParameter("productBrandInManageItems");
		String brandId = brandDao.searchBrandByName(brand).getBrandId();
		System.out.println(id);
		System.out.println(name);
		System.out.println(qty);
		System.out.println(unitPrice);
		System.out.println(status);
		System.out.println(categoryId);
		System.out.println(brandId);
		
	    Item i = new Item(id,name,qty,unitPrice,status,categoryId,brandId);
	    try {
			if(itemDao.updateItem(i) == true) {
				request.setAttribute("NOTIFICATION", "Item Updated Successfully!");
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
