<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- chart.js CDN -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.6.0/dist/chart.min.js"></script>
<!-- html태그 삭제 -->
<header>
	
	<div class="icon_event"  >
	<a href= "${pageContext.request.contextPath }"> <img src="${pageContext.request.contextPath }/resources/images/logo.png" width="168" height="82"></a>
		 <ion-icon id="chat" name="logo-wechat" style="cursor:pointer" onclick="Chat()"></ion-icon>
	     <ion-icon id="notifications" name="notifications" style="cursor:pointer" onclick="Notifications()"></ion-icon>
	     <ion-icon id="person" name="person" style="cursor:pointer" onclick='Person("${member.userId}")'></ion-icon>
  	</div>
  	<hr>
</header>