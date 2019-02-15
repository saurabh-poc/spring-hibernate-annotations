<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My Spring | Registration</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
	  <sp:form modelAttribute="regisModel">
	  
	  	<div><label>Name : </label><sp:input id="userName" path="name" /> </div>
	  	
	    <%-- <div style="margin-top: 10px;"><label>State : </label><sp:select id="state" path="state" items="${vars.stateList}"></sp:select>  </div> --%>
	    <!-- University will change as per the selected state -->
	    <%-- <div style="margin-top: 10px;"><label>University : </label><sp:select id="univSelect" path="university" items="${vars.universityList}"></sp:select></div> --%> 
	    
	    <div><label>Gender : </label><sp:radiobutton path="gender" id="male" value="M"/>Male    <sp:radiobutton path="gender" id="female" value="F" cssStyle="margin-left: 10px;"/>Female</div>
	    <div><label>Address : </label><sp:input id="address" path="address"/> </div>
	    
	    <!-- <div>Address Proof Document : <input type="file" id="addProofDoc" name="addProofDoc" style="margin-left: 10px;"> </div> -->
	    <div style="margin-top: 20px;">
		    <input type="button" id="registrationSubmit" name="registrationSubmit" value="Submit">
		    <input type="button" id="homePage" name="homePage" onclick="window.location.href='index.jsp'" value="Home">
		    <input type="button" id="loginPage" name="loginPage" onclick="window.location.href='login'" value="Login">
	    </div>
	  </sp:form>  
  </body>
</html>
