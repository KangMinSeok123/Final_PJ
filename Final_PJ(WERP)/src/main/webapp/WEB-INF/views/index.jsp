<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WERP</title>

<style>
.body {
  margin:0;
   padding:0;
   height:100%;
   }
  .fc-daygrid-body {
     width:500px !important;
     height:335px !mportant;]
  }
   .fc-scrollgrid-sync-table{
   width:500px !important;
     height:330px !important;
   }
   .fc-col-header {
   width:500px !important;
   }
   .fc-day-sun{
   color:red;
   }
   .fc-day-sat{
   
   }
   
   th{
   background: #12192c;
   color: white;
   }

   #calendar{
    width: 505px;
    font-size: 3px;
    height: 385px !important;
   }
   
   #proStatus{
    width: 505px;
    font-size: 3px;
    height: 385px !important;
    float:right;
 
   }
   
   .fc-view-harness{
   border: 2px solid #12192c; !important;
   }

#main{
   text-align: center;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: .15fr 10fr;
}

#mainTitle{
margin-top : 50px;
}

</style>

<!-- fullcalendar CDN -->
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css">
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.min.js"></script>
<!-- chart.js CDN -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.6.0/dist/chart.min.js"></script>
<!-- jquery -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>

<!-- 기본 사용자정의 css -->
<link rel="stylesheet" href="/spring/resources/css/sidebar.css">
<link rel="stylesheet" href="/spring/resources/css/common.css">
<!-- js로 contextPath 넘겨주기위한 store -->
<script type="text/javascript" charset="utf-8">
   sessionStorage.setItem("contextpath", "${pageContext.request.contextPath}");
</script>
<!-- 사용자 정의 js -->
<script type="text/javascript" src="/spring/resources/js/commonjs.js" ></script>

</head>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %> 
<div id="main">
  <div id=mainTitle></div>
  <div id=mainTitle></div>
  <div id=mainTitle></div>
  	
   <div id="calendar" ></div>
   <div id="proStatus" style="position:relative;">
      <canvas id="canvas" height="385" width="505"></canvas>
   </div>
     <%@ include file="/WEB-INF/views/in/chart.jsp" %>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %> 
<script>
(function(){
   $(function(){
   // calendar element 취득
   var calendarEl = $('#calendar')[0];
   // full-calendar 생성하기
   var calendar = new FullCalendar.Calendar(calendarEl, {
   height: '660px', // calendar 높이 설정
   expandRows: true, // 화면에 맞게 높이 재설정
   slotMinTime: '08:00', // Day 캘린더에서 시작 시간
   slotMaxTime: '20:00', // Day 캘린더에서 종료 시간
   // 해더에 표시할 툴바
   headerToolbar: {
   left: 'prev,next today',
   center: 'title',
   right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
   },
   initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
   //initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
   navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
   editable: true, // 수정 가능?
   selectable: true, // 달력 일자 드래그 설정가능
   nowIndicator: true, // 현재 시간 마크
   dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
   locale: 'ko', // 한국어 설정
   eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
   console.log(obj);
   },
   eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
   console.log(obj);
   },
   eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
   console.log(obj);
   },
   select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
   var title = prompt('Event Title:');
   if (title) {
   calendar.addEvent({
   title: title,
   start: arg.start,
   end: arg.end,
   allDay: arg.allDay
   })
   }
   calendar.unselect()
   }
   
   });
   // 캘린더 랜더링
   calendar.render();
   });
   
   
var stock=[];				   // 폼묵개수 변수
var proNameSet=[];			   // 품목명 변수
var bgColorSet=[     		   // 차트 색상 설정
   'rgba(15, 99, 132, 0.2)',
    'rgba(25, 162, 235, 0.2)',
    'rgba(35, 206, 86, 0.2)',
    'rgba(45, 99, 132, 0.2)',
    'rgba(55, 162, 235, 0.2)',
    'rgba(65, 206, 86, 0.2)',
    'rgba(75, 99, 132, 0.2)',
    'rgba(85, 162, 235, 0.2)',
    'rgba(95, 206, 86, 0.2)',
    'rgba(105, 99, 132, 0.2)',
    'rgba(115, 162, 235, 0.2)'
];
var brColorSet=[
   'rgba(15, 99, 132, 1)',
    'rgba(25, 162, 235,1)',
    'rgba(35, 206, 86,1)',
    'rgba(45, 99, 132, 1)',
    'rgba(55, 162, 235, 1)',
    'rgba(65, 206, 86, 1)',
    'rgba(75, 99, 132, 1)',
    'rgba(85, 162, 235, 1)',
    'rgba(95, 206, 86, 1)',
    'rgba(105, 99, 132, 1)',
    'rgba(115, 162, 235, 1)'
];
$.ajax({
   url: "${pageContext.request.contextPath}/pd/list.li",	// 품목관리 테이블에서 데이터를 가져옴
    method: 'POST',
    async : true,
    dataType:'json',
    success : function (data) {
       for(var i=0; i< data.length; i++) {
         stock.push(data[i].stock);
         proNameSet.push(data[i].proname);
       }
       var ctx = document.getElementById('canvas').getContext('2d');
       var myChart =new Chart(ctx,{
          type: 'bar',
          data:{
             labels:proNameSet,
             datasets:[{
                label:'재고 현황(개)',
                data:stock,
                    backgroundColor:bgColorSet,
                    borderColor:brColorSet,
                     borderWidth: 1
             }]
          },
          options:{
             scales:{
                y:{
                   beginAtZero:true
                }
             },
             responsive: true
          }
       })
       
    },
    error : function(jqxhr, textStatus, errorThrown){
        console.log("ajax 처리 실패");
        //에러로그
        console.log(jqxhr);
        console.log(textStatus);
        console.log(errorThrown);
    }   
})
   
   
   
   })();



</script>
</html>