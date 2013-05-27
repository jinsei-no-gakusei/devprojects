package edu.claflin.thesis;

import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * 
 * @author martin
 *
 */
@SuppressWarnings("serial")
public class ContactController extends HttpServlet {


	/**
	 *
	 * @param request
	 * @param response
	 * @throws java.io.IOException
	 */
	public void doPost( HttpServletRequest request, HttpServletResponse response )  throws java.io.IOException {
		
		String first = (String)request.getParameter("prenom");
		String last = (String)request.getParameter("nom");
		
		HttpSession session = request.getSession();
		
		session.setAttribute( "firstname", first );
		session.setAttribute( "lastname", last );
		
		response.sendRedirect( "thankyou.jsp" ); 

//		PrintWriter out = response.getWriter();
//		
//		StringBuffer html = new StringBuffer();
//		
//		html.append("<p>Project on the use of POST!</p>" );
//		html.append( "<hr/>" );
//		html.append("<table width=\"100%\" cellpadding=5 cellspacing=5 border=1>");
//		
//		html.append("<tr>");
//		html.append("<td>First Name</td>");
//		html.append("<td>" + (String)request.getParameter("prenom") + "</td>");
//		html.append("</tr>");
//		
//		html.append("<tr>");
//		html.append("<td>Last Name</td>");
//		html.append("<td>" + (String)request.getParameter("nom") + "</td>");
//		html.append("</tr>");
//		
//		html.append("<tr>");
//		html.append("<td>Email</td>");
//		html.append("<td>" + (String)request.getParameter("lemail") + " [ " + (String)request.getParameter("lemail_type") + " ] </td>");
//		html.append("</tr>");
//		
//		html.append("<tr>");
//		html.append("<td>Phone Number</td>");
//		html.append("<td>" + (String)request.getParameter("nombre") + " [ " + (String)request.getParameter("nombre_type") + " ] </td>");
//		html.append("</tr>");
//		
//		html.append("<tr>");
//		html.append("<td>Request</td>");
//		html.append("<td>" + (String)request.getParameter("demander") + "</td>");
//		html.append("</tr>");
//		
//		html.append("</table>");
//		
//	    out.println( html.toString() );

	}  // end doPost() method


	/**
	 *
	 * @param request
	 * @param response
	 * @throws java.io.IOException
	 */
	public void doGet( HttpServletRequest request, HttpServletResponse response )  throws java.io.IOException {
		
		String prenom = (String)request.getParameter( "prenom" );
		String nom = (String)request.getParameter( "nom" );
		
		StringBuffer html = new StringBuffer();
		
		html.append("<p>Thank you and have a great day!!!</p>" );
		html.append( "<hr/>" );
		
		if ( prenom != null && nom != null ) {
		
			html.append("<table cellpadding=5 cellspacing=5 width=\"100%\" border=1>");
			html.append("<tr>");
			html.append("<td>First Name</td>");
			html.append("<td>" + prenom + "</td>");
			html.append("</tr>");
			html.append("<tr>");
			html.append("<td>Last Name</td>");
			html.append("<td>" + nom + "</td>");
			html.append("</tr>");
			html.append("</table>");
		
		} else {
			
			html.append("<table cellpadding=5 cellspacing=5 width=\"100%\" border=1>");
			html.append("<tr>");
			html.append("<td align=\"center\">GET Example = <i>http://localhost:8080/WebTech/TestController?prenom=martin&nom=okoronkwo</i></td>");
			html.append("</tr>");
			html.append("</table>");
			
		}

		PrintWriter out = response.getWriter();
		
		out.println( html.toString() );


	}  // end doGet() method

}   // end ContactController class definition


