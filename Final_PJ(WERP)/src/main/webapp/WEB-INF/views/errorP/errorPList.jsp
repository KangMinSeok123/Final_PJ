<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<html>
<head>
	<meta charset="UTF-8">
	<title>불량자제 관리</title>
	<style>
	li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.pagination {
    display: flex;
    padding-left: 0;
    list-style: none;
    border-radius: 0.25rem;
}

.page-item.active .page-link {
    z-index: 1;
    color: #fff;
    background-color: #007bff;
    border-color: #007bff;
}

li.page-item.disabled>.page-link {
	color: black;
	display: inline-block;
    padding: 10px;
    margin-bottom: 5px;
    border: 1px solid #999;
    font-size: 12px;
    cursor: pointer;
}

.page-item>a.page-link {
	display: inline-block;
    padding: 10px;
    margin-bottom: 5px;
    border: 1px solid #999;
    font-size: 12px;
    cursor: pointer;
}

.pagination  {       
margin-top: 30px; 
margin-left: 805px;

}

table {
	font-family:Arial, Helvetica, sans-serif;
	color:#black;
	font-size:13.5px;
	text-shadow: 1px 1px 0px #fff;
	background:#eaebec;
	margin-top: 10px;
	margin-left: auto;
	margin-right: auto;
	border:#ccc 1px solid;


	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;

	-moz-box-shadow: 0 1px 2px #d1d1d1;
	-webkit-box-shadow: 0 1px 2px #d1d1d1;
	box-shadow: 0 1px 2px #d1d1d1;
}
.top td {
	padding:15px;
 	border-top:1px solid #fafafa;
	border-bottom:1px solid #e0e0e0;
	border-left: 1px solid #e0e0e0;
	background: #f6f6f6;
	background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
	background: -moz-linear-gradient(top,  #f8f8f8,  #f6f6f6);
	text-align: center;
	font-weight: bold;
}
.top td:first-child{
	text-align: center;
}
table tr:first-child .top td:first-child{
	-moz-border-radius-topleft:3px;
	-webkit-border-top-left-radius:3px;
	border-top-left-radius:3px;

}
table tr:first-child .top td:last-child{
	-moz-border-radius-topright:3px;
	-webkit-border-top-right-radius:3px;
	border-top-right-radius:3px;
}
table tr{
	text-align: center;
	padding-left:20px;
}

.errorpNo {
color: blue;
cursor : pointer;
}


table tr td {
	padding:12px;
	border-top: 1px solid #ffffff;
	border-bottom:1px solid #e0e0e0;
	border-left: 1px solid #e0e0e0;
	text-align: center;
	background: #fafafa;
	background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
	background: -moz-linear-gradient(top,  #fbfbfb,  #fafafa);
}

table tr:last-child td{
	border-bottom:0;
}
table tr:last-child td:first-child{
	-moz-border-radius-bottomleft:3px;
	-webkit-border-bottom-left-radius:3px;
	border-bottom-left-radius:3px;
}
table tr:last-child td:last-child{
	-moz-border-radius-bottomright:3px;
	-webkit-border-bottom-right-radius:3px;
	border-bottom-right-radius:3px;
}
table tr:hover td{
	background: #f2f2f2;
	background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
	background: -moz-linear-gradient(top,  #f2f2f2,  #f0f0f0);	
}

.errorp-search {
margin-left: 280px;
font-weight: bold;

}

#location-tag { 
margin-left: 150px;

}

#location-tag > a {
color: blue;
}
.errorp-btn {
margin-left: 360px;
margin-top: 5px;
}
.errorp-btn>input  {

width:70px;
height:30px;

} 	

#search-form {

margin-left : 350px;

}

.btn { 
width: 150px;
height: 50px;

}

.navbar-form {
margin-left: 345px;
}

.search-option {
width: 80px;
height: 25px;
text-align: left;
border: 2px solid #999;

}

