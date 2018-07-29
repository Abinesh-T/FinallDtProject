package com.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class IceBalanceDAO {
	private Transaction trans;
	private Session sess;
	private DbConfig db;
	private boolean b = true;
	public IceBalanceDAO()
	{
		db = new DbConfig();
	}
	
	public boolean insertIceBalance(IceBalance p) {
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
	public List<IceBalance> getIceBalances() {

		sess = db.getSess();
		Query<IceBalance> quer = sess.createQuery("FROM IceBalance", IceBalance.class);
		List<IceBalance> al = quer.getResultList();
		return al;
	}
	public static IceBalance findById(int id) {
		DbConfig db = new DbConfig();
		return (IceBalance)db.getSess().get(IceBalance.class,id);
	}
	
	public boolean updateIceBalance(IceBalance p)
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
	public List<IceBalance> getReport(String fDate, String tDate) {
		DbConfig db = new DbConfig();
		sess = db.getSess();
		String HQL_QUERY = "from IceBalance u where u.Date between :fDate and :tDate ";
		Query query = sess.createQuery(HQL_QUERY, IceBalance.class);
		query.setParameter("fDate", fDate);
		query.setParameter("tDate", tDate);
		List<IceBalance> list = query.list();
		return list;
	}


}
