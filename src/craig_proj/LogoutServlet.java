package craig_proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOutServlet
 */
@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getLogOut(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getLogOut(request, response);
	}
private void getLogOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		HttpSession session = request.getSession();
		response.sendRedirect("./index.jsp");
		
		Date logout = new Date();
		System.out.println(" You logged out at " + logout);
		
		session.invalidate();
		**/
		HttpSession session = request.getSession();
		Date now = new Date();
		Date lastLogin = (Date) session.getAttribute("login");
		long elapsedMilliseconds = now.getTime() - lastLogin.getTime();
		long elapsedMinutes = elapsedMilliseconds / 1000 / 60;
		response.setHeader("X-Last-Login", elapsedMinutes + " minutes.");
		
		session.invalidate();
		response.sendRedirect("./index.jsp");
	}
}
