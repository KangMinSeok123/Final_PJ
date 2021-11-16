<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>불량자재 목록</title>
	<c:import url="../common/header.jsp"/>
	<style>
		div#board-container{width:400px; margin:0 auto; text-align:center;}
		div#board-container input,div#board-container button{margin-bottom:15px;}
		/* 부트스트랩 : 파일라벨명 정렬*/
		div#board-container label.custom-file-label{text-align:left;}
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
	<div id="container">
		<c:import url="../common/sidebar.jsp"/>
		<div id="board-container">
			<input type="text" class="form-control" placeholder="상품코드" name="errorpCode" id="errorpCode" value="${errorP.errorpCode }" required>
						<input type="text" class="form-control" placeholder="상품명" name="errorName" id="errorpName" value="${errorP.errorpName }" required>
		    <textarea class="form-control" name="errorpContent" placeholder="내용" required>${errorP.errorpContent }</textarea>
		     <textarea class="form-control" name="errorpCount" placeholder="갯수" required>${errorP.errorpCount }</textarea>
		    <br>
		    <c:forEach items="${attachmentList}" var="a" varStatus="vs">
				<button type="button"
						class="btn btn-outline-success btn-block"
						onclick="fileDownload('${a.originalFileName}','${a.renamedFileName }');">
					첨부파일${vs.count} - ${a.originalFileName }
				</button>
			</c:forEach>
		   <button class="btn btn-outline-info" type="button" onclick="location.href='${pageContext.request.contextPath}/errorP/errorPUpdateView.do?errorpNo=${errorP.errorpNo}'">수정 페이지</button>
		  
		</div>
		<c:import url="../common/footer.jsp"/>
	</div>
</body>
</html>