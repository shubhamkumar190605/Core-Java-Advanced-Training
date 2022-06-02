package com.Core.day1;

public class MainMethod {

	public void createBook() {
		Book s[] = new Book[4];		 
	    s[0] = new Book("Java Programing", 350);
	    s[1] = new Book("Let Us C", 200);
	    s[2] = new Book("C++", 550);
	    s[3] = new Book("Python", 300);
	    for(int i = 0; i<s.length; i++) {
		         s[i].display();
	    }
	}
	public void showBooks() {
	  	createBook();
	}
	public static void main(String args[])  {
	    MainMethod c1 = new MainMethod();  
		c1.showBooks();
	   
	      }
}