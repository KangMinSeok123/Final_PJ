<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입고 관리</title>
	<link rel="stylesheet" href="/spring/resources/css/sidebar.css">
	<style>
	h1{
		text-align: center;
	}
	.body {
		margin: 0;
		padding: 0;
		height: 100%;
	}

	body {
		margin-top: 200px;
		font-family: 'Trebuchet MS', serif;
		line-height: 1.6
	}
	
	
	</style>
	<link rel="stylesheet" href="/spring/resources/css/sidebar.css">


	
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<h1>입고 등록</h1>
	<div id="container">
		<form name="inFrm" action="${pageContext.request.contextPath}/in/inFormEnd.do" method="post">
		<table>
						<tr>
							<th>입고코드</th>
							<td>
								<input type="text" class="form-control"  name="icode" id="icode" required>
							</td>
						</tr>
						<tr>
							<th>품목코드</th>
							<td>
								<input type="text" class="form-control" name="pcode" id="pcode" required>
							</td>
						</tr>
						<tr>
							<th>입고수량</th>
							<td>	
							<input type="text" class="form-control" name="inNum" id="inNum" required>
							</td>
						</tr>
						<tr>
							<th>입력일</th>
							<td>	
								<input type="date" class="form-control" name="inputDate" id="inputDate" required>
							</td>
						</tr>  
						<tr>
						<td>
						<input type="submit" class="btn btn-outline-success" value="저장" >
						</td>
						</tr>
					</form>
					</table>
		
	</div>
	<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 외부 아이콘 사용 -->
	<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
	<!-- JS파일 불러오기 -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/tab.js"></script>
</body>
</html>