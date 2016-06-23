package mx.trillas.seguimientoembarques.persitence.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import mx.trillas.seguimientoembarques.persitence.HibernateUtil;
import mx.trillas.seguimientoembarques.persitence.dao.Ft97DAO;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft97;

public class Ft97DAODBImpl implements Ft97DAO {

	@Override
	public void deleteAll() throws Exception {
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			Criteria criteria = session.createCriteria(Ft97.class.getName());
			Object objectlist = criteria.list();
			List<?> ft97List = new ArrayList<>();
			if (objectlist != null && objectlist instanceof List<?>) {
				ft97List = (List<?>) objectlist;
				for (Object ft97Obj : ft97List) {
					if (ft97Obj != null && ft97Obj instanceof Ft97) {
						Ft97 ft97 = (Ft97) ft97Obj;
						session.delete(ft97);
					}
				}
			}
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null)
				transaction.rollback();
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public List<Ft97> getDetailsOf(String serie, Integer nudoc) throws Exception {
		List<Ft97> listFt97;
		Session session = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Ft97.class);
			criteria.add(Restrictions.and(Restrictions.eq("id.serie", serie), Restrictions.eq("id.nudoc", nudoc)));
			List<?> listObjs = criteria.list();
			listFt97 = new ArrayList<>();
			for (Object obj : listObjs) {
				if (obj != null && obj instanceof Ft97) {
					Ft97 ft97 = (Ft97) obj;
					listFt97.add(ft97);
				}
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return listFt97;
	}
}
