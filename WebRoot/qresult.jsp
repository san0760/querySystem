<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.model.infoBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String flag=(String)request.getAttribute("Sflag");
String shop=null;
if(flag!=null && flag.equals("1")){
	request.getSession().setAttribute("flag", "001");
	request.getSession().setAttribute("shopflag", "M mall");
	shop="M mall";
}
if(flag!=null && flag.equals("2")){
	request.getSession().setAttribute("flag", "002");
	request.getSession().setAttribute("shopflag", "ACV");
	shop="ACV";
}
ArrayList al=(ArrayList)request.getAttribute("al");
Date d=new Date();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
String fromtime =sdf.format(d);
if(request.getParameter("fromtime")!=null)
  fromtime = request.getParameter("fromtime");
String totime = sdf.format(d);
if(request.getParameter("totime")!=null)
  totime = request.getParameter("totime");
String flagname = "All";
if(request.getParameter("flagname")!=null)
  flagname = request.getParameter("flagname");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Query System-Result</title>
    <style type="text/css">
	.aaaa {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 16pt;
	color: #000000;
	font-weight: bold;
	}
.a3 {
	font-size: 16pt;
	font-family: Verdana, Geneva, sans-serif;
	color: #000000;
}
.a4 {
	font-size: 20pt;
	font-family: Verdana, Geneva, sans-serif;
	color: #000000;
}

.a5 {
	font-size: 12pt;
}
.a6 {
	font-size: 20pt;
	font-family: Verdana, Geneva, sans-serif;
	color: #C60;
}
</style>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />  
    <meta http-equiv="Cache-Control" content="no-cache"/>
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
  <body bgcolor="#C0C0C0">
  <script language="JavaScript" type="text/javascript" src="My97DatePicker\WdatePicker.js"></script> 
		<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="a5">
	<tr>
		<td align="center" class="aaaa">Query Result for <%=(String)request.getSession().getAttribute("shopflag") %> </td>
	</tr>
	
	<tr align="center">
		<td class="a3">
		<form id="form1" name="form1" method="post" action="resultServlet">
		Time:From
		<input id="d12" type="text" name="fromtime"/>
		<img onclick="WdatePicker({el:'d12',lang:'en'})" src="My97DatePicker\skin\datePicker.gif" width="16" height="22" align="absmiddle">
			<!--  <select name="fromtime" id="fromtime">
				<option>2016-12</option>
				<option>2017-01</option>
				<option>2017-02</option>
				<option>2017-03</option>
				<option>2017-04</option>
				<option>2017-05</option>
				<option>2017-06</option>
				<option>2017-07</option>
				<option>2017-08</option>
				<option>2017-09</option>
				<option>2017-10</option>
				<option>2017-11</option>
				<option>2017-12</option>
			</select> -->
			To
			<input id="d13" type="text" name="totime"/>
			<img onclick="WdatePicker({el:'d13',lang:'en'})" src="My97DatePicker\skin\datePicker.gif" width="16" height="22" align="absmiddle">
			<!--  <select name="totime" id="totime">
				<option>2017-01</option>
				<option>2017-02</option>
				<option>2017-03</option>
				<option>2017-04</option>
				<option>2017-05</option>
				<option>2017-06</option>
				<option>2017-07</option>
				<option>2017-08</option>
				<option>2017-09</option>
				<option>2017-10</option>
				<option>2017-11</option>
				<option>2017-12</option>
				<option>2018-01</option>
			</select>/-->
			FlagName:
			<select name="flagname" id="flagname">
				<option>All</option>
				<option>Money Recharge</option>
				<option>Sale Ticket</option>
				<option>Other Sales</option>
			</select>
			<input name="submit" type="submit" class="a4" id="submit" value="SUBMIT" /><hr>
		</form></td>
	</tr>
		<tr><td align="center">
			<table width="90%" align="center" style="text-align:center">
				<tr class="a4"><th class="a4">Busy<br>Time</th><th>Flag<br>ID</th><th>Money<br>Num</th><th>Tax<br>Num</th><th>sd<br>Num</th><th>ce<br>Num</th><th>Flag<br>Name</th></tr>
				<%float moneynum=0;
				float taxnum=0;
				float sdnum=0;
				float cenum=0;
				if(al!=null){
				for(int i=0;i<al.size();i++){
     			infoBean ib=(infoBean)al.get(i); 
     			moneynum+=ib.getMoneyNum();
     			taxnum+=ib.getTaxNum();
     			sdnum+=ib.getSdNum();
     			cenum+=ib.getCeNum();
     			}}%>
				<tr class="a6"><td class="a6">Total</td><td>/</td><td><%=moneynum %></td>
   				<td><%=taxnum %></td><td><%=sdnum %></td><td><%=cenum %></td><td>/</td>
				<%int j=2;if(al!=null){ %>
				<%for(int i=0;i<al.size();i++){
     			infoBean ib=(infoBean)al.get(i);
     			int t=j%2;j++;
     	 		%>
     	 		<%if(t==0){ %>
   				<tr class="a4" bgcolor="#09F"><td class="a4"><%=ib.getBusyDate() %></td><td><%=ib.getFlagNo() %></td><td><%=ib.getMoneyNum() %></td>
   				<td><%=ib.getTaxNum() %></td><td><%=ib.getSdNum() %></td><td><%=ib.getCeNum() %></td><td><%=ib.getFlagName() %></td>
   				<%}else{ %>
   				<tr class="a4"><td class="a4"><%=ib.getBusyDate() %></td><td><%=ib.getFlagNo() %></td><td><%=ib.getMoneyNum() %></td>
   				<td><%=ib.getTaxNum() %></td><td><%=ib.getSdNum() %></td><td><%=ib.getCeNum() %></td><td><%=ib.getFlagName() %></td>
   				<%} %>
   				<%} %>
   				<%} %>
			</table>
	</td></tr>
</table>
</body>
  </body>
</html>
<script>
	var selvalue = "<%=fromtime %>";
	document.form1.fromtime.value= selvalue;
	var selvalue = "<%=totime %>";
	document.form1.totime.value= selvalue;
	var selvalue = "<%=flagname %>";
	document.form1.flagname.value= selvalue;
</script>
