package com.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class RetailerClosingDAO {

	private Transaction trans;
	private Session sess;
	private DbConfig db;
	private boolean b = true;
	public RetailerClosingDAO()
	{
		db = new DbConfig();
	}
	
	public boolean insertRetailerClosing(RetailerClosing p) {
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
	public List<RetailerClosing> getRetailerClosings() {

		sess = db.getSess();
		Query<RetailerClosing> quer = sess.createQuery("FROM RetailerClosing", RetailerClosing.class);
		List<RetailerClosing> al = quer.getResultList();
		return al;
	}
	public static RetailerClosing findById(int id) {
		DbConfig db = new DbConfig();
		return (RetailerClosing)db.getSess().get(RetailerClosing.class,id);
	}
	
	public boolean updateRetailerClosing(RetailerClosing p)
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
	public List<RetailerClosing> getReportByDate(String Date) {
		DbConfig db = new DbConfig();
		sess = db.getSess();
		String HQL_QUERY = "from RetailerClosing u where u.Date=:Date";
		Query query = sess.createQuery(HQL_QUERY, RetailerClosing.class);
		query.setParameter("Date", Date);
		List<RetailerClosing> list = query.list();
		return list;
	}
	public List<RetailerClosing> getReport(String fDate, String tDate) {
		DbConfig db = new DbConfig();
		sess = db.getSess();
		String HQL_QUERY = "from RetailerClosing u where u.Date between :fDate and :tDate ";
		Query query = sess.createQuery(HQL_QUERY, RetailerClosing.class);
		query.setParameter("fDate", fDate);
		query.setParameter("tDate", tDate);
		List<RetailerClosing> list = query.list();
		return list;
	}

}
