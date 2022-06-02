package com.Core.medicine;

public class Ointment implements MedicineInfo {


	@Override
	public void displayLabel()
	{
		System.out.println(this.getClass().getSimpleName()+"-> for external use only");
		}
}