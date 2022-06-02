package com.Core.day1;

public class Rectangle {


    public int length;
    public int breadth;
    
    public Rectangle(int length, int breath)
    {
  	  this.length= length;
  	  this.breadth= breath;
	  }
    
    public int getLength() {
  		return length;
  	}
  	public void setLength(int length) {
  		this.length = length;
  	}
  	public int getBreadth() {
  		return breadth;
  	}
  	public void setBreadth(int breadth) {
  		this.breadth = breadth;
  	}


  	public void calculateArea() 
  	{
  		int a=length*breadth;
  		System.out.println("Area of the Rectangular "+a);
  	}
  	
	public static void main(String[] args) 
	{
		Rectangle r=new Rectangle(10,14);
		Rectangle r1=new Rectangle(15,4);
		Rectangle r2=new Rectangle(26,14);
		Rectangle r3=new Rectangle(7,6);
		Rectangle r4=new Rectangle(9,14);

		r.calculateArea();
		r1.calculateArea();
		r2.calculateArea();
		r3.calculateArea();
		r4.calculateArea();
		
		System.out.println(r1.length);
		System.out.println(r.breadth);

	}

}