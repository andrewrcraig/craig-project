package craig_proj;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import org.apache.catalina.Session;

/**
 * Servlet Filter implementation class SecurityAuditFilter
 */
@WebFilter("/SecurityAuditFilter")
public class SecurityAuditFilter implements Filter {

    public SecurityAuditFilter() {
        // TODO Auto-generated constructor stub
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String usr = request.getParameter("username");  
		
		if (request.getParameter("username") != "" && request.getParameter("password") != "") {
		 
          System.out.println("Login attempts for "+ usr + ", Time " + new Date().toString());
	   }
		/*
		 * does user have a session, if true, when was last login.  If false, display current time
		 */
	
	   else {
           chain.doFilter(request, response);
	}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
