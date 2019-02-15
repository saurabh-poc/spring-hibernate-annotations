<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My Spring | Home</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.1.js" />"></script>


</head>

<script type="text/javascript">
	$(document).ready(function() {
		// Login button clicked
		/* $("#forLoginPage").click(function() {
			alert("Login");
			
			// Ajax call for the controller to invoke Login.jsp
			
			No need as we are moving to new page. No process on current page.
		}); */
		
		
		// Registration button clicked
		/* $("#forRegistrationPage").click(function() {
			alert("Regis");
			
			// Ajax call for the controller to invoke Registration.jsp
			
			No need as we are moving to new page. No process on current page.
			
		}); */
	});
</script>

<body>
	<img src="<c:url value="/resources/images/header.png" />" alt="" style="width: 100%;"/>
	<div style="margin-left: 500px; margin-top: 20px;">
		<input type="button" id="forLoginPage" name="forLoginPage"
			value="Login" onclick="window.location.href='login'"> <input type="button" id="forRegistrationPage"
			name="forRegistrationPage" value="Registration" onclick="window.location.href='registration'">
		
		<!-- This button redirects to a new page which shows data of user selected from a dropdown list -->
		<input type="button" id="showUserData" name="showUserData" value="Show User Data">	
	</div>
</body>
</html>
