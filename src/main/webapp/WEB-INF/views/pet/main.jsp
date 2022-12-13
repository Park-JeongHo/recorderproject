<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>복실복실</title>
    <link rel="stylesheet" href="${cpath}/resources/css/main.css">
</head>
<body style="padding: 0px; margin: 0px">
<div class="bg-video" style=" position: absolute;
   top: 0;
   left: 0;
   height: 100%;
   width: 100%;
   z-index: -1;
   opacity: 0.35;">
      <video class="bg-video__content" autoplay muted loop style="height: 100%;
      width: 100%;
      object-fit: cover;">
        <source src="${cpath}/resources/img/main.mp4" type="video/mp4" />
        <source src="img/video.webm" type="video/webm" />
   
      </video>

</div>
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                
                <form id="login" action="${cpath}/login.do" method="post" class="input-group">
                    <input type="text" id="user_id" name="user_id" class="input-field"  placeholder="User name or Email" required>
                    <input type="password" id="user_pw" name="user_pw" class="input-field"  placeholder="Enter Password" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit">Login</button>
                </form>
                <form id="register" action="${cpath}/join.do" method="post" class="input-group">
                    <input type="text" class="input-field" id="user_id" name="user_id" placeholder="User Id" required>
                    <input type="email" class="input-field" id="user_email" name="user_email" placeholder="Your Email" required>
                    <input type="text" class="input-field" id="user_name" name="user_name" placeholder="Your NickName" required>
                    <input type="password" class="input-field" id="user_pw" name="user_pw" placeholder="Enter Password" required>
                    <input type="checkbox" class="checkbox"><span>Terms and conditions</span>
                    <button class="submit">REGISTER</button>
                </form>
            </div>
        
        
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }
            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
</body>
</html>