package com.project.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public final class Jdbc {
	private String url = "jdbc:mysql://localhost:3306/clients";
	private String uName = "root";
	private String uPW = "root";	
	private static Jdbc instance = null;

	private Jdbc() {}

	public static Jdbc getInstance() {
		if (instance == null) {
			synchronized (Jdbc.class) {
				if (instance == null) {
					instance = new Jdbc();
				}
			}
		}
		return instance;
	}

	Connection con = null;
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Connection getCon() throws SQLException {

		return DriverManager.getConnection(url, uName, uPW);
	}

	public void closeAll(Connection con, Statement st, ResultSet rs) {
		try {
			if (con != null) {
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (st != null) {
				try {
					st.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					if (rs != null) {
						try {
							rs.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			}
		}
	}
}

