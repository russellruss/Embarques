package mx.trillas.seguimientoembarques.persitence.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import mx.trillas.seguimientoembarques.persitence.HibernateUtil;
import mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO;
import mx.trillas.seguimientoembarques.persitence.pojos.Tipousuario;

public class TipousuarioDAODBImpl implements TipousuarioDAO {

	@Override
	public Tipousuario getTipousuarioAdministrador() throws Exception {
		Session session = null;
		Tipousuario tipousuarioAdministrador = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Tipousuario.class);
			criteria.add(Restrictions.eq("tipo",
					TipousuarioDAO.TIPOS_USUARIO.TIPOUSUARIO_ADMINISTRADOR
							.getString()));
			Object tipousuarioAdministradorObj = criteria.uniqueResult();
			if (tipousuarioAdministradorObj != null
					&& tipousuarioAdministradorObj instanceof Tipousuario) {
				tipousuarioAdministrador = (Tipousuario) tipousuarioAdministradorObj;
				HibernateUtil.initializeObject(tipousuarioAdministrador
						.getTipo());
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return tipousuarioAdministrador;
	}

	@Override
	public Tipousuario getTipousuarioAsesor() throws Exception {
		Session session = null;
		Tipousuario tipousuarioAsesor = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Tipousuario.class);
			criteria.add(Restrictions
					.eq("tipo", TipousuarioDAO.TIPOS_USUARIO.TIPOUSUARIO_ASESOR
							.getString()));
			Object tipousuarioAdministradorObj = criteria.uniqueResult();
			if (tipousuarioAdministradorObj != null
					&& tipousuarioAdministradorObj instanceof Tipousuario) {
				tipousuarioAsesor = (Tipousuario) tipousuarioAdministradorObj;
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return tipousuarioAsesor;
	}

	@Override
	public Tipousuario getTipousuarioConultor() throws Exception {
		Session session = null;
		Tipousuario tipousuarioConsultor = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(Tipousuario.class);
			criteria.add(Restrictions.eq("tipo",
					TipousuarioDAO.TIPOS_USUARIO.TIPOUSUARIO_CONSULTOR
							.getString()));
			Object tipousuarioAdministradorObj = criteria.uniqueResult();
			if (tipousuarioAdministradorObj != null
					&& tipousuarioAdministradorObj instanceof Tipousuario) {
				tipousuarioConsultor = (Tipousuario) tipousuarioAdministradorObj;
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return tipousuarioConsultor;
	}
}
