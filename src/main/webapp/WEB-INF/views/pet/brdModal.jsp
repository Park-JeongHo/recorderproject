<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">

#btn-head{
	
font-size: larger;
    box-shadow: none;
    font-family: 'KyoboHand'
}
#btn-head:hover{
	
background-color: #ff7f50;
color: white;
font-family: 'KyoboHand'
    
}
</style>
<title>Document</title>




<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<!-- Compiled and minified CSS -->


<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
<form action="${cpath}/brdRegister.do" method="post" enctype="multipart/form-data">
<div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true" style="background-color: transparent;
    box-shadow: revert;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">갤러리 글작성</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
          <input type="hidden" name="user_id" id="user_id" value="${m.user_id}">
          <input type="text" id="brd_title" name ="brd_title" class="form-control validate">
          <label data-error="wrong" data-success="right" for="brd_title">title</label>
        </div>

        <div class="md-form mb-4">
          <textarea class="form-control" id="brd_content" name="brd_content"></textarea>
          <label data-error="wrong" data-success="right" for="defaultForm-pass">content</label>
        </div>
        <div class="md-form mb-4">
          <input type="file" class="form-control" id="brd_img" name="brd_img">
          <label data-error="wrong" data-success="right" for="defaultForm-pass">image</label>
        </div>
        

      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button type="submit" class="btn btn-default">글쓰기</button>
      </div>
    </div>
  </div>
</div>
</form>



<div class="text-center">
  <a href="" class="btn" id ="btn-head" data-toggle="modal" data-target="#modalRegisterForm">글쓰기</a>
</div>


</body>

</html>