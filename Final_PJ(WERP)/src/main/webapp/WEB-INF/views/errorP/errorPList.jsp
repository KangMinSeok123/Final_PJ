<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<html>
<head>
	<meta charset="UTF-8">
	<title>불량자제 관리</title>
	<!-- 부트스트랩관련 라이브러리 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	
	<script>
		function fn_goErrorPForm(){
			location.href = "${pageContext.request.contextPath}/errorP/errorPForm.do";
		}
		
		$(function(){
			$("tr[id]").on("click",function(){
				var errorpNo = $(this).attr("id");
				var url = "${pageContext.request.contextPath}/errorP/errorPView.do?errorpNo="+errorpNo;
				var name = "popup";
				window.open(url,name,"width=1000,height=500,toolbar=no,status=no,location=no,scrollbars=yes,menubar=no,resizable=yes,left=50,right=50");
				
			});
		});
	</script>
	
</head>
<body>
	<c:import url="../common/header.jsp"/>
	<c:import url="../common/sidebar.jsp"/>
	
	<div id="container">

			<section id="board-container" class="container">
				<p>총 ${totalContents }건</p>
				<input type="button" value="글쓰기" id="btn-add" class="btn btn-outline-success" onclick="fn_goErrorPForm();"/>
				<table id="tbl-board" class="table table-striped table-hover">
					<tr>
						<th>게시글 번호</th>
						<th>상품코드</th>
						<th>불량자제명</th>
						<th>내용</th>
						<th>합계</th>
						<th>작성일</th>
						<th>첨부파일</th>
					</tr>
					<c:forEach items="${list}" var="b"> 
					<tr id="${b.errorpNo}">
						<td>${b.errorpNo}</td>
						<td>${b.errorpCode}</td>
						<td>${b.errorpName}</td>
						<td>${b.errorpContent}</td>
						<td>${b.errorpCount}</td>
						<td>${b.inputDate}</td>
						<td align="center">
							<c:if test="${b.fileCount>0}">
								<img alt="첨부파일" src="${pageContext.request.contextPath}/resources/images/file.png" width=16px>
							</c:if>
						</td>
				
					</tr>
					</c:forEach>
				</table>
				<c:out value="${pageBar}" escapeXml="false"/>
			</section> 
		<c:import url="../common/footer.jsp"/>
	</div>
	
</body>
</html>