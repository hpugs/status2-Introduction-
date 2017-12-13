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
  			<li>访问List:<s:property value="users" /></li>
  			<li>访问List中某个元素users[1]:<s:property value="users[1]" /></li>
  			<li>访问List中某个属性的集合users.{age}:<s:property value="users.{age}" /></li>
  			<li>访问List中某个属性集合中的特定值users.{age}[2]：<s:property value="users.{age}[2]" /></li>
  			<hr/>
  			<li>访问Set:<s:property value="dogs" /></li>
  			<li>访问Set中的某个元素:<s:property value="dogs[1]" /><span style="color:red">set中的数据是无序的，所以没办法获取set中的具体元素</span></li>
  			<hr/>
  			<li>访问Map:<s:property value="dogMap" /></li>
  			<li>访问Map某个元素:<s:property value="dogMap.dog11" />|<s:property value="dogMap.dog22" />|<s:property value="dogMap.dog33" /></li>
  			<li>访问Map所有Key:<s:property value="dogMap.keys" /></li>
  			<li>访问Map所有Value:<s:property value="dogMap.values" /></li>
  			<li>访问Map容器大小:dogMap.size<s:property value="dogMap.size" />|users.size<s:property value="users.size" />|dogs.size<s:property value="dogs.size" /></li>
  			<li>访问Map容器大小:dogMap.size()<s:property value="dogMap.size()" />|users.size()<s:property value="users.size()" />|dogs.size()<s:property value="dogs.size()" /></li>
  			<hr/>
  			<li>投影（过滤）:<s:property value="users.{?#this.age == 1}.{age}" />-----?:过滤</li>
  			<li>投影（过滤）:<s:property value="users.{?#this.age == 1}.{age}[0]" />-----?:过滤</li>
  			<li>投影:<s:property value="users.{^#this.age > 1}.{age}" />-----^:开头</li>
  			<li>投影:<s:property value="users.{$#this.age > 1}.{age}" />-----#:结尾</li>
  			<li>投影:<s:property value="users.{$#this.age > 1}.{age} == null" />------判断集合结果是否为空</li>
  			<hr/>
  			<li>[]:<s:property value="[0]" /></li>
  			<li>[]:<s:property value="[0].age" /></li>
  			<li>[]:<s:property value="[1]" /></li>
  			<li>[]:<s:property value="[1].cat.Eat()" /></li>
  			<li>[]:<s:property value="[1].name" /></li>
  			<li>[]:<s:property value="[1].users" /></li>
  			<li><s:debug></s:debug></li>
  		</ol>
  </body>
</html>
