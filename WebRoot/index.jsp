<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>This is HOME page</title>
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
  			<div class="row">
    			<a href="emplist">跳转至员工列表</a>
    		</div>
    	</div>
  </body>
</html>
