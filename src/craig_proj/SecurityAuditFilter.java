package craig_proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

@WebFilter(dispatcherTypes = {DispatcherType.REQUEST }, urlPatterns = { "/*" })
public class SecurityAuditFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		if (request.getParameter("username") == "" && request.getParameter("password")== "") {
			System.err.println("filtering");
			((HttpServletResponse) response).sendError(HttpServletResponse.SC_BAD_REQUEST,"Not recognized.");
		} 
		else {
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
		System.out.println("filter done");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("filter starting");
	}

}
