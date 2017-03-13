<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Query System-Login</title>
    <style type="text/css">
	.aaaa {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 16pt;
	color: #C60;
	font-weight: bold;
	}
	</style>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" />  	
	<link rel="stylesheet" type="text/css" href="styles.css">
	

  </head>
  
  <body>
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center" valign="middle" class="aaaa"><p>&nbsp;</p>
		<p>Welcome To Query System,Please Login</p><hr>
		<p>&nbsp;</p>
		<p>&nbsp;</p></td>
	</tr>
	<tr>
		<td align="center" valign="middle" bgcolor="#FFFFFF">
		<form id="form1" name="form1" method="post" action="loginClServlet">
			<p> <span class="aaaa">USERNAME</span>:
			<input type="text" name="username" id="username" />
			</p>
			<p><span class="aaaa">PASSWORD</span>:
			<input type="password" name="password" id="password" />
			</p>
			<p>
				<input name="login" type="submit" class="aaaa" id="login" value="LOGIN" />
			</p>
		</form></td>
	</tr>
</table>
  </body>
 </html>
