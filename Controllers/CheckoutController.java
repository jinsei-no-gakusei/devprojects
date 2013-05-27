package edu.claflin.thesis;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.claflin.thesis.bean.Cart;
import edu.claflin.thesis.bean.Login;
import edu.claflin.thesis.pojo.CartItem;


/**
 * 
 * @author munsell/martin okoronkwo
 *
 */
@SuppressWarnings("serial")
public class CheckoutController extends HttpServlet {
	

	/**
	 *
	 * @param request
	 * @param response
	 * @throws java.io.IOException
	 */
	public void doPost( HttpServletRequest request, HttpServletResponse response )  throws java.io.IOException {
		
		HttpSession session = request.getSession();
		
		response.sendRedirect( "checkout.jsp" );
	
		return;

	} // end doPost() method


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
			
			if ( login.isLoggedIn() ) {
				
				response.sendRedirect( "checkout.jsp" );
				
			} else {
				
				response.sendRedirect( "login.jsp" );
			}
			
		}  else {
			
			response.sendRedirect( "login.jsp" );
			
		}
		
		return;
		
	}  // end doGet() method

}   // end CheckoutController class definition

