package edu.claflin.thesis;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.claflin.thesis.bean.Cart;
import edu.claflin.thesis.pojo.CartItem;


/**
 * 
 * @author munsell/martin okoronkwo
 *
 */
@SuppressWarnings("serial")
public class CartController extends HttpServlet {
	

	/**
	 *
	 * @param request
	 * @param response
	 * @throws java.io.IOException
	 */
	public void doPost( HttpServletRequest request, HttpServletResponse response )  throws java.io.IOException {
		
		HttpSession session = request.getSession();
		
		Cart cart = (Cart)session.getAttribute( "cart" );
		
		if ( cart == null ) {
			
			cart = new Cart();
			
			session.setAttribute( "cart", cart );
			
		}
		
		String gender = (String)request.getParameter( "gender" );
		
		System.out.println( "Gender = " + gender );
		
		if ( gender.equalsIgnoreCase( "male" ) ) {
			
			System.out.println( "In Male Gender -------" );
			
			// kobe4: 75.00
			// kobe5
			// kobe6
			// kobe7
			// kobe8
			// kobe9
			// black_mamba_x
			// kobe_classic
			
			int qkobe4 = cart.getQuantity( (String)request.getParameter( "kobe4" ) );
			int qkobe5 = cart.getQuantity( (String)request.getParameter( "kobe5" ) );
			int qkobe6 = cart.getQuantity( (String)request.getParameter( "kobe6" ) );
			int qkobe7 = cart.getQuantity( (String)request.getParameter( "kobe7" ) );
			int qkobe8 = cart.getQuantity( (String)request.getParameter( "kobe8" ) );
			int qkobe9 = cart.getQuantity( (String)request.getParameter( "kobe9" ) );
			int qbmx = cart.getQuantity( (String)request.getParameter( "black_mamba_x" ) );
			int qclass = cart.getQuantity( (String)request.getParameter( "kobe_classic" ) );
			
			if ( qkobe4 > 0 ) {
				
				System.out.println( "Kobe 4 QTY = " + qkobe4 );
				
				cart.addMaleItem( new CartItem( "Nike", "Kobe 4", 75.00, qkobe4, "Male" ) );
				
			} 
			
			if ( qkobe5 > 0 ) {
				
				System.out.println( "Kobe 5 QTY = " + qkobe5 );
				
				cart.addMaleItem( new CartItem( "Nike", "Kobe 5", 60.00, qkobe5, "Male" ) );
				
			} 
			
			if ( qkobe6 > 0 ) {
				
				System.out.println( "Kobe 6 QTY = " + qkobe6 );
				
				cart.addMaleItem( new CartItem( "Nike", "Kobe 6", 50.00, qkobe6, "Male" ) );
				
			} 
			
			if ( qkobe7 > 0 ) {
				
				System.out.println( "Kobe 7 QTY = " + qkobe7 );
				
				cart.addMaleItem( new CartItem( "Nike", "Kobe 7", 100.00, qkobe7, "Male" ) );
				
			} 
			
			if ( qkobe8 > 0 ) {
				
				System.out.println( "Kobe 8 QTY = " + qkobe8 );
				
				cart.addMaleItem( new CartItem( "Nike", "Kobe 8", 90.00, qkobe8, "Male" ) );
				
			} 
			
			if ( qkobe9 > 0 ) {
				
				System.out.println( "Kobe 9 QTY = " + qkobe9 );
				
				cart.addMaleItem( new CartItem( "Nike", "Kobe 9", 55.00, qkobe9, "Male" ) );
				
			} 
			
			if ( qbmx > 0 ) {
				
				System.out.println( "Kobe Black Mamba X QTY = " + qbmx );
				
				cart.addMaleItem( new CartItem( "Nike", "Kobe Black Mamba X", 80.00, qbmx, "Male" ) );
				
			} 
			
			if ( qclass > 0 ) {
				
				System.out.println( "Kobe Classic QTY = " + qclass );
				
				cart.addMaleItem( new CartItem( "Nike", "Kobe Classic", 150.00, qclass, "Male" ) );
				
			} 
			
		} else  {
				
				System.out.println( "In female Gender -------" );
				
				// turbo12: 85.99
				// run2: 45.00
				// torch4: 69.99
				// shield: 49.99
				// season: 42.97
				// turbo: 79.99
				// max: 95.97
				// musique4: 59.99
				
				int qturbo12 = cart.getQuantity( (String)request.getParameter( "turbo12" ) );
				int qrun2 = cart.getQuantity( (String)request.getParameter( "run2" ) );
				int qtorch4 = cart.getQuantity( (String)request.getParameter( "torch4" ) );
				int qshield = cart.getQuantity( (String)request.getParameter( "shield" ) );
				int qseason = cart.getQuantity( (String)request.getParameter( "season" ) );
				int qturbo = cart.getQuantity( (String)request.getParameter( "turbo" ) );
				int qmax = cart.getQuantity( (String)request.getParameter( "max" ) );
				int qmusique4 = cart.getQuantity( (String)request.getParameter( "musiqu4" ) );
				
				if ( qturbo12 > 0 ) {
					
					System.out.println( "Turbo 12 QTY = " + qturbo12 );
					
					cart.addFemaleItem( new CartItem( "Nike", "Turbo 12", 85.99, qturbo12, "Female" ) );
					
				} 
				
				if ( qrun2 > 0 ) {
					
					System.out.println( "Run 2 QTY = " + qrun2 );
					
					cart.addFemaleItem( new CartItem( "Nike", "Run 2", 45.00, qrun2, "Female" ) );
					
				} 
				
				if ( qtorch4> 0 ) {
					
					System.out.println( "Torch 4 QTY = " + qtorch4 );
					
					cart.addFemaleItem( new CartItem( "Nike", "Torch 4", 69.99, qtorch4, "Female" ) );
					
				} 
				
				if ( qshield > 0 ) {
					
					System.out.println( "Shield QTY = " + qshield );
					
					cart.addFemaleItem( new CartItem( "Nike", "Shield", 49.99, qshield, "Female" ) );
					
				} 
				
				if ( qseason > 0 ) {
					
					System.out.println( "Season QTY = " + qseason );
					
					cart.addFemaleItem( new CartItem( "Nike", "Season", 42.97, qseason, "Female" ) );
					
				} 
				
				if ( qturbo > 0 ) {
					
					System.out.println( "Turbo QTY = " + qturbo );
					
					cart.addFemaleItem( new CartItem( "Nike", "Turbo", 79.99, qturbo, "Female" ) );
					
				} 
				
				if ( qmax > 0 ) {
					
					System.out.println( "Max QTY = " + qmax );
					
					cart.addFemaleItem( new CartItem( "Nike", "Max", 95.97, qmax, "Female" ) );
					
				} 
				
				if ( qmusique4 > 0 ) {
					
					System.out.println( "Musique QTY = " + qmusique4 );
					
					cart.addFemaleItem( new CartItem( "Nike", "Musique4", 59.99, qmusique4, "Female" ) );
					
			}
				
		}
				
		
		response.sendRedirect( "cart.jsp" );
	
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
		
		Cart cart = (Cart)session.getAttribute( "cart" );
		
		if ( cart == null ) {
			
			response.sendRedirect( "home.jsp" );
			
		} else {
			
			
			String gender = (String)request.getParameter( "gender" );
			
			gender = ( gender != null ) ? gender : "";
			
			try {
				
				int index = Integer.parseInt( (String)request.getParameter( "item" ) );
				
				if ( gender.equalsIgnoreCase( "male" ) ) {
					
					if ( index >= 0 ) {
					
						cart.removeMaleItem( index );
					
					} else {
					
						cart.clearMaleCart();
						
					}
					
				} else if ( gender.equalsIgnoreCase( "female" ) ) {
					
					if ( index >= 0 ) {
					
						cart.removeFemaleItem( index );
					
					} else {
						
						cart.clearFemaleCart();
						
					}
					
				}
				
			} catch( Exception parseError ) {
				
				parseError.printStackTrace();
			}
			
			response.sendRedirect( "cart.jsp" );
			
		}

		return;
		
	}  // end doGet() method

}   // end CartController class definition
