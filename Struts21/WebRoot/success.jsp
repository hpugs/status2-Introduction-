<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
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
  		<ol>  			
  			<li>访问静态属性：YEAR:<s:property value="@com.edu.action.OGNL@YEAR" /></li>
  			<li>访问静态方法：GetDate():<s:property value="@com.edu.action.OGNL@GetDate()" /></li>
  			<li>访问Max的静态方法：max(1,1):<s:property value="@@max(1,1)" /></li>
  			
  			<li>访问普通对象的构造方法：new User(8):<s:property value="new com.edu.model.User(8)" /></li>
  			<li><s:debug></s:debug></li>
  		</ol>
  </body>
</html>
