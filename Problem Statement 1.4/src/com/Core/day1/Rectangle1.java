package com.Core.day1;

import java.util.Scanner;

public class Rectangle1 {

	 double length; 
	    double breadth; 
	    double area; 
	    double parameter;
	    
	    public double getLength() {
			return length;
		}

		public void setLength(int length) {
			this.length = length;
		}

		public double getWidth() {
			return breadth;
		}

		public void setWidth(int width) {
			this.breadth = breadth;
		}

		
	    public Rectangle1()
	    {
	    	length = 1;
	    	breadth= 1;
	    }

	   public void input() {
	        Scanner in = new Scanner(System.in);
	        System.out.print("Enter length of rectangle: ");
	        length = in.nextDouble();
	        System.out.print("Enter breadth of rectangle: ");
	        breadth = in.nextDouble();
	    }
	    
	    void  areaRectangle()
	    {
	        area = length * breadth;
	       
	    }
	 
	     void  perimeterRectangle()
	    {
	    	 parameter = 2*(length + breadth);
	       
	    }

	    void display() {
	    	if(length>0 && length<20)
	        {
	        System.out.println("Area of Rectangle = " + area);
	        System.out.println("Parameter of Rectangle = " +parameter);}
	       
	        }

	    public static void main(String args[]) {
	    	
	        Rectangle1 s1 = new Rectangle1();
	        s1.input();
	        s1.areaRectangle();
	        s1.perimeterRectangle();
	        s1.display();
	        System.out.println(" ");
	        
	        Rectangle1 s2 = new Rectangle1();
	        s2.input();
	        s2.areaRectangle();
	        s2.perimeterRectangle();
	        s2.display();
	        System.out.println(" ");
	        
	        Rectangle1 s3 = new Rectangle1();
	        s3.input();
	        s3.areaRectangle();
	        s3.perimeterRectangle();
	        s3.display();
	        System.out.println(" ");
	        
	       
	    }
	}