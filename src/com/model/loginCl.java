package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginCl
{
	public boolean loginCheck(String username,String password1){
		boolean flag=false;
		String password2=null;
		connDB cd=new connDB();
		Connection conn=cd.getConn();
		PreparedStatement ps=null;
		ResultSet rs=null;
		try
		{
			ps = conn.prepareStatement("select top 1 Password from Users where UserName='"+username+"'");
			rs=ps.executeQuery();
			if(rs.next())
				password2=rs.getString(1);
			if(password1.equals(password2)){
				flag=true;
			}else{
				flag=false;
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
		
	}
}
