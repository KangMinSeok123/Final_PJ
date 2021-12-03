<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style>
#mains {
margin-left:5px;


}
  @charset "UTF-8";

     
      
        .tables>.col {
            border-collapse: collapse;
        }

       .buttonbox>button {
            background-color: dodgerblue;
            padding: 8px 30px !important;
            width: 120px;
            font-size: 14px;
            color: white;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            border: 0px solid transparent;
            float: left;
        }

        .buttonbox>:hover {
            background-color: skyblue;
        }

        #table1>.col-100 {
            width: 100%;
        }
        
         #table2>.col-100 {
            width: 100%;
        }
        
         #table3>.col-100 {
            width: 100%;
        }
        
         #table4>.col-100 {
            width: 100%;
        }

     

        #table1>th {
            background-color: dimgrey;
            border: 1px solid rgba(224, 224, 224, 0.2);
            height: 34px;
            color: white;
            font-size: 12px;
        }

   td {            		        		         			 	
           			border-bottom: 1px solid black;     			
        }
	.tables {
	 	width: 480px;
	 	
	 	
	}
	
	#prolist {
	}
</style>

</head>
<body>
<script type="text/javascript">
		var check = false;
		var check2 = false;
		var check3 = false;
		
        window.onload = function() { // 처음 창이 뜰때 테이블1만 보이기
    
            $("#table1").show();
            $("#table2").hide();
            $("#table3").hide();
            
        }
        
        $(document).ready(function() {                                // 시작하는 화면에서 1번은 무조건 실행
        	$.ajax({
     		   	url: "${pageContext.request.contextPath}/pd/list.li", // 품목관리 리스트에 접근하여 데이터를 가져옴
     		    type: 'post',
     		    async : true,
     		    dataType:'json',
     		    success : function (data) {
     		    console.log(data);
     		    $.each(data, function(index, item) {
     		    	console.log(data);
    	$('#prolist').append("<tr><td>"+item.procode+"</td>"+"<td>"+item.proname+"</td>"+"<td>"+ // 가져온 데이터를 테이블에 기재한다.
    			item.outprice+"</td>"+"<td>"+item.stock+"</td>"+"</tr>")
     		    check = true;
    	
     		    })	
     		    	
     		    }
     		   	,error : function() {
     		    	alert("error");
     		    }
     	})
            $("#btn_1").click(function() {
           
            	 if(check==false) {
                 	$.ajax({
                 		   	url: "${pageContext.request.contextPath}/pd/list.li",
                 		    type: 'post',
                 		    async : true,
                 		    dataType:'json',
                 		    success : function (data) {
                 		    console.log(data);
                 		    $.each(data, function(index, item) {
                 		    	console.log(data);
                	$('#prolist').append("<tr><td>"+item.procode+"</td>"+"<td>"+item.proname+"</td>"+"<td>"+
                			item.outprice+"</td>"+"<td>"+item.stock+"</td>"+"</tr>")
                 		    check = true;
                 		    })	
                 		    	
                 		    }
                 		   	,error : function() {
                 		    	alert("error");
                 		    }
                 	}) }
            	
            
                $("#table1").show();
                $("#table2").hide();
                $("#table3").hide();
               
            })
            
               $("#btn_2").click(function() {
           if(check2==false) {
            	$.ajax({
            		   	url: "${pageContext.request.contextPath}/in/inList.do", // 입고 리스트에서 데이터를 가져옴
            		    type: 'post',
            		    async : true,
            		    dataType:'json',
            		    success : function (data) {
            		    console.log(data);
            		    
            		    $.each(data, function(index, item) {
           	$('#inlist').append("<tr><td>"+item.incode+"</td>"+"<td>"+item.procode+"</td>"+"<td>"+
           			item.proname+"</td>"+"<td>"+item.inNum+"</td>"+"</tr>")
            		    check2 = true;
            		    })	
            		    	
            		    }
            		   	,error : function() {
            		    	alert("error");
            		    }
            	}) }
            
           
         
            	$("#table1").hide();
                $("#table2").show();
                $("#table3").hide();
                
               
            })
            
            
            $("#btn_3").click(function() {
            	 if(check3==false) {
                 	$.ajax({
                 		   	url: "${pageContext.request.contextPath}/out/outList.do", // 출고 리스트에서 데이터를 가져옴
                 		    type: 'post',
                 		    async : true,
                 		    dataType:'json',
                 		    success : function (data) {
                 		    console.log(data);
                 		    
                 		    $.each(data, function(index, item) {
                	$('#outlist').append("<tr><td>"+item.outcode+"</td>"+"<td>"+item.procode+"</td>"+"<td>"+
                			item.proname+"</td>"+"<td>"+item.outNum+"</td>"+"</tr>")
                 		    check3 = true;
                 		    })	
                 		    	
                 		    }
                 		   	,error : function() {
                 		    	alert("error");
                 		    }
                 	}) }
                $("#table1").hide();
                $("#table2").hide();
                $("#table3").show();
               
            })
          
        })
    </script>
<div id = "mains">
    <div class="buttonbox">
        <button type="button" id="btn_1">재고현황</button>
        <button type="button" id="btn_2">입고현황</button>
        <button type="button" id="btn_3">출고현황</button>
        <button type="button" id="btn_4">결제건</button>
    </div>
    <div class= "tables">
    
     <div id="table1" width="480px">
            <table id="prolist" class="col-100 col">
              <colgroup>
                    <col width="27%">
                    <col width="27%">
                    <col width="27%">
                    <col width="*%">
                </colgroup>
            <tr>
		<th>품목코드</th>
        <th>품목명</th>
        <th>가격</th>
        <th>합계</th>
	</tr>                  
            </table>
        </div>
    

        <div id="table2" width="480px">
            <table id="inlist" class="col-100 col">
              <colgroup>
                    <col width="27%">
                    <col width="27%">
                    <col width="27%">
                    <col width="*%">
                </colgroup>
            <tr>
		<th>입고코드</th>
        <th>품목코드</th>
        <th>품목명</th>
        <th>입고수량</th>
	</tr>                  
            </table>
        </div>

 <div id="table3" width="480px">
            <table id="outlist" class="col-100 col">
              <colgroup>
                    <col width="27%">
                    <col width="27%">
                    <col width="27%">
                    <col width="*%">
                </colgroup>
            <tr>
		<th>출고코드</th>
        <th>품목코드</th>
        <th>품목명</th>
        <th>출고수량</th>
	</tr>                  
            </table>
        </div>

  


        
        </div>
    </div>
    </div>
</body>
  
</html>