package edu.claflin.thesis;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.claflin.thesis.bean.Login;


/**
 * 
 * @author munsell
 *
 */
@SuppressWarnings("serial")
public class LoginController extends HttpServlet {
	

	/**
	 *
	 * @param request
	 * @param response
	 * @throws java.io.IOException
	 */
	public void doPost( HttpServletRequest request, HttpServletResponse response )  throws java.io.IOException {
		
		HttpSession session = request.getSession( true );
		
		Login login = (Login) session.getAttribute( "login" );
		
		if ( login == null ) {
			
			login = new Login();
			
			session.setAttribute( "login", login );
			
		}
		
		String username = request.getParameter( "username" );
		
		login.setUsername( username );
		
		response.sendRedirect( "home.jsp" );
	
		return;

	}  // end doPost() method


	/**
	 *
	 * @param request
	 * @param response
	 * @throws java.io.IOException
	 */
	public void doGet( HttpServletRequest request, HttpServletResponse response )  throws java.io.IOException {
		
		HttpSession session = request.getSession();
		
		Login login = (Login) session.getAttribute( "login" );
		
		if ( login != null ) {
			
			login.setUsername( "" );
			
		} 
		
		response.sendRedirect( "home.jsp" );
	
		return;

	}  // end doGet() method

}   // end LoginController class definition

