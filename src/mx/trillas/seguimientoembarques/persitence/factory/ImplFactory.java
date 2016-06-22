package mx.trillas.seguimientoembarques.persitence.factory;

import mx.trillas.seguimientoembarques.persitence.dao.AlmacenDAO;
import mx.trillas.seguimientoembarques.persitence.dao.Ft91DAO;
import mx.trillas.seguimientoembarques.persitence.dao.Ft96DAO;
import mx.trillas.seguimientoembarques.persitence.dao.Ft97DAO;
import mx.trillas.seguimientoembarques.persitence.dao.GeneralesDAO;
import mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO;
import mx.trillas.seguimientoembarques.persitence.dao.UserAlmacenDAO;
import mx.trillas.seguimientoembarques.persitence.dao.UserDAO;
import mx.trillas.seguimientoembarques.persitence.impl.AlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.Ft91DAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.Ft96DAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.Ft97DAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.GeneralesDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.TipousuarioDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.UserAlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.UserDAODBImpl;

public class ImplFactory {
	private static String impltype = "HB";

	public static AlmacenDAO getAlmacenDAOImpl() {
		switch (impltype) {
		case "HB":
			return new AlmacenDAODBImpl();
		default:
			return null;
		}
	}

	public static Ft91DAO getFt91DAODBImplImpl() {
		switch (impltype) {
		case "HB":
			return new Ft91DAODBImpl();
		default:
			return null;
		}
	}

	public static Ft96DAO getFt96DAODBImplImpl() {
		switch (impltype) {
		case "HB":
			return new Ft96DAODBImpl();
		default:
			return null;
		}
	}

	public static Ft97DAO getFt97DAODBImplImpl() {
		switch (impltype) {
		case "HB":
			return new Ft97DAODBImpl();
		default:
			return null;
		}
	}

	public static GeneralesDAO getGeneralesDAODBImplImpl() {
		switch (impltype) {
		case "HB":
			return new GeneralesDAODBImpl();
		default:
			return null;
		}
	}

	public static TipousuarioDAO getTipousuarioDAODBImplImpl() {
		switch (impltype) {
		case "HB":
			return new TipousuarioDAODBImpl();
		default:
			return null;
		}
	}

	public static UserAlmacenDAO getUserAlmacenDAODBImplImpl() {
		switch (impltype) {
		case "HB":
			return new UserAlmacenDAODBImpl();
		default:
			return null;
		}
	}

	public static UserDAO getUserDAODBImplImpl() {
		switch (impltype) {
		case "HB":
			return new UserDAODBImpl();
		default:
			return null;
		}
	}
}
