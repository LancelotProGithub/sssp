<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
	
	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
	
	<script type="text/javascript" src="script/jquery-1.9.1.min.js"></script>
	
	<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		window.setTimeout(function(){
			location.href='/emplist'
		},2000);
	</script>

  </head>
  
  <body>
    	<div class="container">
    		<div class="row">
    			<div class="text-center">
    				<h2>失败！！请稍后再试！</h2>
    				<h5>页面将于2秒后跳转...</h5>
    			</div>
    		</div>
    	</div>
  </body>
</html>
