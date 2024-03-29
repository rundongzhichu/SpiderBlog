package com.spiderblog.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnection {
	


	private final String Driver = "com.mysql.jdbc.Driver";

	private final String URL = "jdbc:mysql://localhost:3306/test";

	private final String USER = "root";

	private final String PASSWORD = "123456";

	private Connection conn = null;

	public dbConnection() throws SQLException {
		try {
			Class.forName(Driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		this.conn = DriverManager.getConnection(URL, USER, PASSWORD);
	}

	public Connection getConnection() {
		return conn;
	}

	public void close() {
		if (this.conn != null) {
			try {
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}