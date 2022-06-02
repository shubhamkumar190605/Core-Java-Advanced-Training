package com.Core.medicine;

public class Syrup implements MedicineInfo {

	@Override
	public void displayLabel()
	{
		System.out.println(this.getClass().getSimpleName()+"-> for external use only");
		}
}