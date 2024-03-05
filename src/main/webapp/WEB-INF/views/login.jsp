<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<title>Login</title>
<body>
<div class="ctn">
     <div class="cv">
         <div class="front">
             <img src="assets/user/img/frontImg.jpg" alt="">
             <div class="text">
                 <span class="text-1">Every new friend is a <br> new adventure</span>
                 <span class="text-2">Let's get connected</span>
             </div>
         </div>
         <div class="back">
             <div class="text">
                 <span class="text-1">Complete miles of journey <br> with one step</span>
                 <span class="text-2">Let's get started</span>
             </div>
         </div>
     </div>
     <div class="forms">
         <div class="form-content">
          	  <div class="login-form">
			    <div class="title">Login</div>
			    <div style="color: red;text-align: center;">${ statusLogin }</div>
			    <form:form modelAttribute="user" action="login" method="POST"> 
			        <div class="input-boxes">
			            <div class="input-box">
			                <form:input path="user" type="email" placeholder="Email" />
			            </div>
			            <div class="input-box">
			                <form:input path="password" type="password" placeholder="Password" />
			            </div>
			            <div class="text"></div>
			            <div class="button input-box">
			                <input type="submit" value="Login">
			            </div>
			            <div class="text sign-up-text">Don't have an account? 
			            	<a href="<c:url value="/signup"/>">
			            		Sigup now
			            	</a>
			            </div>
			        </div>
			    </form:form>
			</div>
         </div>
     </div>
</div>

</body>