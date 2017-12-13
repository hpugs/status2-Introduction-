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
    
    <title>国际化</title>
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
    <form action="Lang" method="post">
    	<s:property value="getText('input.name')" /><input type="text" name="name" placeholder="请输入姓名"><br/>
    	<s:property value="getText('input.password')" /><input type="text" name="password" placeholder="请输入密码"><br/>
    	<input type="submit" value="登录"><br/>
    	<a href="Lang?request_locale=en_US">US</a> | <a href="Lang?request_locale=zh_CN">CN</a>
    </form>
  </body>
</html>
