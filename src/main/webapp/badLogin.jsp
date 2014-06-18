<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="com.example.servletjspdemo.domain.User" scope="session" />
<h3>Please login to use service</h3>
<h4 align="center">Bad Login or Password!</h4>
<form action="loginPost.jsp" method="post">

  Login :<input type="text" name="login" value="${user.login}" /><br />
  Password :<input type="password"  name="password" value="${user.password}" /><br />
  <input type="submit" value=" OK ">
  
  
</form>
<p><a href="index.jsp">Back to Main screen</a></p>
</body>
</html>