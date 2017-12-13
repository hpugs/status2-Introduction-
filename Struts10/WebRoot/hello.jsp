<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    Hello Struts2<br>
    name:<%=request.getAttribute("name") %><br>
    password:<%=request.getAttribute("password") %><br><br>
    
    name:<%=session.getAttribute("name") %><br>
    password:<%=session.getAttribute("password") %><br><br>
    
    name:<%=application.getAttribute("name") %><br>
    password:<%=application.getAttribute("password") %><br>
  </body>
</html>
