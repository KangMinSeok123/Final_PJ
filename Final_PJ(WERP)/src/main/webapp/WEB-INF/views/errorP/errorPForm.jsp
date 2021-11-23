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
	<title>게시글 작성</title>
	<c:import url="../common/header.jsp"/>
	<style>
		div#board-container{width:400px; margin:0 auto; text-align:center;}
		div#board-container input{margin-bottom:15px;}
		/* 부트스트랩 : 파일라벨명 정렬*/
		div#board-container label.custom-file-label{text-align:left;}
	</style>
	<script>
	/* textarea에도 required속성을 적용가능하지만, 공백이 입력된 경우 대비 유효성검사를 실시함. */
	function validate(){
		var content = $("[name=errorpContent]").val();
		if(content.trim().length==0){
			alert("내용을 입력하세요");
			return false;
		}
		return true;
	}
	
	
	
	function checkErrorP() {
		var id = $("[name=errorpCode]").val();
			$.ajax ({
				type : 'post',
				url : "${pageContext.request.contextPath}/errorP/errorPCheck.do",
				dataType : 'text',
				data : {errorpCode : id},
				success : function(data) {
						if(data == 0) {	
							document.getElementById('Frm').submit();
						
						}
						
						else {
							
							
						}
						
					
				
						
					
				}
			});	
			
	}
				
	
	/*부트스트랩 : file 변경시 파일명 보이기 */
	$(function(){
		$('[name=upFile]').on('change',function(){
		    //var fileName = $(this).val();//C:\fakepath\파일명
		    //var fileName = this.files[0].name;//파일명(javascript)
		    //var fileName = $(this)[0].files[0].name;//파일명(jquery)
		    var fileName = $(this).prop('files')[0].name;//파일명(jquery)
			//console.log($(this).prop('files'));//FileList {0: File(54955), length: 1}
		    console.log($(this).val());
		    $(this).next('.custom-file-label').html(fileName);
		})
	});
	</script>
</head>
<body>
	<div id="container">
		<c:import url="../common/sidebar.jsp"/>
		<div id="board-container">
			<form id="Frm" name="boardFrm" action="${pageContext.request.contextPath}/errorP/errorPFormEnd.do" method="post"  enctype="multipart/form-data" >
				<input type="text" class="form-control" placeholder="상품코드" name="errorpCode" id="errorpCode" required>
				<input type="text" class="form-control" placeholder="상품명" name="errorpName" id="errorpName" required>
				 <input type="text" class="form-control" name="errorpContent" placeholder="내용" required></textarea>
				<input type="text" class="form-control" placeholder="상품갯수" name="errorpCount" id="errorpCount" required>
				
				<div class="input-group mb-3" style="padding:0px;">
				  <div class="input-group-prepend" style="padding:0px;">
				    <span class="input-group-text">첨부파일1</span>
				  </div>
				  <div class="custom-file">
				    <input type="file" class="custom-file-input" name="upFile" id="upFile1" multiple>
				    <label class="custom-file-label" for="upFile1">파일을 선택하세요</label>
				  </div>
				</div>
				<div class="input-group mb-3" style="padding:0px;">
				  <div class="input-group-prepend" style="padding:0px;">
				    <span class="input-group-text">첨부파일2</span>
				  </div>
				  <div class="custom-file">
				    <input type="file" class="custom-file-input" name="upFile" id="upFile2">
				    <label class="custom-file-label" for="upFile2">파일을 선택하세요</label>
				  </div>
				</div>
			   
				<input type="submit" class="btn btn-outline-success" value="저장" onclick=" >
			</form>
		</div>
		<c:import url="../common/footer.jsp"/>
	</div>
</body>
</html>