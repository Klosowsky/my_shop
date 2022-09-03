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
    <%--<style type="text/css">
        .error{
            color:red;
            position: fixed;
            text-align: left;
            margin-left: 20px;
        }


    </style>--%>
    <link href="css/style-register.css" rel="stylesheet" type="text/css">
</head>
<body>
<%--<div align="center"><h1>Hello!</h1>

    &lt;%&ndash;@elvariable id="registrationDTO" type="com.klosowsky.api.RegistrationDTO"&ndash;%&gt;
<form:form action="process-register" method="get" modelAttribute="registrationDTO" onsubmit="return validateForm()">

    <p>
    Username: <form:input path="username" id="username"/>
    <form:errors path="username" cssClass="error"/>
    </p>
    <p>
    password: <form:password path="password"/>
    </p>
    <p>
        E-mail: <form:input path="communicationDTO.email" id="email"/>
        <form:errors path="communicationDTO.email" cssClass="error"/>
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
    <p>
        Phone: <form:input path="communicationDTO.phone"/>
    </p>
    <input type="submit" value="Register"/>
    
</form:form>
</div>--%>

<div class="container">
    <div class="title"><h1>Registration</h1></div>

    <%--@elvariable id="registrationDTO" type="com.klosowsky.api.RegistrationDTO"--%>
    <form:form action="process-register" method="get" modelAttribute="registrationDTO" onsubmit="return validateForm()">
        <div class="details">Username</div>
        <div class="my_input">
            <form:input path="username" id="username"/>
            <form:errors path="username" cssClass="error"/>
        </div>

        <div class="details">Password</div>
        <div class="my_input">
            <form:password path="password"/>
        </div>
        <div class="details">E-mail</div>
        <div class="my_input">
            <form:input path="communicationDTO.email" id="email"/>
            <form:errors path="communicationDTO.email" cssClass="error"/>
        </div>
        <div class="details">Phone</div>
        <div class="my_input">
            <form:input path="communicationDTO.phone"/>
        </div>
        <div class="details">Country</div>
        <div class="my_input">
            <form:select path="country">
                <form:option value="PL" label="Poland"/>
                <form:option value="USA" label="United States"/>
                <form:option value="UK" label="Great Britain"/>
                <form:option value="RU" label="Russia"/>
            </form:select>
        </div>
        <div class="details">Gender</div>
        <div class="my_input">
            <form:radiobutton path="gender" value="male"/> Male
            <form:radiobutton path="gender" value="female"/> Female
        </div>
        <div class="details">
            <form:checkbox path="sendingInformationAgreement"/> I agree to sending messages to my e-mail
        </div>
        <div class="my_input">
            <input type="submit" value="Register"/>
        </div>
    </form:form>

</div>

</body>
</html>
