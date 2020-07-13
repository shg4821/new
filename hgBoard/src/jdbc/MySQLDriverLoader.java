package jdbc;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MySQLDriverLoader
 */
public class MySQLDriverLoader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void init(ServletConfig config) throws ServletException {
		try {
			Class.forName("com.wi.bp.HomeController");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
}





