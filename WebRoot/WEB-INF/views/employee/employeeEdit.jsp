<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工编辑页面</title>
    
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
    		<h3>员工编辑</h3>
    	</div>

    	<h3><a class="btn btn-success" href="emplist"><span class="glyphicon glyphicon-arrow-left"></span>返回</a></h3>
    	
    	<!-- 表单 -->
    	<form:form action="" method="POST" modelAttribute="employee">
    	  <div class="form-group">
		    <label for="id">ID序号：</label>
		  </div>
		  <div class="form-group">
		    <label for="lastName">姓名</label>
		    <form:input path="lastName" class="form-control" id="lastName" placeholder="姓名"></form:input>
		  </div>
		  <div class="form-group">
		    <label for="email">邮件地址</label>
		    <form:input path="email" class="form-control" id="email" placeholder="邮件地址"></form:input>
		  </div>
		  <div class="form-group">
		    <label for="birth">出生日期</label>
		    <form:input path="birth" class="form-control" id="birth" placeholder="出生日期"></form:input>
		  </div>
		  <div class="form-group">
		    <label for="dept">所属部门</label>
		    <input type="text" class="form-control" id="dept" placeholder="所属部门">
		  </div>
		  <button type="submit" class="btn btn-primary">提交</button>
		  <button type="reset" class="btn btn-danger">重置</button>
		</form:form>
    </div>
  </body>
</html>
