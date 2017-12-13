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
	<script src="<%=basePath%>/js/jquery-3.1.1.min.js"></script>
  </head>
  
  <body>
    <ol>
    	<li rel="add">添加</li>
    	<li rel="del">删除</li>
    	<li rel="update">修改</li>
    	<li rel="getUser">查询单个</li>
    	<li rel="getUserList">查询一批</li>
    </ol>
  </body>
  <script type="text/javascript">
 	$("ol li").bind("click", function(){
 		var act = $(this).attr("rel");
 		window.location.href = "<%=basePath%>/user/" + act;
 	});
  </script>
</html>

