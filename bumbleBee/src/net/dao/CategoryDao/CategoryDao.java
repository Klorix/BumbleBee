package net.dao.CategoryDao;

import java.util.List;

import net.model.Category;

public interface CategoryDao {
	public boolean saveCategory(Category c);
	public boolean updateCategory(Category c);
	public boolean deleteCategory(String id);
	public List<Category> getCategoryDetails();
	public Category searchCategoryByName(String name);
	public String generateCategoryCode();
}
