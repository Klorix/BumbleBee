package net.dao.itemDao;

import java.util.List;

import net.model.Item;

public interface ItemDao {
	public boolean saveItem(Item i) throws ClassNotFoundException;
	public boolean updateItem(Item i) throws ClassNotFoundException;
	public boolean deleteItem(String itemId) throws ClassNotFoundException;
	public List<Item> getAllItems();
}
