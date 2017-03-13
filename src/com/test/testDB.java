package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class testDB
{

	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try
		{
			Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
			conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://47.88.148.20:1433;DatabaseName=ESGMS"
					,"sa","170105");
			ps=conn.prepareStatement("select * from DayInCash_d");
			rs=ps.executeQuery();
			if(rs.next()){
				System.out.println(rs.getInt(1));
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm;ss");
				System.out.println(sdf.format(rs.getDate(2)));
				SimpleDateFormat sdf2=new SimpleDateFormat("MM-dd");
				System.out.println(sdf2.format(rs.getDate(3)));
				System.out.println(rs.getString(4));
				System.out.println(rs.getString(5));
				System.out.println(rs.getString(6));
				System.out.println(rs.getDouble(7));
				System.out.println(rs.getDouble(8));
				System.out.println(rs.getDouble(9));
				System.out.println(rs.getDouble(10));
				System.out.println(rs.getString(11));
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try
			{
				rs.close();
				ps.close();
				conn.close();
			} catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}
