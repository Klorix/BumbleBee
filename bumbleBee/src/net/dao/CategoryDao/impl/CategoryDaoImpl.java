package net.dao.CategoryDao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.dao.CategoryDao.CategoryDao;
import net.model.Brand;
import net.model.Category;
import net.utils.JDBCUtils;

public class CategoryDaoImpl implements CategoryDao{
	@Override
	public boolean saveCategory(Category c){
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Category (categoryId,categoryName) VALUES (?,?);")) {
			preparedStatement.setString(1, c.getCategoryId());
			preparedStatement.setString(2, c.getCategoryName());
			
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			if( preparedStatement.executeUpdate()>0)return true;
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return false;
	}

	@Override
	public boolean updateCategory(Category c) {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement("UPDATE Category SET categoryName=? WHERE categoryId=?;")) {
			preparedStatement.setString(1, c.getCategoryName());
			preparedStatement.setString(2, c.getCategoryId());		
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			if( preparedStatement.executeUpdate()>0)return true;
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return false;
	}

	@Override
	public boolean deleteCategory(String id) {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement("DELETE Category where categoryId=?")) {
			preparedStatement.setString(1, id);
			
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			if( preparedStatement.executeUpdate()>0)return true;
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return false;
	}

	@Override
	public List<Category> getCategoryDetails() {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Category")) {
			ResultSet rst = preparedStatement.executeQuery();
			List<Category>category = new ArrayList<>();
			while(rst.next()) {
				category.add(new Category(rst.getString(1),rst.getString(2)));
			}
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			return category;
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return null;
	}

	@Override
	public Category searchCategoryByName(String name) {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Category WHERE categoryName=?")) {
			preparedStatement.setString(1, name); 
			ResultSet rst = preparedStatement.executeQuery();
			if(rst.next()) {
				return new Category(rst.getString(1),rst.getString(2));
			}
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			return null;
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return null;
	}
}
