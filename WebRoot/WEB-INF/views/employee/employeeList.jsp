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
    <div class="container">
    	<div class="text-center">
    		<h3>员工列表</h3>
    	</div>
    	<!-- 新增员工的按钮 -->
    	<h3><a class="btn btn-success" href="emp/new"><span class="glyphicon glyphicon-plus"></span>新增员工</a></h3>
    	<div class="row">
    		<table class="table table-striped table-bordered table-hover">
    			<tr>
    				<th>序号ID</th>
    				<th>姓名</th>
    				<th>邮件地址</th>
    				<th>出生日期</th>
    				<th>系统-创建时间</th>
    				<th>所属部门</th>
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
    					<td><a href="emp/${emp.id }">编辑</a> </td>
    					<td><a href="">删除</a> </td>
    				</tr>
    			</c:forEach>
			</table>
    	</div>
    </div>
  </body>
</html>
