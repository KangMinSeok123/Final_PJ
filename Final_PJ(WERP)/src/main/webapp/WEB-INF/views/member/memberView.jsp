<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 보기</title>
<link rel="stylesheet" href="/spring/resources/css/sidebar.css">
<link rel="stylesheet" href="/spring/resources/css/common.css">
<script type="text/javascript" charset="utf-8">
	sessionStorage.setItem("contextpath", "${pageContext.request.contextPath}");
</script>
<script type="text/javascript" src="/spring/resources/js/commonjs.js" ></script>
</head>
<c:import url="../common/header.jsp"/>
<c:import url="../common/sidebar.jsp"/>
<div id="contents">
	<section id="personalInfo">
		<div id="update-container">
			<form name="memberUpdateFrm" action="${pageContext.request.contextPath}/memberUpdate.do" method="post" onsubmit="return fn_update_validate();">
				<input type="text" class="form-control" placeholder="아이디 (4글자이상)" name="userId" id="userId_" value="${member.userId}" readonly required>
				<input type="password" class="form-control" name="userPwd" id="userPwd" required>
				<input type="text" class="form-control" placeholder="이름" name="userName" id="userName" value="${member.empName}"  readonly required>
				<select class="form-control" name="gender" required>
				  <option value="" disabled selected>성별</option>
				  <option value="M" ${member.gender=='M'?'selected':'' }>남</option>
				  <option value="F" ${member.gender=='F'?'selected':'' }>여</option>
				</select>
				<br />
				<input type="email" class="form-control" placeholder="이메일" name="email" id="email" value="${member.email}" required>
				<input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="phone" id="phone" maxlength="11" value="${member.phone}" required>
				<input type="text" class="form-control" placeholder="주소" name="address" value="${member.address}" id="address">
				
				<input type="submit" class="btn btn-outline-success" value="수정" >&nbsp;
				<input type="button" class="btn btn-outline-success" onclick="cancel();" value="취소">&nbsp;
				<input type="button" class="btn btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/memberDelete.do'" value="탈퇴">
			</form>
		</div>
	</section>
</div>
<script>
	function fn_update_validate(){
	var phone=document.getElementById("phone");
		if((phone.value.length!=11)&&(phone.value!="${member.phone}")){
			alert("전화번호가 올바르지 않은 형식입니다.");
			return false;
		}
	}
</script>
<c:import url="../common/footer.jsp"/>
</html>