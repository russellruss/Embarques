package mx.trillas.seguimientoembarques.persitence.impl;

import java.util.ArrayList;
import java.util.List;

import mx.trillas.seguimientoembarques.persitence.HibernateUtil;
import mx.trillas.seguimientoembarques.persitence.dao.Ft91DAO;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft91;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft91Id;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.SimpleExpression;

public class Ft91DAODBImpl implements Ft91DAO {

	@Override
	public void save(Ft91 ft91) throws Exception {
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.getTransaction();
			transaction.begin();
			session.save(ft91);
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

	public List<Ft91> getTraspasos(List<Integer> idsAlmacenes) throws Exception {
		Session session = null;
		List<Ft91> traspasos = new ArrayList<Ft91>();
		if (idsAlmacenes.size() <= 0)
			return traspasos;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Ft91.class);
			LogicalExpression alacenesOr = Restrictions.or(
					Restrictions.in("alma", idsAlmacenes),
					Restrictions.in("almad", idsAlmacenes));
			SimpleExpression idRes = Restrictions.eq("id.tdoc", 2);
			LogicalExpression restrictions = Restrictions
					.and(alacenesOr, idRes);
			criteria.add(restrictions);
			List<?> tras = criteria.list();
			if (tras != null) {
				for (Object o : tras) {
					Ft91 ft91 = (Ft91) o;
					HibernateUtil.initializeObject(ft91);
					traspasos.add(ft91);
				}
			}

		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}

		return traspasos;
	}

	public Ft91 getFt91(Integer ndoc, String serie, Integer tdoc)
			throws Exception {
		Ft91Id ft91Id = new Ft91Id();
		ft91Id.setNdoc(ndoc);
		ft91Id.setSerie(serie);
		ft91Id.setTdoc(tdoc);

		Session session = null;
		Ft91 ft91 = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Ft91.class.getName());
			criteria.add(Restrictions.eq("id", ft91Id));
			Object ft96Obj = criteria.uniqueResult();
			if (ft96Obj != null && ft96Obj instanceof Ft91) {
				ft91 = (Ft91) ft96Obj;
			}
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
		return ft91;
	}

	@Override
	public void deleteAll() throws Exception {
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			Criteria criteria = session.createCriteria(Ft91.class.getName());
			Object objectlist = criteria.list();
			List<?> ft91List = new ArrayList<>();
			if (objectlist != null && objectlist instanceof List<?>) {
				ft91List = (List<?>) objectlist;
				for (Object ft91Obj : ft91List) {
					if (ft91Obj != null && ft91Obj instanceof Ft91) {
						Ft91 ft91 = (Ft91) ft91Obj;
						session.delete(ft91);
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
