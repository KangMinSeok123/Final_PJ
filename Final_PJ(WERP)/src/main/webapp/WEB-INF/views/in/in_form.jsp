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
	<style>
	h1{
		text-align:center;
	}
	
	.body {
		margin: 0;
		padding: 0;
		height: 100%;
	}
	
	#inform-success{
		border-radius: 5px;
		width: 100px;
		height : 40px;
		font-size : 15px;
		background-color: #96B1D0;
		border : 0;
		outline : 0;
		float : bottom;
		display : inline;
	}

	#in-form-btn{
		border-collapse: collapse;
		border-bottom : none;
		border-top : none;
	}
	#in-form-tr, #in-form-td {
		border-bottom : none;
	}
	div {
   		border-top-left-radius: 0px;
   		border-top-right-radius: 13px;
   		border-bottom-left-radius: 13px;
   		border-bottom-right-radius: 13px;
	}
	
	tr:nth-child(n+2):hover {
   		background-color: #d3d3d3;
   		cursor: pointer;
	}

	table {
   		border-collapse: collapse;
   		border-top: 2px solid #96B1D0;
   		width: 80%;
   		border-left : none;
		border-right : none;
		
	}

	th {
  		font-weight: bold;
   		background-color: rgba(150, 177, 208, 0.7);
	}

	th, td {
   		border-bottom: 2px solid #96B1D0;
   		padding: 5px;
	}

	th:first-child, td:first-child {
   		border-left: none;
   		border-right:none
	}

	body {
		margin-top: 200px;
		font-family: 'Trebuchet MS', serif;
		line-height: 1.6
		text-align : center;
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
								<input type="text" class="form-control"  name="incode" id="incode" required>
							</td>
						</tr>
						<tr>
							<th>품목코드</th>
							<td>
								<input type="text" class="form-control" name="procode" id="procode" required>
							</td>
						</tr>
						<tr>
							<th>입고단가</th>
							<td>
								<input type="text" class="form-control" name="inPrice" id="inPrice" required>
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
						</table>
						<table id="in-form-btn">
						<tr id="in-form-tr">
						<td id="in-form-td">
						<input type="submit" id="inform-success" value="등록" >
						</td>
						</tr>
						</table> 
					</form>
					
		
	</div>

	<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 외부 아이콘 사용 -->
	<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
	<!-- JS파일 불러오기 -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>