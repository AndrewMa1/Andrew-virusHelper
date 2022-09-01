<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="Mystyle.css" type="text/css">
<link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
<html>

<head>
    <meta charset="utf-8">
    <title>主界面</title>
    
<style>

</style>

<script>

function findUrl(){
	var url = document.getElementById("ServeType").value;
	var x;
	if(url=="NucleicAcidTest")
		x="输入您的当前位置，确认后地图上将显示离您最近的三个核酸检测点<br>鼠标点击核酸检测点所在位置后将弹出关于该处检测点的具体信息的文本介绍。"
	else if(url=="virusPolicy")
		x="输入您的欲查询省份和您当前所在省份，确认后页面将显示出该地针对您所在地区来客的防疫政策。"
	else if(url=="Enroll")
		x="页面左侧可以填写您近期的出行计划，点击确认后网页将会保存您此次出行的具体信息<br>同时您可以在页面右侧通过输入日期来获取您当日出行的具体信息。"
    else if(url=="Select")
    	x="请您选择"
	document.getElementById("content").innerHTML=x;
}

</script>
</head>

<body>
<div >
<div class="icon-bar">
  <a class="active" href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/house.jsp"><i class="fa fa-home"></i></a> 
  <a href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/virusPolicy.jsp"><i class="fa fa-search"></i></a> 
  <a href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/tripNote.html"><i class="fa fa-envelope"></i></a> 
  <a href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/NucleicAcidTest.jsp"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-info"></i></a> 
</div>
<h1 class="center_initial"> 欢迎使用防疫小助手！</h1><br> </div>
<h3 class="selectReminder"> 本页面提供功能查询服务，请在下方选择需查询的服务 </h3>    

<div class="myfa">
<form class="centered">
<select id="ServeType" onchange="findUrl()">
<option value="Select" selected> 请选择</option>
<option value="NucleicAcidTest">核酸检测地点查询</option>
<option value="virusPolicy">防疫政策查询</option>
<option value="Enroll">跨省流调</option>
</select>
<p id="content"></p>
</form> 
</div>


</body>

</html>
