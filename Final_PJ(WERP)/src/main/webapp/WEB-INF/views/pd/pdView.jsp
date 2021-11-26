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
	 <div class="admin_content_main">
                    	<form action="${pageContext.request.contextPath}/pd/pdEnroll" method="post" id="enrollForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>품목코드</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="procode">
                    			</div>
                    		</div>
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>품목명</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="proname" value="0">
                    			</div>
                    		</div>            
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>카테고리</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="category">
                    			</div>
                    		</div>            
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>입고단가</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="inprice">
                    			</div>
                    		</div>             
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>출고단가</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="outprice">
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>입력일</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="inputdateStr" placeholder="yyyy-MM-dd 로 입력해주세요" value="0">
                    			</div>
                    		</div> 
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>재고수량</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="stock" value="0">
                    			</div>
                    		</div>             
							<div class="inputArea">
								<button type="submit" id="insert_Btn" class="btn btn_danger">등 록</button>
							</div>
                    		
                   		</form>
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