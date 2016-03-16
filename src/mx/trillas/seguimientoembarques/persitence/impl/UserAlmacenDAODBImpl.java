package mx.trillas.seguimientoembarques.persitence.impl;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

import mx.trillas.seguimientoembarques.Asesor;
import mx.trillas.seguimientoembarques.persitence.HibernateUtil;
import mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO;
import mx.trillas.seguimientoembarques.persitence.dao.UserAlmacenDAO;
import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;
import mx.trillas.seguimientoembarques.persitence.pojos.UserAlmacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class UserAlmacenDAODBImpl implements UserAlmacenDAO {

	@Override
	public void insert(Almacen almacen, Usuario usuario) throws Exception {
		Session session;
		Transaction transaction;

		session = HibernateUtil.getSessionFactory().openSession();
		transaction = session.beginTransaction();

		try {
			UserAlmacen userAlmacen = new UserAlmacen();
			userAlmacen.setAlmacen(almacen);
			userAlmacen.setUsuario(usuario);
			session.save(userAlmacen);
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
	public UserAlmacen getByUserAndAlmacen(Almacen almacen, Usuario usuario)
			throws Exception {
		UserAlmacen userAlmacen = null;
		Session session = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(UserAlmacen.class);
			criteria.add(Restrictions.and(Restrictions.eq("almacen", almacen),
					Restrictions.eq("usuario", usuario)));
			Object userAlmacenObj = criteria.uniqueResult();
			if (userAlmacenObj != null && userAlmacenObj instanceof UserAlmacen) {
				userAlmacen = (UserAlmacen) userAlmacenObj;
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return userAlmacen;
	}

	@Override
	public void delete(UserAlmacen userAlmacen) throws Exception {
		Session session;
		Transaction transaction;

		session = HibernateUtil.getSessionFactory().openSession();
		transaction = session.beginTransaction();

		try {
			session.delete(userAlmacen);
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

	public List<UserAlmacen> getUsuariosAsesoresList() throws Exception {
		Session session = null;
		List<UserAlmacen> listaUsuariosasesores = new ArrayList<>();
		TipousuarioDAO tipousuarioDAO = new TipousuarioDAODBImpl();
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Criteria criteria = session.createCriteria(UserAlmacen.class, "ua");
			criteria.createAlias("ua.usuario", "usuario");
			criteria.add(Restrictions.eq("usuario.tipousuario", tipousuarioDAO.getTipousuarioAsesor()));
			List<?> listObj = criteria.list();
			for (Object usuarioalmacenObj : listObj) {
				if (usuarioalmacenObj != null && usuarioalmacenObj instanceof UserAlmacen) {
					UserAlmacen usuarioalmacen = (UserAlmacen) usuarioalmacenObj;
					listaUsuariosasesores.add(usuarioalmacen);
				}
			}
		} catch (Exception ex) {
			throw ex;
		} finally {
			if (session != null)
				session.close();
		}
		return listaUsuariosasesores;
	}

	
	public void deleteUserAlmacenByList() throws Exception{
		Session session = null;
		Transaction transaction = null;
		List<UserAlmacen> list = getUsuariosAsesoresList();
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			for (UserAlmacen element : list) {
//				System.out.println("Eliminando " + element.getUsuario().getUsername() + " con ID: "+ element.getId());
				session.delete(element);
			}
			transaction.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	public List<Almacen> getRelacionesUserAlmacen(List<Asesor> listaDeAsesores, List<Almacen> listaDeAlmacenes) throws Exception {
		List<Almacen> almacenAgregado = new ArrayList<>();
		
		for ( Asesor asesor : listaDeAsesores ){ 
			for (String character : asesor.getCaracteres()){
				for (int i=0; i< listaDeAlmacenes.size(); i++ )
					if ( character.charAt(0) == listaDeAlmacenes.get(i).getCaracter() ){
						almacenAgregado.add(listaDeAlmacenes.get(i));
					}
			}
		}
		return almacenAgregado;
	}
	
	public LinkedHashSet<Almacen> getRelacionUserAlmacen(Asesor asesor, List<Almacen> listaDeAlmacenes) throws Exception {
		LinkedHashSet<Almacen> almacenAgregado = new LinkedHashSet<>();

		try {
			for (String character : asesor.getCaracteres()) {
				for (int k = 0; k < character.length(); k++) {
					for (int i = 0; i < listaDeAlmacenes.size(); i++) {
						if (character.charAt(k) == ',' || listaDeAlmacenes.get(i).getCaracter() == null) {
							continue;
						}
						if (character.charAt(k) == listaDeAlmacenes.get(i).getCaracter()) {
							almacenAgregado.add(listaDeAlmacenes.get(i));
						}
					}
				}
			}
		} catch (Exception e) {
			throw e;
		}
		return almacenAgregado;
	}
}
