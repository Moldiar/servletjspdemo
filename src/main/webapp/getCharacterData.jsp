<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="storage" class="com.example.servletjspdemo.service.StorageService" scope="application" />
<jsp:useBean id="chara" class="com.example.servletjspdemo.domain.Character" scope="session" />

<form action="addCharacter.jsp">

  First name :<input type="text" name="name" value="${chara.name}" /><br />
  Last Name :<input type="text" name="lastName" value="${chara.lastName}" /><br />
  Bloodline :<input type="text" name="bloodline" value="${chara.bloodline}" /><br />
  Birth Sign:<select name="birthSign">
  <option value="Balunarel">Balunarel</option>
  <option value="Rankshakku">Rankshakku</option>
  <option value="Horicotrex">Horicotrex</option>
  <option value="Midrangu'Nai">Midrangu'Nai</option>
  <option value="Zaldranel">Zaldranel</option>
  <option value="Garll'Traxn">Garll'Traxn</option>
  <option value="Alirez">Alirez</option>
  <option value="Tamarash">Tamarash</option>
  <option value="Lakoer">Lakoer</option>
  <option value="Choklatut">Choklatut</option>
  <option value="Valuron">Valuron</option>
  <option value="Arbahemri">Arbahemri</option>
  </select><br />
  Alignment :<select name="alignment">
  <option value="Good">Good</option>
  <option value="Neutral">Neutral</option>
  <option value="Evil">Evil</option>
  </select><br />
  Epoch of Birth :<select name="epochOfBirth">
  <option value="Epoch of Heroes">Epoch of Heroes</option>
  <option value="Epoch of the Fall of the Empire">Epoch of the Fall of the Empire</option>
  <option value="Epoch of the Rise">Epoch of the Rise</option>
  </select><br />
  <input type="submit" value=" OK "><br />
  <a href="PostLoginMenu.jsp">Back to Main Menu</a>
</form>
</body>
</html>