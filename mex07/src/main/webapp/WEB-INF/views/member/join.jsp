<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ include file="../includes/header.jsp"%>
<div class="row">
  <div class="col-lg-12">
	<h1 class="page-header">회원 가입</h1>
  </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<div class="row">
  <div class="col-lg-12">
	<div class="panel panel-default">
	  <div class="panel-heading">회원 가입</div><!-- /.panel-heading -->
	  <div class="panel-body">
		<form role="form" action="/member/join" method="post">
		  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		  <div class="form-group">
		    <label>아이디</label>
		    <input class="form-control" placeholder="userid" name="userid" type="text" autofocus>
		  </div>
		  <div class="form-group">
		    <label>암 &nbsp; 호</label>
		    <input class="form-control" placeholder="Password" name="userpw" type="password">
		  </div>
		  <div class="form-group">
		    <label>이 &nbsp; 름</label>
		    <input class="form-control" placeholder="홍길동" name="username" type="text">
		  </div>
		  <button type="submit" class="btn btn-default">Join</button>
		  <button type="reset" class="btn btn-default">Reset</button>
		</form>
	  </div><!-- end panel-body -->
	</div><!-- end panel-body -->
  </div><!-- end panel -->
</div><!-- /.row -->
<script>
$(document).ready(function(e){
  var formObj = $("form[role='form']");
  $("button[type='submit']").on("click", function(e){    
    e.preventDefault();
    console.log("submit clicked");
    formObj.submit();
  });
});
</script>
<%@ include file="../includes/footer.jsp" %>