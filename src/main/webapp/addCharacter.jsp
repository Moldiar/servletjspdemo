<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="chara" class="com.example.servletjspdemo.domain.Character" scope="session" />

<jsp:setProperty name="chara" property="*" /> 

<jsp:useBean id="storage" class="com.example.servletjspdemo.service.StorageService" scope="application" />



<% 
  storage.add(chara);
%>

<p>Following character has been added to storage: </p>
<p>First name: ${chara.name} </p>
<p>Last Name: ${chara.lastName}</p>
<p>Bloodline: ${chara.bloodline}</p>
<p>Birth Sign: ${chara.birthSign}</p>
<p>Alignment: ${chara.alignment}</p>
<p>Epoch of Birth: ${chara.epochOfBirth}</p>
<p>
  <a href="showAllCharacters.jsp">Show all characters</a>
</p>
<a href="PostLoginMenu.jsp">Back to Main Menu</a>
</body>
</html>