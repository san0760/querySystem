<%@page import="com.model.infoBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList al=(ArrayList)request.getAttribute("info");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>QUERY</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <table border="1">
     	<tr><th>Datime</th><th>BusyTime</th><th>ShopNo</th><th>PaymentNo</th><th>FlagID</th><th>MoneyNum</th><th>TaxNum</th><th>sd_Num</th><th>ce_Num</th><th>FlagName</th></tr>
     	<%for(int i=0;i<al.size();i++){
     		infoBean ib=(infoBean)al.get(i);
     	 %>
     	 	
   		<tr><td><%=ib.getDatime() %></td><td><%=ib.getBusyDate() %></td><td><%=ib.getShopNo() %></td><td><%=ib.getPaymentNo() %></td><td><%=ib.getFlagNo() %></td><td><%=ib.getMoneyNum() %></td>
   		<td><%=ib.getTaxNum() %></td><td><%=ib.getSdNum() %></td><td><%=ib.getCeNum() %></td><td><%=ib.getFlagName() %></td>
   		<%} %>
     </table>
  </body>
</html>
