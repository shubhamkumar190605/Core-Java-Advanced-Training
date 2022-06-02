package com.Core.day1;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;
import java.util.Scanner;

//import javax.swing.text.html.HTMLDocument.Iterator;

public class EmployeeCollection {

	 public static void main(String[] args) 
	 {
	      
	      List<EmployeeClass> c = new ArrayList<EmployeeClass>();
	      Scanner s = new Scanner(System.in);
	      Scanner s1 = new Scanner(System.in);
	      int ch;
	      do
	      {
	         System.out.println("1.INSERT");
	         System.out.println("2.DISPLAY");
	         System.out.println("3.SEARCH");
	         
	         System.out.print("Enter Your Choice : ");
	         ch = s.nextInt();

	         switch(ch)
	         {
	            case 1:
	               System.out.print("Enter Empno : ");
	               int eno = s.nextInt();
	               System.out.print("Enter EmpName : ");
	               String ename = s1.nextLine();
	               System.out.print("Enter Salary : ");
	               int salary = s.nextInt();

	               c.add(new EmployeeClass(eno,ename,salary));
	            break;
	            
	            case 2:
	               System.out.println("----------------------------");
	               Iterator<EmployeeClass> i = c.iterator();
	               while(i.hasNext()){
	                  EmployeeClass e = i.next(); 
	                  System.out.println(e);
	               }
	               System.out.println("----------------------------");
	            break;
	            
	            case 3:
	               boolean found = false;
	               System.out.print("Enter Empno to Search :");
	               int empno = s.nextInt();
	               System.out.println("----------------------------");
	               i = c.iterator();
	               while(i.hasNext()){
	                  EmployeeClass e = i.next();
	                  if(e.getEmpno() == empno)  {
	                     System.out.println(e);
	                     found = true;
	                  }
	               }
	               
	               if(!found){
	                  System.out.println("Record Not Found");
	               }
	               System.out.println("----------------------------");
	            break;
  
	         }
	      }while(ch!=0);
	   }
}