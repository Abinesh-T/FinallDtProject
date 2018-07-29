package com.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class ProductDAO {
	private Transaction trans;
	private Session sess;
	private DbConfig db;
	private boolean b = true;
	public ProductDAO()
	{
		db = new DbConfig();
	}
	
	public boolean insertProduct(Product p) {
		try
		{
			sess = db.getSess();
			trans = sess.beginTransaction();
			sess.save(p);
			trans.commit();
		}
		catch(Exception exp)
		{
			exp.printStackTrace();
			trans.rollback();
			b = false;
		}
		return b;
	}
	public List<Product> getProducts() {

		sess = db.getSess();
		Query<Product> quer = sess.createQuery("FROM Product", Product.class);
		List<Product> al = quer.getResultList();
		return al;
	}
	public static Product findById(int id) {
		DbConfig db = new DbConfig();
		return (Product)db.getSess().get(Product.class,id);
	}
	
	public boolean updateProduct(Product p)
	{
		try
		{
		sess = db.getSess();
		trans = sess.beginTransaction();
		sess.update(p);
		trans.commit();
		}
		catch(Exception exp)
		{
			exp.printStackTrace();
			trans.rollback();
			b = false;
		}
		return b;

	}
	public List<Product> getReport(String fDate, String tDate) {
		DbConfig db = new DbConfig();
		sess = db.getSess();
		String HQL_QUERY = "from Product u where u.Date between :fDate and :tDate ";
		Query query = sess.createQuery(HQL_QUERY, Product.class);
		query.setParameter("fDate", fDate);
		query.setParameter("tDate", tDate);
		List<Product> list = query.list();
		return list;
	}

}
