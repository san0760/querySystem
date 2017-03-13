package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class infoBeanCl
{
	public ArrayList getInfo(){
		Connection conn=null;
		connDB cd=new connDB();
		conn=cd.getConn();
		ArrayList al=new ArrayList();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm;ss");
		SimpleDateFormat sdf2=new SimpleDateFormat("yyyy-MM-dd");
		PreparedStatement ps=null;
		ResultSet rs=null;
		try
		{
			ps = conn.prepareStatement("select * from dbo.DayInCash_d");
			rs=ps.executeQuery();
			while(rs.next()){
				infoBean ib=new infoBean();
				ib.setDatime(sdf.format(rs.getDate(2)));
				ib.setBusyDate(sdf2.format(rs.getDate(3)));
				ib.setShopNo(rs.getString(4));
				ib.setPaymentNo(rs.getString(5));
				ib.setFlagNo(rs.getString(6));
				ib.setMoneyNum(rs.getDouble(7));
				ib.setTaxNum(rs.getDouble(8));
				ib.setSdNum(rs.getDouble(9));
				ib.setCeNum(rs.getDouble(10));
				ib.setFlagName(rs.getString(11));
				al.add(ib);
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return al;
	}
}
