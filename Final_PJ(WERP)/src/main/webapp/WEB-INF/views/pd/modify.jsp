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
	<h1>품목 수정</h1>
	<div class="admin_content_main">
		<form action="${pageContext.request.contextPath}/pd/pdUpdate" method="post">
		<input type="hidden" name="n" value="${param.n}" />
         
         <div class="inputArea">
         	<label for="procode">상품코드</label>
         	<input type="text" id="procode" name="procode" value="${ procode }" />
         </div>
         <div class="inputArea">
         	<label for="proname">상품명 </label>
         	<input type="text" id="proname" name="proname" value="${ pd.proname }" />
         </div>
         <div class="inputArea">
         	<label for="category">카테고리 </label>
         	<input type="text" id="category" name="category" value="${ pd.category }" />
         </div>  
         <div class="inputArea">
         	<label for="inprice">입고단가 </label>
         	<input type="text" id="inprice" name="inprice" value="${ pd.inprice }" />
         </div>
         <div class="inputArea">
         	<label for="outprice">출고단가</label>
         	<input type="text" id="outprice" name="outprice" value="${ pd.outprice }" />
         </div>
         <div class="inputArea">
         	<label for="inputdateStr">입력일</label>
         	<input type="text" id="inputdateStr" name="inputdateStr" 
         	       placeholder="yyyy-MM-dd 로 입력해주세요"value="${ pd.inputdate }" />
         </div>
         <div class="inputArea">
         	<label for="stock">재고수량</label>
         	<input type="text" id="stock" name="stock" value="${ pd.stock }" />
         </div> 
                 	
			
							
						<button type="submit" id="update_Btn" class="btn btn-warning">완 료</button>
						<button type="button" id="back_Btn" class="btn btn-danger" onclick="backPd();">취 소</button>

						<script>
							var formObj = $("form[role='form']");
/* 
							$("#modify_Btn").click(function() {
								formObj.attr("action", "${pageContext.request.contextPath}/pd/modify");
								formObj.attr("method", "get");
								formObj.submit();
							});
 */
							function backPd() {
								location.href = '${pageContext.request.contextPath}/pd/list?n=${pd.procode}';
							};
						</script>
				
	</form>
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