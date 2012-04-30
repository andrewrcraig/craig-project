package craig_proj;

import java.io.IOException;
import java.util.Calendar;
import java.util.Hashtable;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.omg.CosNaming.IstringHelper;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Hashtable users = new Hashtable();
	
    public LoginServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getAction(request, response);
	}
	
	private void getAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usrname = request.getParameter("username");
		String pswrd = request.getParameter("password");
		Cookie[] cke = request.getCookies();

		if (usrname != ""  && pswrd != "" && pswrd.equals(users.get(usrname))) {
			storeName(request, usrname);
			setHeader(response, usrname, cke);
			Date login = new Date();
			System.out.println(" You logged in at " + login);
			//RequestDispatcher rd = request.getRequestDispatcher("./welcome.jsp"); //BUT IS SET With this
			//rd.forward(request, response);
			response.sendRedirect("./welcome.jsp"); //HEADER isn't set using this
		}
		
		else {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST,"Not recognized.");
		}	
	}

	private void setHeader(HttpServletResponse response, String usrname, Cookie[] cke) {
		response.setHeader("X-Last-Login", usrname + ' ' + "last visited on " + getDate());
	}

	private void storeName(HttpServletRequest request, String usrname) {
		HttpSession session = request.getSession(true);
		session.setAttribute("username", usrname);
		session.getAttribute(usrname);
	}

	private java.util.Date getDate() {
		Calendar cal = Calendar.getInstance();
		return cal.getTime();
	}
	
	@SuppressWarnings("unchecked")
	public void init() {
		users.put("drew", "pass1");
		users.put("webuser", "pass2");
		users.put("amir", "pass3");
	}
}
