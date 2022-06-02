package com.Core.medicine;

public class Tablet implements MedicineInfo {

	@Override
	public void displayLabel()
	{
		System.out.println(this.getClass().getSimpleName()+"-> store in a cool dry place");
		}
	}