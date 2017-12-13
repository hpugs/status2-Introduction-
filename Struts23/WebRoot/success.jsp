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
  			<li>s:property:<s:property value="name" /></li>
  			<li>s:property 取值为字符串：<s:property value="'name'" /></li>
  			<li>s:property 设定默认字符串：<s:property value="admin" default="管理员"/></li>
  			<li>s:property 设定HTML:<s:property value="'<span>按钮</span>'" escape="true"/></li>
  			<li>s:property 设定HTML:<s:property value="'<span>按钮</span>'" escape="false"/></li>
  			<hr/>
  			<li>set 设定adminName值（默认为request和ActionContext）:<s:set var="adminPassword" value="password"/></li>
  			<li>set 从request取值：<s:property value="#request.adminPassword"/></li>
  			<li>set 从ActionContext取值：<s:property value="#adminPassword"/></li>
  			
  			<li>set 设定范围(2.1中name已经删除)：<s:set name="pagePassword" value="password" scope="page"/></li>
  			<li>set 从相应范围取值：<%=pageContext.getAttribute("pagePassword") %></li>
  			
  			<li>set 设定范围（2.1之后的版本都是采用var）：<s:set var="varPassword" value="password" scope="session"/></li>
  			<li>set 从相应范围取值：由于设置数据范围是session所以Property没办法得到值<s:property value="#varPassword"/></li>
  			<li>set 从相应范围取值：<s:property value="#session.varPassword"/></li>
  			
  			<hr/>
  			<li>bean 定义bean，并使用parama来设定新的属性值：
	  			<s:bean name="com.edu.model.User">
	  				<s:param name="name" value="'张三'"></s:param>
	  				<s:property value="name"/><br/>
	  			</s:bean>
  			</li>
  			
  			<li>bean 定义bean，并使用parama来设定新的属性值：
	  			<s:bean name="com.edu.model.User" var="hpugs">
	  				<s:param name="name" value="'rbb'" ></s:param>
	  				<s:property value="#hpugs.name"/>
	  				bean中查看debug:<s:debug></s:debug>
	  			</s:bean>
	  			<s:debug></s:debug>
  			</li>
  		</ol>
  </body>
</html>
