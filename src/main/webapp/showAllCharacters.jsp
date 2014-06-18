<%@page import="com.example.servletjspdemo.domain.Character"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="storage" class="com.example.servletjspdemo.service.StorageService" scope="application" />

<%
if(storage.getAllCharacters().isEmpty()){
	
	  out.println("<p>No Characters to display! Want to add one now?</p>");
		out.println("<a href=\"getCharacterData.jsp\">Yes</a>");
		out.println("<a href=\"PostLoginMenu.jsp\">No(Back to Main Menu)</a>");
}
else{
	for (Character chara : storage.getAllCharacters()) {
		  out.println("<p>First name: " + chara.getName() + "<br> Last Name: " + chara.getLastName() + "<br> Bloodline: " + chara.getBloodline() + "<br> Birth Sign: " + chara.getBirthSign() + "<br> Alignment: " + chara.getAlignment() + "<br> Epoch of Birth: " + chara.getEpochOfBirth() + "</p>");
	  }
	  out.println("<a href=\"getCharacterData.jsp\">Add another character</a><br /><a href=\"PostLoginMenu.jsp\">Back to Main Menu</a>");
}
%>

</body>
</html>