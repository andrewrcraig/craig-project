package craig_proj;

import java.io.IOException;
import java.util.Date;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import org.apache.catalina.Session;

//@WebFilter("/SecurityAuditFilter")
@WebFilter(dispatcherTypes = {DispatcherType.REQUEST }, urlPatterns = { "/Login" })
public class SecurityAuditFilter implements Filter {

    public SecurityAuditFilter() {
        // TODO Auto-generated constructor stub
    }

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String usr = request.getParameter("username"); 
		 
          System.out.println("Login attempt:"+ usr + " on " + new Date().toString());
         
	      chain.doFilter(request, response);
	}
    
	public void destroy() {
		System.out.println("filter done");
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("filter begin");
	}

}
