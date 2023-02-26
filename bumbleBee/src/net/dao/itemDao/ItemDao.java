package net.dao.itemDao;

import net.model.Item;

public interface ItemDao {
	public boolean saveItem(Item i) throws ClassNotFoundException;
}
