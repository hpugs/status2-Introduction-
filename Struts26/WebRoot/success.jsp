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
  			
  			<li>
  				FieldError:<s:fielderror fieldName="fielderror.text" theme="simple"></s:fielderror><br/>
  				ActionError:<s:actionerror theme="simple"/><br/>
  				ActionMessage:<s:actionmessage theme="simple"/><br/>
  			</li>
  			
  			<s:debug></s:debug>
  		</ol>
  </body>
</html>
