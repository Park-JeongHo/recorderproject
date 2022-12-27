<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<html>
<head>
<meta charset="UTF-8" />
</head>
<body>
	<h1 style="font-family: katuri; align-self: center;">애완동물 안구질환 판별
		인공지능</h1>
	<p style="font-family: KyoboHand; font-size: x-large;">이미지 파일을 선택해
		주세요 !</p>
	<p>
		<input type="file" id="upload_image_file" onchange="readURL(this);"
			style="font-family: KyoboHand;" />
	</p>



	<hr>
	<h2 style="font-family: katuri; align-self: center;">업로드 이미지</h2>
	<img id="upload_image"
		style="max-width: 250px; max-height: 250px; align-self: center;" />
	<hr>
	<p>
		<input type="button" value="안구질환 판별하기" id="peteye_detect"
			style="font-family: KyoboHand; font-family: KyoboHand; position: relative; left: 11em; top: -1em; background-color: lemonchiffon; border: none; width: 8em; height: 3em; font-size: large;" />
	</p>
	<h2 style="font-family: katuri; align-self: center;">판별 결과</h2>
	<div id="result"></div>
</body>

<script>
   $input = document.getElementById("upload_image_file");

   function readURL(input) {
       document.getElementById("upload_image").style.display = "block";
       document.getElementById('upload_image').src = "";
   
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

   document.getElementById('peteye_detect').onclick = e => {
      
      if (!($input.files && $input.files[0]))
         return;

      document.getElementById('result').innerHTML = "";

      form_data = new FormData()
      form_data.append('file', $input.files[0]);
      fetch('${cpath}/peteye/detect/detail.do', { 
         method: "POST", 
         body: form_data,})
      .then(response => response.formData())
      .then(formData => {
         let img_bbox_URL = URL.createObjectURL(formData.get('img_bbox'));
         document.getElementById('result').innerHTML 
            = `<h3>탐지 객체</h3><p>\${formData.get('results')}</p>`
            + '<h3>바운딩 박스</h3>'
            + `<img id="img_bbox" style="max-width:500px;max-height:500px;" src="\${img_bbox_URL}"/>`

         let files = formData.getAll('img_crops[]');
         files.forEach((file, i) => {
            let img_crops_URL = URL.createObjectURL(file);
            document.getElementById('result').innerHTML 
            += `<h3>추출 이미지(\${i+1})</h3>`
              +`<img src="\${img_crops_URL}" style="max-width:500px;max-height:500px;display:block"/>` ; 
         });
      });
   }
</script>
</html>
