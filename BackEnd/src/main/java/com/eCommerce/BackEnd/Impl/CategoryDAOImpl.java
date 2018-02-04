package com.eCommerce.BackEnd.Impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eCommerce.BackEnd.Model.*;
import com.eCommerce.BackEnd.DAO.*;

@Repository 
public class CategoryDAOImpl implements CategoryDAO
{
	 @Autowired
		private SessionFactory sessionFactory;
		
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	public void addCategory(CategoryModel category1)
	{
		
		
	}

	public CategoryModel getId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(CategoryModel category) {
		// TODO Auto-generated method stub
		
	}

	public void deleteById(int id) {
		// TODO Auto-generated method stub
		
	}

	public List<CategoryModel> getAll() 
	{
		return null;
		
	
		
	}

	
	
		
	public CategoryModel findById(int id) 
	{
		
		CategoryModel c=(CategoryModel)sessionFactory.openSession().get(CategoryModel.class, id);
		return c;
	}
}