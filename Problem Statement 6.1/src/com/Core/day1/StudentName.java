package com.Core.day1;

import java.util.*;
class StudentName{
  private int studentid;
  private String studentname;
  

  StudentName(int studentid, String studentname){
     this.studentid = studentid;
     this.studentname = studentname;
     
  }

  public int getstudentid(){
     return studentid;
  }
 
  public String getstudentname(){
     return studentname;
  }

  public String toString(){
     return studentid+" "+studentname;
  }


  public static void main(String[] args) {
     
     List<StudentName> c = new ArrayList<StudentName>();
     Scanner s = new Scanner(System.in);
     Scanner s1 = new Scanner(System.in);
     int ch;
     do{
        System.out.println("1.INSERT");
        System.out.println("2.DISPLAY");
        System.out.println("3.SEARCH");
        System.out.println("4.DELETE");
       
        System.out.print("Enter Your Choice : ");
        ch = s.nextInt();

        switch(ch){
           case 1:
              System.out.print("Enter student id : ");
              int sid = s.nextInt();
              System.out.print("Enter student name : ");
              String sname = s1.nextLine();
             

              c.add(new StudentName(sid,sname));
           break;
           case 2:
              System.out.println("----------------------------");
              Iterator<StudentName> i = c.iterator();
              while(i.hasNext()){
                 StudentName e = i.next(); 
                 System.out.println(e);
              }
              System.out.println("----------------------------");
           break;
           case 3:
              boolean found = false;
              System.out.print("Enter Empno to Search :");
              int studentid = s.nextInt();
              System.out.println("----------------------------");
              i = c.iterator();
              while(i.hasNext()){
                 StudentName e = i.next();
                 if(e.getstudentid() == studentid)  {
                    System.out.println(e);
                    found = true;
                 }
              }
              
              if(!found){
                 System.out.println("Record Not Found");
              }
              System.out.println("----------------------------");
           break;

           case 4:
              found = false;
              System.out.print("Enter Empno to Delete :");
              studentid = s.nextInt();
              System.out.println("----------------------------");
              i = c.iterator();
              while(i.hasNext()){
                 StudentName e = i.next();
                 if(e.getstudentid() == studentid)  {
                    i.remove();
                    found = true;
                 }
              }
              
              if(!found){
                 System.out.println("Record Not Found");
              }else{
                 System.out.println("Record is Deleted Successfully...!");
              }

              System.out.println("----------------------------");
           break;
          
           
        }
     }while(ch!=0);
  }
}