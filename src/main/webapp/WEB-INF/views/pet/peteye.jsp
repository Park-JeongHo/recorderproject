<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
</head>
   <body>
      <h1>애완동물 안구질환 판별 인공지능</h1>
         <p>이미지 파일:</p>
         <p><input type = "file" id="upload_image_file" onchange="readURL(this);" /></p>
         <p><input type = "button" value = "안구질환 판별" id="peteye_detect" /></p>
      <hr>
      <h2>업로드 이미지</h2>
      <image id="upload_image" style="max-width:500px;max-height:500px;"/>
      <hr>
      <h2>판별 결과</h2>
      <div id="result" />
   </body>

   <script>
      $input = document.getElementById("upload_image_file");

      function readURL(input) {
          document.getElementById("upload_image").style.display = "block";
      
          if (input.files && input.files[0]) {
              var reader = new FileReader();
      
              reader.onload = function (e) {
                  document.getElementById('upload_image').src =  e.target.result;
                  image_data = e.target.result;
              }
      
              reader.readAsDataURL(input.files[0]);
          }
      }

      document.getElementById('peteye_detect').onclick = e => {
         
         if (!($input.files && $input.files[0]))
            return;

         form_data = new FormData()
         form_data.append('file', $input.files[0]);
         fetch('/peteye/detect', { 
            method: "POST", 
            //headers: { "Content-Type": "application/json" },
            body: form_data,})
         .then(response => response.json())
         .then(data => {
            document.getElementById('result').innerHTML 
               = JSON.stringify(data, null, 4);
         });
      }
   </script>
</html>
