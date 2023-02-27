package net.dao.BrandDao;

import java.util.List;

import net.model.Brand;

public interface BrandDao {
	public boolean saveBrand(Brand b);
	public boolean updateBrand(Brand c);
	public boolean deleteBrand(String id);
	public List<Brand> getBrandDetails();
	public Brand searchBrandByName(String name);
}
