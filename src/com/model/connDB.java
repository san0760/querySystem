package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connDB
{
	public Connection getConn(){
		Connection conn=null;
		try
		{
			Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
			conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://47.88.148.20:1433;DatabaseName=ESGMS"
					,"sa","170105");
		} catch (ClassNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}	
