package com;

class Countert implements Runnable {

	Storaget st;

	public Countert(Storaget store) {
		st = store;
	}

	@Override
	public void run() {
		synchronized (st) {
			for (int i = 0; i < 10; i++) {
				while (!st.isPrinted()) {
					try {
						st.wait();
					} catch (Exception e) {
					}
				}
				st.setValue(i);
				st.setPrinted(false);
				st.notify();
			}
		}
	}

}

class Printert implements Runnable {
	Storaget st;

	public Printert(Storaget st) {
		this.st = st;
	}

	@Override
	public void run() {
		synchronized (st) {
			for (int i = 0; i < 10; i++) {
				while (st.isPrinted()) {
					try {
						st.wait();
					} catch (Exception e) {
					}
				}
				System.out.println(Thread.currentThread().getName() + " " + st.getValue());
				st.setPrinted(true);
				st.notify();
			}
		}
	}

}

class Storaget {
	int i;
	boolean printed = true;

	public void setValue(int i) {
		this.i = i;
	}

	public int getValue() {
		return this.i;
	}

	public boolean isPrinted() {
		return printed;
	}

	public void setPrinted(boolean p) {
		printed = p;
	}
}

public class AddSynchronizationable {
	public static void main(String[] args) {
		Storaget st = new Storaget();
		Countert c = new Countert(st);
		Printert p = new Printert(st);
		new Thread(c, "Counter").start();
		new Thread(p, "Printer").start();
	}

}
