<%--
  Created by IntelliJ IDEA.
  User: Mateusz
  Date: 05.08.2022
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<h1>Registration succes!</h1>
<h2>The details entered by you are:</h2>

Email: ${registrationDTO.communicationDTO.email} <br>
Username: ${registrationDTO.username}<br>
Password: ${registrationDTO.password}<br>
Country: ${registrationDTO.country}<br>
Hobbies:
<c:forEach var="tmp" items="${registrationDTO.hobbies}">
    ${tmp}
</c:forEach>
Gender: ${registrationDTO.gender}<br>


</body>
</html>
