<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>




<head>
<title>登录界面</title>
<style type="text/css">
			/*main块总体布局*/
			#main{
				position: absolute;
				left:30%;
				top: 40%;
				width: 40%;
				height:450px;
				margin-top:-200;/*底部空白*/		
				text-align-last: center;/*所有内容居中*/
				background-color: #9A9A9A;/*背景颜色*/
				/*背景颜色设置透明效果，两种方式支持的浏览器不同*/
				filter: opacity(70);
				opacity: 0.7;
			}
			/*main中登录*/
			#denglu{
				background-color: #605993;
				color: #FFFFFF;
            	height:50px;
             	width:300px;
				padding:5px 10px;/*上下填充10 左右5*/
				font-size: 20px;
				border:0;/*边框宽度*/
				border-radius:10px;/*边框弧度*/
			}
			/*改变超链接的颜色*/
			a{
				color: #000000;
			}
		</style>
</head>
<body background="星.jpg" style="background-repeat: no-repeat;background-size: cover;background-attachment: fixed">
		<div id="main">
			<h1 style="color:#000000;font-size: 60px;font-family: '华文楷体'">Login</h1><br>
			<h1 style="color:#000000;font-size: 30px;font-family: '华文楷体'" >欢迎来到防疫小助手！</h1><br>
			<input type="button" id="denglu" value="登 录" onClick="login()" >
		
		</div>
		
<script>
function getCookie(cname)
{
  var name = cname + "=";
  var ca = document.cookie.split(';');
  for(var i=0; i<ca.length; i++) 
  {
    var c = ca[i].trim();
    if (c.indexOf(name)==0) return c.substring(name.length,c.length);
  }
  return "";
}
function login()
{
	var username=getCookie("username");
	if (username!="")
	{
		window.location = 'http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/house.jsp';
	}
	else {
		user = prompt("请输入你的名字:","");
  		if (user!="" && user!=null){
    		setCookie("username",user,30);
    	}
  		window.location = 'http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/house.jsp';
	}
}
function setCookie(cname,cvalue,exdays){
	var d = new Date();
	d.setTime(d.getTime()+(exdays*24*60*60*1000));
	var expires = "expires="+d.toGMTString();
	document.cookie = cname+"="+cvalue+"; "+expires;
}

</script>
</body>

</html>