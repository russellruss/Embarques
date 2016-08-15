package mx.trillas.seguimientoembarques.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO;
import mx.trillas.seguimientoembarques.persitence.factory.ImplFactory;
import mx.trillas.seguimientoembarques.persitence.pojos.Tipousuario;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;

public class AppFilter implements Filter {
	private static List<String> urlPermitidas;
	private static List<String> urlAdministrador;
	private static TipousuarioDAO tipoUsuarioDAO = ImplFactory.getTipousuarioDAODBImplImpl();

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest servletRequest,
			ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		boolean allowedRequest = false;

		HttpSession session = request.getSession();
		Object userObj = session.getAttribute("user");
		Usuario usuario;
		if (userObj != null && userObj instanceof Usuario) {
			usuario = (Usuario) userObj;
			allowedRequest = true;
			Tipousuario tipoUsuarioAdministrador = null;
			try {
				tipoUsuarioAdministrador = tipoUsuarioDAO
						.getTipousuarioAdministrador();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			allowedRequest = true;
			if (!usuario.getTipousuario().equals(tipoUsuarioAdministrador)
					&& inAllowedUrlsForAdmin(request.getServletPath())) {
				response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
			}
		} else {
			allowedRequest = false;
		}
		if (!allowedRequest && !inAllowedUrls(request.getServletPath())) {
			String url = request.getRequestURL().toString();
			if (request.getServletPath() != null)
				url = url.replace(request.getServletPath(), "");
			if (request.getPathInfo() != null)
				url = url.replace(request.getPathInfo(), "");
			url += "/pages/login/login.jsp";
			response.sendRedirect(url);
			return;
		}

		filterChain.doFilter(servletRequest, servletResponse);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		urlPermitidas = new ArrayList<>();
		urlPermitidas.add("/pages/login");

		urlAdministrador = new ArrayList<>();
		urlAdministrador.add("/pages/panelAdmin");
	}

	private boolean inAllowedUrls(String url) {
		for (String s : urlPermitidas) {
			if (url.startsWith(s))
				return true;
		}
		return false;
	}

	private boolean inAllowedUrlsForAdmin(String url) {
		for (String s : urlAdministrador) {
			if (url.startsWith(s))
				return true;
		}
		return false;
	}
}
