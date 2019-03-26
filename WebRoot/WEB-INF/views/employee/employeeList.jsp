<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Employee List</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
	
	<script type="text/javascript" src="script/jquery-1.9.1.min.js"></script>
	
	<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

  </head>
  
  <body>  	
    <div class="container text-center">
    	<h3>Employee List</h3>
    	<div class="row">
    		<table class="table table-striped table-bordered table-hover">
    			<tr>
    				<th>ID</th>
    				<th>LastName</th>
    				<th>Email</th>
    				<th>Birth</th>
    				<th>CreateTime</th>
    				<th>Dept-Name</th>
    				<th>编辑</th>
    				<th>删除</th>
    			</tr>
    			<c:forEach items="${emps }" var="emp">
    				<tr>
    					<td>${emp.id }</td>
    					<td>${emp.lastName }</td>
    					<td>${emp.email }</td>
    					<td>${emp.birth }</td>
    					<td>${emp.createTime }</td>
    					<td>${emp.dept.departName }</td>
    					<td><a href="">编辑</a> </td>
    					<td><a href="">删除</a> </td>
    				</tr>
    			</c:forEach>
			</table>
    	</div>
    </div>
  </body>
</html>
