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



</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<h1>품 목</h1>
	<div class="admin_content_main">
		
		
			<div class="form_section">
				<form role="form" action="${pageContext.request.contextPath}/pd/modify" 
				      method="post" autocomplete="off">
				<input type="hidden" name="n" value="${param.n}" />
				
					<div class="inputArea">
						<label for="procode">품목코드</label> 
						<span>${pd.procode}</span>
					</div>

					<div class="inputArea">
						<label for="proname">품목명</label> 
						<span>${pd.proname}</span>
					</div>
					<div class="inputArea">
						<label for="category">카테고리</label> 
						<span>${pd.category}</span>
					</div>

					<div class="inputArea">
						<label for="inprice">입고단가</label> 
						<span><fmt:formatNumber value="${pd.inprice}" pattern="###,###,###" /></span>
					</div>
					<div class="inputArea">
						<label for="outprice">출고단가</label> 
						<span><fmt:formatNumber value="${pd.outprice}" pattern="###,###,###" /></span>
					</div>
					<div class="inputArea">
						<label for="inputdate" placeholder="yyyy-MM-dd 로 입력해주세요">입력일</label> 
						<span>${pd.inputdate}</span>
					</div>
					<div class="inputArea">
						<label for="stock">재고 수량</label> 
						<span>${pd.stock}</span>
					</div>


					<div class="inputArea">
						<button type="submit" id="modify_Btn" class="btn btn-warning">수 정</button>
						<button type="button" id="delete_Btn" class="btn btn-danger" onclick="deletePd();">삭 제</button>

						<script>
							var formObj = $("form[role='form']");
/* 
							$("#modify_Btn").click(function() {
								formObj.attr("action", "${pageContext.request.contextPath}/pd/modify");
								formObj.attr("method", "get");
								formObj.submit();
							});
 */
							function deletePd() {
								location.href = '${pageContext.request.contextPath}/pd/delete?n=${pd.procode}';
							};
							
							$("#delete_Btn").click(function(){
								 
								 var con = confirm("정말로 삭제하시겠습니까?");
								 
								 if(con) {      
								  formObj.attr("action", "/pd/delete");
								  formObj.submit();
								 }
								});
						</script>
					</div>

				</form>
			</div>

		
	</div>
	<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 외부 아이콘 사용 -->
	<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
	<!-- JS파일 불러오기 -->
	<script src="${pageContext.request.contextPath}/resources/js/tab.js"></script>
</body>
</html>