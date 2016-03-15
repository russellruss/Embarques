package mx.trillas.seguimientoembarques.persitence.impl;

import java.util.ArrayList;
import java.util.List;

import mx.trillas.seguimientoembarques.persitence.HibernateUtil;
import mx.trillas.seguimientoembarques.persitence.dao.AlmacenDAO;
import mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO;
import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;
import mx.trillas.seguimientoembarques.persitence.pojos.UserAlmacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;

public class AlmacenDAODBImpl implements AlmacenDAO {

	@Override
	public List<Almacen> getAlmacenes() throws Exception {
		List<Almacen> listAlmacen = new ArrayList<>();
		Session session = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Almacen.class);
			Object listObj = criteria.list();
			if (listObj != null && listObj instanceof List<?>) {
				List<?> list = (List<?>) listObj;
				for (Object obj : list) {
					if (obj != null && obj instanceof Almacen) {
						Almacen almacen = (Almacen) obj;
						listAlmacen.add(almacen);
					}
				}
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return listAlmacen;
	}

	@Override
	public List<Almacen> getAlmacenesOfUser(Usuario user) throws Exception {
		Session session = null;
		UserAlmacen userAlmacen;
		List<Almacen> listAlmacenes = new ArrayList<>();
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(UserAlmacen.class);
			criteria.add(Restrictions.eq("usuario", user));
			List<?> userAlmacenObjList = criteria.list();
			for (Object userAlmacenObj : userAlmacenObjList) {
				if (userAlmacenObj != null
						&& userAlmacenObj instanceof UserAlmacen) {
					userAlmacen = (UserAlmacen) userAlmacenObj;
					HibernateUtil.initializeObject(userAlmacen.getAlmacen());
					HibernateUtil.initializeObject(userAlmacen.getUsuario());
					listAlmacenes.add(userAlmacen.getAlmacen());
				}
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return listAlmacenes;
	}

	@Override
	public Almacen getByClave(int clave) throws Exception {
		Session session = null;
		Almacen almacen = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Almacen.class);
			criteria.add(Restrictions.eq("clave", clave));
			Object almacenObj = criteria.uniqueResult();
			if (almacenObj != null && almacenObj instanceof Almacen) {
				almacen = (Almacen) almacenObj;
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return almacen;
	}

	@Override
	public List<String> getAllAlmacenesNames() throws Exception {
		List<String> almacenesNames = new ArrayList<>();
		List<Almacen> almacenes = getAlmacenes();
		for (Almacen almacen : almacenes) {
			almacenesNames.add(almacen.getNombre());
		}
		return almacenesNames;
	}

	@Override
	public void insert(Almacen almacen) throws Exception {
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.save(almacen);
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
	
	@Override
	public int getNextID() throws Exception {
		Session session = null;
		Almacen almacen = null;
		try {
			DetachedCriteria maxClave = DetachedCriteria
					.forClass(Almacen.class).setProjection(
							Projections.max("clave"));
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Almacen.class);
			criteria.add(Property.forName("clave").eq(maxClave));
			Object almacenObj = criteria.uniqueResult();
			if (almacenObj != null && almacenObj instanceof Almacen) {
				almacen = (Almacen) almacenObj;
				return almacen.getClave() + 1;
			} else {
				return 0;
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
	}
	/*
	public List<Character> getAlmacenCaracter() throws Exception {
		Session session = null;
		List<Character> list = new ArrayList<>();
		
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Almacen.class);
			list = criteria.list();
			for (Object element : list) {
				if (element != null && element instanceof Almacen) {
					Almacen almacen = (Almacen) element;
					list.addAll(almacen.getCaracter());
				}
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}  */
}

