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
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;
            var passwordRepeat = document.getElementById('repeatPassword').value;
            var email = document.getElementById('email').value;
            var errors =[];
            if(username.length<3||username.length>15){
                errors.push(" * Username should be 3 to 15 characters long * ")
            }
            if(password.length<8||password.length>15){
                errors.push(" * Password should be 8 to 15 characters long * ")
            }
            if(password!==passwordRepeat){
                errors.push(" * Passwords are difrent * ")
            }
            if(!(email.includes('@')&&email.includes('.'))){
                errors.push(" * Invalid e-mail * ")
            }


            if(errors.length!==0){
                alert(errors.join("\n"));
                return false;
            }
            else{
                return true;
            }

        }

    </script>
    <link href="css/style-register.css" rel="stylesheet" type="text/css">
</head>
<body>
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
            <form:password path="password" id="password"/>
        </div>
        <div class="details">Confirm password</div>
        <div class="my_input">
            <form:password path="repeatPassword" id="repeatPassword"/>
        </div>
        <div class="details">E-mail</div>
        <div class="my_input">
            <form:input path="communicationDTO.email" id="email"/>
            <form:errors path="communicationDTO.email" cssClass="error"/>
        </div>
        <div class="details">Phone</div>
    <div class="my_input">
        + <div class="phoneCode"><form:input path="communicationDTO.phone.countryCode"/></div>
        <div class="phoneNumber"><form:input path="communicationDTO.phone.phoneNumber"/></div>
    </div>
        <div class="details">Country</div>
        <div class="my_input">
            <form:select path="country" >
                <form:option value="PL" label="Poland"/>
                <form:option value="USA" label="United States"/>
                <form:option value="UK" label="Great Britain"/>
                <form:option value="RU" label="Russia"/>
                <form:option value="OTH" label="Other"/>
            </form:select>
        </div>
        <div class="details">Gender</div>
        <div class="my_input">
            <div class="my_radio"><form:radiobutton path="gender" value="male"/> Male</div>
            <div class="my_radio"><form:radiobutton path="gender" value="female"/> Female</div>
            <div class="my_radio"><form:radiobutton path="gender" value="other"/> Other</div>
        </div>
        <br>
        <div class="agreements">
            <form:checkbox path="sendingInformationAgreement"/> I agree to sending messages to my e-mail
        </div>
        <div class="agreements">
            <form:checkbox path="conditionsAgreement"/> I agree to the privacy policy and terms of use *
        </div>
        <div class="my_submit">
            <input type="submit" value="Register"/>
        </div>
    </form:form>

</div>

</body>
</html>
