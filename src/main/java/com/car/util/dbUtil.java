package com.car.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbUtil {
	public static Connection getDBconnection() {

		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Carz", "root", "admin123");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;

	}
}
