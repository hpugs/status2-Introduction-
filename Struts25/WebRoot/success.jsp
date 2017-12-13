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
	  				bran内访问：<s:property value="name"/><br/>
	  			</s:bean>
	  			bran外访问：<s:property value="name"/>
  			</li>
  			
  			<li>bean 定义bean，并使用parama来设定新的属性值：<br/>
	  			<s:bean name="com.edu.model.User" var="hpugs">
	  				<s:param name="name" value="'rbb'" ></s:param>
	  				bean内访问：<s:property value="#hpugs.name"/><br/>
	  				bean中查看debug:<s:debug></s:debug>
	  			</s:bean>
	  			bean外访问：<s:property value="#hpugs.name"/>
	  			<s:debug></s:debug>
  			</li>
  			
  			<li>bean中的对象生命周期在bean内，可以通过var标签来将对象设置到值栈中</li>
  			
  			<hr/>
  			
  			<li>include include1.html英文内容：<s:include value="/include1.html"/></li>
  			
  			<li>include include2.html中文内容：<s:include value="/include2.html"/></li>
  			
  			<li>include include22.html中文内容（页面设置字符编码为utf-8）：<s:include value="/include22.html"/></li>
  			
  			<li>include include3.jsp英文内容：<s:include value="/include3.jsp"/></li>
  			
  			<li>include include4.jsp中文内容：<s:include value="/include4.jsp"/></li>
  			
  			<li>html中包含中文使用include引用时，无法显示，通过设置字符编码为utf-8完美解决，设置为GBK仍然无法显示。通过修改浏览器的默认编码方式，显示没有用，查看修改工程的编码格式，完美解决，所以使用include标签是，一定要注意页面编码与工程编码保持一致</li>
  			<li>jsp文件引用尚未发现问题，即使编码格式不一致，任然可以显示</li>
  			
  			<hr/>
  			
  			<li>if elseif else: age=<s:property value="#parameters.age"/>  此种写法不建议使用 </li>
  			<li>if elseif else: age=<s:property value="#parameters.age[0]"/> </li>
  			<li>actionMessages:<s:property value="actionMessages"/> </li>
  			<li>
  				不加[0]:
  				<s:if test="#parameters.age < 18">to young!</s:if>
  				<s:elseif test="#parameters.age < 60">great</s:elseif>
  				<s:else>old</s:else>
  			</li>
  			<li>
  				加[0]:
  				<s:if test="#parameters.age[0] < 18">to young!</s:if>
  				<s:elseif test="#parameters.age[0] < 60">great</s:elseif>
  				<s:else>old</s:else>
  			</li>
  			<li>
  				parameters.age == null:<s:if test="#parameters.age[0] == null">true</s:if><s:else>false</s:else><br/>
  				parameters.aaa == null:<s:if test="#parameters.aaa == null">true</s:if>
  			</li>
  			<s:debug></s:debug>
  		</ol>
  </body>
</html>
