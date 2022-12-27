<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>애완동물 감정예측 판별 인공지능</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<h1 style="font-family: katuri;     align-self: center;">애완동물 감정예측 판별 인공지능</h1>
	<p style="font-family: KyoboHand; font-size: x-large;">영상파일을 선택해
		주세요!</p>
	<!--
         <p><select id='animal' name="animal">
	       <option value="DOG">개</option>
	       <option value="CAT">고양이</option>
         </select>
         -->
	<p>
		<input type="file" id="upload_image_file" onchange="readURL(this);"
			style="font-family: KyoboHand;" />
	</p>
	<p>
	<div style="display: inline-block"></div>
	<div id='spinner' class="spinner-border text-primary"
		style="visibility: collapse"></div>
	</p>
	<hr>
	<h2 style="font-family: katuri;     align-self: center;">업로드 영상</h2>
	<video id="upload_image" style="max-width: 450px; max-height: 450px; align-self: center;"
		controls>
	</video>
	<hr>
	<input type="button" value="감정예측 판별" id="petemotion_detect"
		style="font-family: KyoboHand; font-family: KyoboHand; position: relative; left: 12em;background-color: lemonchiffon; border: none; width: 8em; height: 3em; font-size: large;" />
		<br>
		<br>
	<h2 style="font-family: katuri;     align-self: center;">판별 결과</h2>
	<div id="result" />
</body>

<script>
      $input = document.getElementById("upload_image_file");
      $animal = document.getElementById("animal");

      function readURL(input) {
          document.getElementById("upload_image").style.display = "block";
          document.getElementById('result').innerHTML = "";
      
          if (input.files && input.files[0]) {
              var reader = new FileReader();
      
              reader.onload = function (e) {
                  document.getElementById('upload_image').src =  e.target.result;
                  image_data = e.target.result;
              }
      
              reader.readAsDataURL(input.files[0]);
          }
      }

      document.getElementById('petemotion_detect').onclick = e => {
         
         if (!($input.files && $input.files[0]))
            return;

         document.getElementById('result').innerHTML = "";
         document.getElementById('spinner').style.visibility = 'visible'

         form_data = new FormData()
         // form_data.append('animal', $animal.value);
         form_data.append('file', $input.files[0]);
         fetch('${cpath}/petemotion/detect.do', { 
            method: "POST", 
            //headers: { "Content-Type": "application/json" },
            body: form_data,})
         .then(response => response.json())
         .then(data => {
            document.getElementById('result').innerHTML 
               = JSON.stringify(data, null, 4);
            document.getElementById('spinner').style.visibility = 'collapse'
         });
      }
   </script>
</html>
