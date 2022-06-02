package com.Core.day1;

import java.util.Scanner;

public class EvenNumber {
	public static void main(String[] args) 
	{
		int n,i;
       
       Scanner sc = new Scanner(System.in);
        
       System.out.print("Enter value of n: ");
       n = sc.nextInt();
        
       for(i=1; i<=n; i++)
       {
           if(i%2==0)
               System.out.print(i+" ");
       }   

       System.out.println();
		

	}

}