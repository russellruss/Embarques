package mx.trillas.seguimientoembarques.persitence.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import mx.trillas.seguimientoembarques.persitence.HibernateUtil;
import mx.trillas.seguimientoembarques.persitence.dao.GeneralesDAO;
import mx.trillas.seguimientoembarques.persitence.pojos.Generales;

public class GeneralesDAODBImpl implements GeneralesDAO {

	@Override
	public Generales getByKeyaction(GeneralesDAO.keyactions keyaction) throws Exception {
		Generales generales = null;
		Session session = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Generales.class);
			criteria.add(Restrictions.eq("keyaction", keyaction.toString()));
			Object generalesObj = criteria.uniqueResult();
			if (generalesObj != null && generalesObj instanceof Generales) {
				generales = (Generales) generalesObj;
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return generales;
	}

	@Override
	public void setData(GeneralesDAO.keyactions keyaction, String data) throws Exception {
		Generales generales = getByKeyaction(keyaction);
		if (generales == null) {
			generales = new Generales();
			generales.setKeyaction(keyaction.toString());
		}
		generales.setDato(data);
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.saveOrUpdate(generales);
			transaction.commit();
		} catch (Exception ex) {
			if (transaction != null)
				transaction.rollback();
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
	}

}
