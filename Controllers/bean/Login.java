package edu.claflin.thesis.bean;

public class Login {
	
	private String username = "";
	
	public Login() {
		
	}
	
	public void setUsername( String username ) {
		
		this.username = username;
		
	}
	
	
	public String getUsername() {
		
		return ( username != null ) ? username : "";
		
	}
	
	
	public boolean isLoggedIn() {
		
		return !getUsername().isEmpty();
		
	}

}
