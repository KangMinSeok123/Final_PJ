<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 상세보기</title>
	
	<style>
		div#board-container{width:400px; margin:0 auto; text-align:center;}
		div#board-container input,div#board-container button{margin-bottom:15px;}
		/* 부트스트랩 : 파일라벨명 정렬*/
		div#board-container label.custom-file-label{text-align:left;}
		
		#content-frame {
		width: 100%;
		height: 400px;
		background: salmon;
		margin-top: 20px;
		}
	</style>
	<script>
		function fileDownload(oName, rName){
			//한글파일명이 있을 수 있으므로, 명시적으로 encoding
			oName = encodeURIComponent(oName);
			location.href="${pageContext.request.contextPath}/errorP/fileDownload.do?oName="+oName+"&rName="+rName;
		}
		
		
	</script>
</head>
<body>
<div container">
	
				
				<table id="checkTable" classpacing='0' border="1px solid black">
				<colgroup>					
				<col width="170px">
				<col width="280px">
				<col width="170px">
				<col width="280px">																			
				</colgroup>
				
				
				
					<tr style="text-align: center">
						<th>번호</th>
						<td>${errorP.errorpNo }</td>
						<th>상품코드</th>
						<td>${errorP.errorpCode }</td>		
					</tr>
					
					<tr style="text-align: center">
						<th>상품명</th>
						<td>${errorP.errorpName }</td>
						<th>작성일</th>
						<td>${errorP.inputDate }</td>					
					</tr>				
												
				</table>
    <button class="btn btn-outline-info" type="button" onclick="location.href='${pageContext.request.contextPath}/errorP/errorPUpdateView.do?errorpNo=${errorP.errorpNo}'">수정 페이지</button>
	</div>
	
	<div id="content-frame">
	
	</div>
	
</body>
</html>