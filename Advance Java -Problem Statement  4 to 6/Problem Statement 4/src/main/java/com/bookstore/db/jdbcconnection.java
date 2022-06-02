package com.bookstore.db;

import java.sql.DriverManager;


import com.mysql.jdbc.Connection;

public class jdbcconnection {
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			if(con==null) {
				Class.forName("com.mysql.jdbc.Driver");
				con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/alidb","root","Aashiyana@11");
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
	
}
