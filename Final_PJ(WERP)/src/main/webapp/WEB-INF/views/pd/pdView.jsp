<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>품목 관리</title>
	<link rel="stylesheet" href="/spring/resources/css/sidebar.css">
	<link rel="stylesheet" href="/spring/resources/css/sidebar.css">


	
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<h1>품목 등록</h1>
	<div id="container">
		<form name="proDuct" action="${pageContext.request.contextPath}/pd/pd.do" method="post">
		<table>
						<tr>
							<th>품목코드</th>
							<td>
								<input type="text" class="form-control"  name="pcode" id="pcode" required>
							</td>
						</tr>
						<tr>
							<th>품목명</th>
							<td>
								<input type="text" class="form-control" name="pname" id="pname" required>
							</td>
						</tr>
						<tr>
							<th>카테고리</th>
							<td>	
							<input type="text" class="form-control" name="category" id="category" required>
							</td>
						</tr>
						<tr>
							<th>입고단가</th>
							<td>	
								<input type="date" class="form-control" name="inprice" id="inprice" required>
							</td>
						</tr>  
						<tr>
							<th>출고단가</th>
							<td>
								<input type="text" class="form-control"  name="outprice" id="outprice" required>
							</td>
						</tr>
						<tr>
							<th>품목구분</th>
							<td>
								<input type="text" class="form-control"  name="pdivision" id="pdivision" required>
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