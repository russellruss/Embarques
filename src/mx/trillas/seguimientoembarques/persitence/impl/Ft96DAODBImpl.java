package mx.trillas.seguimientoembarques.persitence.impl;

import java.util.ArrayList;
import java.util.List;

import mx.trillas.seguimientoembarques.persitence.HibernateUtil;
import mx.trillas.seguimientoembarques.persitence.dao.Ft96DAO;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft96;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft96Id;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class Ft96DAODBImpl implements Ft96DAO {

	public Ft96 getFt96(String serie, Integer folio) throws Exception {
		Ft96Id ft96id = new Ft96Id();
		ft96id.setSer(serie);
		ft96id.setFolio(folio);

		Session session = null;
		Ft96 ft96 = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Ft96.class.getName());
			criteria.add(Restrictions.eq("id", ft96id));
			Object ft96Obj = criteria.uniqueResult();
			if (ft96Obj != null && ft96Obj instanceof Ft96) {
				ft96 = (Ft96) ft96Obj;
			}
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
		return ft96;
	}

	@Override
	public List<String> getAllDistinctRSOCF() throws Exception {
		List<String> listRsocf = new ArrayList<>();
		Session session = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Ft96.class.getName());
			criteria.setProjection(Projections.distinct(Projections.property("rsocf")));
			Object ft96ListObj = criteria.list();
			if (ft96ListObj != null && ft96ListObj instanceof List) {
				List<?> ft96List = (List<?>) ft96ListObj;
				for (Object ft96Obj : ft96List) {
					if (ft96Obj != null && ft96Obj instanceof String) {
						String ft96 = (String) ft96Obj;
						listRsocf.add(ft96);
					}
				}
			}
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
		return listRsocf;

	}

	@Override
	public void deleteAll() throws Exception {
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			Criteria criteria = session.createCriteria(Ft96.class.getName());
			Object objectlist = criteria.list();
			List<?> ft96List = new ArrayList<>();
			if (objectlist != null && objectlist instanceof List<?>) {
				ft96List = (List<?>) objectlist;
				for (Object ft96Obj : ft96List) {
					if (ft96Obj != null && ft96Obj instanceof Ft96) {
						Ft96 ft96 = (Ft96) ft96Obj;
						session.delete(ft96);
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
}
