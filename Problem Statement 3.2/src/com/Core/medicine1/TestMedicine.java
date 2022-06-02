package com.Core.medicine1;

import java.util.Scanner;

import com.Core.medicine.MedicineInfo;
import com.Core.medicine.Ointment;
import com.Core.medicine.Syrup;
import com.Core.medicine.Tablet;

public class TestMedicine {

	public static void main(String[] args)
	{
       MedicineInfo[] medicines = new MedicineInfo[10];

       Scanner scannerObj = new Scanner (System.in);

       int count = 0;
       int len = medicines.length;

       while (true)
       {
         if (count == len)
          break;

           System.out.print("Enter 1,2 or 3: ");

            int choice = scannerObj.nextInt();
             switch(choice) 
             {
               case 1: medicines[count] =  new Tablet ();
                 break;

                case 2: medicines[count] = new Syrup();
                   break;

                  case 3: medicines[count] =  new Ointment();
                    break;

                   default:System.out.println("wrong Choice !!");
                     continue;
               }
                  count+=1;
       }     
       
       System.out.println(" see your Medicine behaviour below");

    		   for (MedicineInfo medicine:medicines)
    		   {
    			   medicine.displayLabel();
    		   }
    		   scannerObj.close();
	}
}