.search-input {
width: 200px;
height: 23px;
border: 2px solid #999;
}
input:-ms-input-placeholder {color:#a8a8a8; } 
input::-webkit-input-placeholder {color:#a8a8a8;} 
input::-moz-placeholder {color:#a8a8a8;} 




	</style>
	
	
	

	
	<script>
		function fn_goErrorPForm(){
			var url = "${pageContext.request.contextPath}/errorP/errorPForm.do";
			var name = "popup";
		    var _width = '900';
		    var _height = '500';				 			    
		    var _left = Math.ceil(( window.screen.width - _width )/2 + 50);
		    var _top = Math.ceil(( window.screen.height - _height )/2); 			
			window.open(url,name,'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
		}
		
		$(function(){
			$("td[id]").on("click",function(){
				var errorpNo = $(this).attr("id");
				var url = "${pageContext.request.contextPath}/errorP/errorPView.do?errorpNo="+errorpNo;
				var name = "popup";
			    var _width = '900';
			    var _height = '500';				 			    
			    var _left = Math.ceil(( window.screen.width - _width )/2 + 50);
			    var _top = Math.ceil(( window.screen.height - _height )/2); 			
				window.open(url,name,'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);

						
				
			});
		});
		
		function allChecked(target){
			
			if($(target).is(":checked")){
				//체크박스 전체 체크
				$(".chk").prop("checked", true);
			}
			
			else{
				//체크박스 전체 해제
				$(".chk").prop("checked", false);
			}
		}
		
		//자식 체크박스 클릭 이벤트
		function cchkClicked(){
			
			//체크박스 전체개수
			var allCount = $("input:checkbox[name=cchk]").length;
			
			//체크된 체크박스 전체개수
			var checkedCount = $("input:checkbox[name=cchk]:checked").length;
			
			//체크박스 전체개수와 체크된 체크박스 전체개수가 같으면 체크박스 전체 체크
			if(allCount == checkedCount){
				$(".chk").prop("checked", true);
			}
			
			//같지않으면 전체 체크박스 해제
			else{
				$("#allCheckBox").prop("checked", false);
			}
		}

		function boardDelete(){
			
			
			var errorpNo = $("input:checkbox[name='cchk']:checked").val();
		
		if(confirm("삭제하시겠습니까?")){
			
			$.ajax({
		        type : 'GET'
		       ,url : '${pageContext.request.contextPath}/errorP/errorPDelete.do?errorpNo='+errorpNo
		       ,dataType : 'text'
		       ,success : function(data) {
					alert("해당글이 정상적으로 삭제되었습니다.");
					location.reload();
					
		       }
		      
		   })	
		}
	}
	
		
		
	


		
			
		
	</script>
	
</head>
<body>
	<c:import url="../common/header.jsp"/>
	<c:import url="../common/sidebar.jsp"/>
	<br><br>
	<div id="location-tag">
	<a href="#">품질관리</a> >
	<a href="#">불량자재</a>
	
	</div>
	
	<hr>
	
	<form class="navbar-form">
  <div class="form-group navbarleft">
  
  <select class= "search-option" name="key">

<option value="CODE" ${(key == "CODE")?"selected":"" }>상품코드</option>
<option value="NAME" ${(key == "NAME")?"selected":"" }>불량자재명</option>

</select>

   <input type="text" class="search-input" placeholder="검색어를 입력해주세요." name="word" value="${word}">
    <button class="search-btn" type="submit"><i class="fas fa-search" ></i>	</button>
        <i class="glyphicon glyphicon-search"></i>
    </div>
     
      </button>
</form>
	
				<table id="checkTable" classpacing='0'>
				<colgroup>
				<col width="50px">
				<col width="80px">
				<col width="200px">
				<col width="200px">
				<col width="220px">
				<col width="100px">
				<col width="150px">	
				<col width="100px">		
				</colgroup>
				
					<tr class="top">
					 <td><input type="checkbox" id="allCheckBox" class="chk" onclick="allChecked(this)"></td>
						<td>번호</td>
						<td>상품코드</td>
						<td>불량자제명</td>
						<td>내용</td>
						<td>합계</td>
						<td>작성일</td>
						<td>첨부파일</td>
					</tr>
				
					<c:forEach items="${list}" var="b"> 
					<tr class="even">
					<td><input type="checkbox" class="chk" name="cchk" onclick="cchkClicked()" value="${b.errorpNo}"></td>
						<td id="${b.errorpNo}" class="errorpNo">${b.errorpNo}</td>
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
				<div class="errorp-btn">
				<input type="button" value="등록" id="btn-add"  onclick="fn_goErrorPForm();"/>
				<input type="button" value="선택삭제" id="btn-add2" onclick="boardDelete();"/>
				<input type="button" value="전체삭제" id="btn-add3" onclick="fn_goErrorPForm();"/>
				</div>
				<c:out value="${pageBar}" escapeXml="false"/>
				<c:import url="../common/footer.jsp"/>
	
</body>
</html>