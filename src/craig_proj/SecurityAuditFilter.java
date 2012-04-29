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

		String usr = request.getParameter("username");
		String pwd = request.getParameter("password");

		if (usr == "" && pwd == "") {
			System.err.println("filtering");
			((HttpServletResponse) response).sendError(HttpServletResponse.SC_BAD_REQUEST,"Not recognized.");
		} 
		if (request.getAttribute("username") != null) { 
			int count = 0;
			System.out.println("You have visited this page " + count++ + "times");

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
