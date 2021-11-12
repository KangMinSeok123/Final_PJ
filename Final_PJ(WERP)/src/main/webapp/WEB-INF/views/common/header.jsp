<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.icon_event{

margin-right: 30px;	
background:red;

}

.icon_event>ion-icon {

width: 35px;
height: 35px;
float: right;
margin-right: 5px;

}

.top_line {

width:100%;
height:25px;
margin-top: 50px;
background-color: #96B1D0;	

}

	
</style>
</head>
<body>
	<div class="icon_event">
	 <ion-icon id="chat" name="logo-wechat" style="cursor:pointer" onclick="Chat()"></ion-icon>
     <ion-icon id="notifications" name="notifications" style="cursor:pointer" onclick="Notifications()"></ion-icon>
     <ion-icon id="person" name="person" style="cursor:pointer" onclick="Person()"></ion-icon>
  	</div>
  	
  	<div class="top_line">
  	
  	</div>
  
  
  
     <script>
     
     function Chat() {
    	 alert("test");
    	 
     }
     
     function Notifications() {
    	 alert("test");
    	 
     }
     
     function Person() {
    	 alert("test");
    	 
     }
     </script>
     
</body>
</html>	