<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header>
	<div class="icon_event"  >
	 <ion-icon id="chat" name="logo-wechat" style="cursor:pointer" onclick="Chat()"></ion-icon>
     <ion-icon id="notifications" name="notifications" style="cursor:pointer" onclick="Notifications()"></ion-icon>
     <ion-icon id="person" name="person" style="cursor:pointer" onclick='Person("${member.userId}")'></ion-icon>
  	</div>
  	
  	<div class="top_line">
  	
  	</div>
</header>