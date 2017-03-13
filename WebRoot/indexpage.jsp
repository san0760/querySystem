<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Query System-Index</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />  
    <meta http-equiv="Cache-Control" content="no-cache"/>  
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0"/> 
	<link rel="stylesheet" type="text/css" href="styles.css">
	

  </head>
  <body>
<table width="100%" height="100%" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td width="50%" height="50%" align="left" valign="middle" ><img src="images/a.jpg" width="190" height="292" usemap="#Map" /></td>
		<td width="50%" height="50%" align="right" valign="middle" ><img src="images/b.jpg" width="190" height="292" usemap="#Map2" /></td>
	</tr>
	<tr>
		<td width="50%" height="50%" align="left" valign="middle" ><img src="images/c.jpg" width="190" height="292" usemap="#Map3" /></td>
		<td width="50% "height="50%" align="right" valign="middle" ><img src="images/d.jpg" width="190" height="292" usemap="#Map4" /></td>
	</tr>
</table>
<map name="Map" id="Map">
	<area shape="rect" coords="3,6,188,290" href="chooseStoreServlet?flag=2" />
</map>
<map name="Map2" id="Map2">
	<area shape="rect" coords="4,6,189,287" href="chooseStoreServlet?flag=1" />
</map>
<map name="Map3" id="Map3">
	<area shape="rect" coords="2,5,187,289" href="#" />
</map>
<map name="Map4" id="Map4">
	<area shape="rect" coords="3,6,186,287" href="#" />
</map>
</body>
</html>
