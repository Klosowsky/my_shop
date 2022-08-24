<%--
  Created by IntelliJ IDEA.
  User: Mateusz
  Date: 02.08.2022
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function validateForm(){
            var userNameCheck = document.getElementById('username').value;
            if(userNameCheck.length<2){
                alert(" * Username must have at least 3 chars * ");
                return false;
            }
            else{
                return true;
            }
        }

    </script>
    <style type="text/css">
        .error{
            color:red;
            position: fixed;
            text-align: left;
            margin-left: 20px;
        }


    </style>
</head>
<body>
<div align="center"><h1>Hello!</h1>
    <%--@elvariable id="registrationDTO" type="com.klosowsky.api.RegistrationDTO"--%>
<form:form action="process-register" method="get" modelAttribute="registrationDTO" onsubmit="return validateForm()">

    <p>
    Username: <form:input path="username" id="username"/>
    <form:errors path="username" cssClass="error"/>
    </p>
    <p>
    password: <form:password path="password"/>
    </p>
    <p>
        E-mail: <form:input path="email" id="email"/>
        <form:errors path="email" cssClass="error"/>
    </p>
    <p>
    <label>Country: </label>
    <form:select path="country">
        <form:option value="PL" label="Poland"/>
        <form:option value="USA" label="United States"/>
        <form:option value="UK" label="Great Britain"/>
        <form:option value="RU" label="Russia"/>
    </form:select>
    </p>
    <p>
    <label>Hobbies: </label>
    <form:checkbox path="hobbies" value="Football"/> Football
    <form:checkbox path="hobbies" value="Gaming"/> Gaming
    <form:checkbox path="hobbies" value="Programing"/> Programing
    <form:checkbox path="hobbies" value="Motorization"/> Motorization
    <form:checkbox path="hobbies" value="Books"/> Books
    </p>
    <p>
    <label>Gender: </label>
    <form:radiobutton path="gender" value="male"/> Male
    <form:radiobutton path="gender" value="female"/> Female
    </p>
    <p>
    <form:checkbox path="sendingInformationAgreement"/> I agree to sending messages to my e-mail
    </p>
    <input type="submit" value="Register"/>
    
</form:form>
</div>
</body>
</html>
