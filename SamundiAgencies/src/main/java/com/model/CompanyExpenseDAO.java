package com.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.transaction.annotation.Transactional;



@Transactional
public class CompanyExpenseDAO {

	private Transaction trans;
	private Session sess;
	private DbConfig db;
	private boolean b = true;
	public CompanyExpenseDAO()
	{
		db = new DbConfig();
	}
	
	public boolean insertCompanyExpense(CompanyExpense p) {
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
	public List<CompanyExpense> getCompanyExpenses() {

		sess = db.getSess();
		Query<CompanyExpense> quer = sess.createQuery("FROM CompanyExpense", CompanyExpense.class);
		List<CompanyExpense> al = quer.getResultList();
		return al;
	}
	public static CompanyExpense findById(int id) {
		DbConfig db = new DbConfig();
		return (CompanyExpense)db.getSess().get(CompanyExpense.class,id);
	}
	
	public boolean updateCompanyExpense(CompanyExpense p)
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
	public List<CompanyExpense> getReport(String fDate, String tDate) {
		DbConfig db = new DbConfig();
		sess = db.getSess();
		String HQL_QUERY = "from CompanyExpense u where u.Date between :fDate and :tDate ";
		Query query = sess.createQuery(HQL_QUERY, CompanyExpense.class);
		query.setParameter("fDate", fDate);
		query.setParameter("tDate", tDate);
		List<CompanyExpense> list = query.list();
		return list;
	}
	
}
