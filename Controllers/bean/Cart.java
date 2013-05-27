package edu.claflin.thesis.bean;

import java.util.ArrayList;

import edu.claflin.thesis.pojo.CartItem;

public class Cart {
	
	private ArrayList<CartItem> maleItems = new ArrayList<CartItem>();
	private ArrayList<CartItem> femaleItems = new ArrayList<CartItem>();
	
	public Cart() {
		
		
	}
	
	public int getQuantity( String quantity ) {
		
		try {
			
			return Integer.parseInt( quantity );
			
		} catch( Exception parseError ) {
			
			return 0;
			
		}
		
	}
	
	public void clearCart() {
		
		maleItems.clear();
		femaleItems.clear();
		
	}
	
	public void clearMaleCart() {
		
		maleItems.clear();
		
	}
	
	public void clearFemaleCart() {
		
		femaleItems.clear();
		
	}
	
	public int getTotalNumberOfMaleItems() {
		
		return maleItems.size();
		
	}
	
	public int getTotalNumberOfFemaleItems() {
		
		return femaleItems.size();
		
	}
	
	public void removeMaleItem( int index ) {
		
		if ( index < maleItems.size() && index >= 0 ) {
		
			maleItems.remove( index );
		
		}
		
	}
	
	public void removeFemaleItem( int index ) {
		
		if ( index < femaleItems.size() && index >= 0 ) {
			
			femaleItems.remove( index );
		
		}
		
	}
	
	public void addMaleItem( CartItem item ) {
		
		boolean exists = false;
		
		for ( int i=0; i<maleItems.size(); i++ ) {
			
			if ( maleItems.get( i ).getBrand().equalsIgnoreCase( item.getBrand() ) 
					&& maleItems.get( i ).getProduct().equalsIgnoreCase( item.getProduct() ) ) {
				
				exists = true;
				break;
				
			}
			
		}
		
		if ( !exists ) {
			
			maleItems.add( item );
			
		}
		
	}
	
	
	public void addFemaleItem( CartItem item ) {
		
		boolean exists = false;
		
		for ( int i=0; i<femaleItems.size(); i++ ) {
			
			if ( femaleItems.get( i ).getBrand().equalsIgnoreCase( item.getBrand() ) 
					&& femaleItems.get( i ).getProduct().equalsIgnoreCase( item.getProduct() ) ) {
				
				exists = true;
				break;
				
			}
			
		}
		
		if ( !exists ) {
			
			femaleItems.add( item );
			
		}
		
	}
	
	public CartItem getMaleItem( int index ) {
		
		if ( index < maleItems.size() ) {
		
			return maleItems.get( index );
		
		} else {
			
			return new CartItem();
			
		}
		
	}
	
	public CartItem getFemaleItem( int index ) {
		
		if ( index < femaleItems.size() ) {
		
			return femaleItems.get( index );
		
		} else {
			
			return new CartItem();
			
		}
		
	}
	
	
	public double getMaleTotalCost() {
		
		double total = 0.0;
		
		for ( int i=0; i<maleItems.size(); i++ ) {
			
			total += maleItems.get( i ).getTotal();
			
		}
		
		return total;
		
	}
	
	
	public int getMaleTotalItems() {
		
		int items = 0;
		
		for ( int i=0; i<maleItems.size(); i++ ) {
			
			items += maleItems.get( i ).getQuantity();
			
		}
		
		return items;
		
	}
	
	public double getFemaleTotalCost() {
		
		double total = 0.0;
		
		for ( int i=0; i<femaleItems.size(); i++ ) {
			
			total += femaleItems.get( i ).getTotal();
			
		}
		
		return total;
		
	}
	
	public int getFemaleTotalItems() {
		
		int items = 0;
		
		for ( int i=0; i<femaleItems.size(); i++ ) {
			
			items += femaleItems.get( i ).getQuantity();
			
		}
		
		return items;
		
	}
	
	
	public double getGrandTotal() {
		
		return getMaleTotalCost() + getFemaleTotalCost();
		
		
	}
	
	
	public int getTotalNumberOfItems() {
		
		return getMaleTotalItems() + getFemaleTotalItems();
		
	}

}
