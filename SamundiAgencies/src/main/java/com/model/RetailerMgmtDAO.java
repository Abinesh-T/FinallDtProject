package com.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class RetailerMgmtDAO {
	private Transaction trans;
	private Session sess;
	private DbConfig db;
	private boolean b = true;
	public RetailerMgmtDAO()
	{
		db = new DbConfig();
	}
	
	public boolean insertRetailerMgmt(RetailerMgmt p) {
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
	public List<RetailerMgmt> getRetailerMgmts() {

		sess = db.getSess();
		Query<RetailerMgmt> quer = sess.createQuery("FROM RetailerMgmt", RetailerMgmt.class);
		List<RetailerMgmt> al = quer.getResultList();
		return al;
	}
	public static RetailerMgmt findById(int id) {
		DbConfig db = new DbConfig();
		return (RetailerMgmt)db.getSess().get(RetailerMgmt.class,id);
	}
	
	public boolean updateRetailerMgmt(RetailerMgmt p)
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
	public List<RetailerMgmt> getReport(String fDate, String tDate) {
		DbConfig db = new DbConfig();
		sess = db.getSess();
		String HQL_QUERY = "from RetailerMgmt u where u.Date between :fDate and :tDate ";
		Query query = sess.createQuery(HQL_QUERY, RetailerMgmt.class);
		query.setParameter("fDate", fDate);
		query.setParameter("tDate", tDate);
		List<RetailerMgmt> list = query.list();
		return list;
	}

}
