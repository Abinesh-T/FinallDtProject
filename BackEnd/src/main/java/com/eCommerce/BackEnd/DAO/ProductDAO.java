package com.eCommerce.BackEnd.DAO;

import java.util.List;

import com.eCommerce.BackEnd.Model.ProductModel;

public interface ProductDAO
{
	
	
	//create 
		public void addProduct(ProductModel product);

		//read
		public ProductModel getId(int id);
		//update
		public void update(ProductModel product);
		//deleted
		public void delete(ProductModel p);
		//Get All
		public List<ProductModel> getAll();
		
		public ProductModel findById(int id);

		public List<ProductModel> getFilterProducts(int id);
	
}