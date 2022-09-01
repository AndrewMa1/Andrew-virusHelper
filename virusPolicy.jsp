<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="Mystyle.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
 <%@ page import="java.io.*,java.util.*" %>
<html>
<head>
<title>防疫政策查询界面</title>


</head>

<body>
<div class="icon-bar">
  <a class="active" href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/house.jsp"><i class="fa fa-home"></i></a> 
  <a href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/virusPolicy.jsp"><i class="fa fa-search"></i></a> 
  <a href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/tripNote.html"><i class="fa fa-envelope"></i></a> 
  <a href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/NucleicAcidTest.jsp"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-info"></i></a> 
</div>

<div class="myfa">
    <div class="column2">
    <form class="centered" action="virusPolicy.jsp" method=post  >
    <h1>查询选择</h1><br><br></br>
    <select name="ToSite" >
    <option value="Select" selected> 请选择欲查询省份</option>
    <option value="beijing">北京</option>
    <option value="anhui">安徽</option>
    <option value="chongqing">重庆</option>
    <option value="fujian">福建</option>
    <option value="guangdong">广东</option>
    <option value="gx">广西</option>
    <option value="gz">贵州</option>
    <option value="gs">甘肃</option>
    <option value="hn">海南</option>
    <option value="hunan">湖南</option>
    <option value="hubei">湖北</option>
    <option value="henan">河南</option>
    <option value="hb">河北</option>
    <option value="hlj">黑龙江</option>
    <option value="js">江苏</option>
    <option value="jx">江西</option>
    <option value="jl">吉林</option>
    <option value="ln">辽宁</option>
    <option value="nx">宁夏</option>
    <option value="nmg">内蒙古</option>
    <option value="qh">青海</option>
    <option value="sh">上海</option>
    <option value="sd">山东</option>
    <option value="sx">山西</option>
    <option value="shanxi">陕西</option>
    <option value="sc">四川</option>
    <option value="tj">天津</option>
    <option value="xz">西藏</option>
    <option value="xj">新疆</option>
    <option value="yn">云南</option>
    <option value="zj">浙江</option>
    </select><br></br>
    <select name="FromSite" >
    <option value="Select" selected> 您来自哪里</option>
    <option value="Overseas">境外人士或港澳台</option>
    <option value="high_Risk">高风险地区旅客 </option>
    <option value="mid_Risk"> 中风险地区旅客 </option>
    <option value="low_Risk"> 低风险地区旅客 </option>
    <option value="None_Risk"> 疫情常态化防控区旅客 </option>
    <option value="Commuting"> 通勤人员 </option>
    </select><br></br>
    <input type="submit" value="确认">
    </form> 
    </div>
    <div class="column1">
    <h1 class="centered">查询界面</h1><br></br>
    <% 
    String a=(String)request.getParameter("ToSite");
    String b=(String)request.getParameter("FromSite");
    if(a!=null && b!=null){
    if(a.trim().equals("beijing"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("anhui"))
    {
    	if(b.trim().equals("Commuting") || b.trim().equals("high_Risk") || b.trim().equals("mid_Risk") || b.trim().equals("low_Risk") || b.trim().equals("None_Risk"))
    	{
    		out.println("*进安徽：确保即到即采，即采即走，回社区需向社区报备"+"<br><br><br>");
    		out.println("*出安徽：非必要不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进安徽：14天集中隔离+核酸检测，费用自理"+"<br><br><br>");
    		out.println("*出安徽：非必要不去中高风险地区和有报告确诊病例的地区");
    	}
    	
    }
    if(a.trim().equals("chongqing"))
    {
    	if(b.trim().equals("Commuting") || b.trim().equals("low_Risk"))
    	{
    		out.println("*进重庆：主动报备+3天2检+核酸结果出来前居家不外出"+"<br><br><br>");
    		out.println("*出重庆：渝康码、行程码绿码+体温正常");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进重庆：提供48h核酸证明+即到即采"+"<br><br><br>");
    		out.println("*出重庆：渝康码、行程码绿码+体温正常");
    	}
    	else if(b.trim().equals("mid_Risk") || b.trim().equals("high_Risk"))
    	{
    		out.println("*进重庆：主动报备+7天3检+居家隔离"+"<br><br><br>");
    		out.println("*出重庆：渝康码、行程码绿码+体温正常");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进重庆：渝康码绿码+即到即采+社区报备"+"<br><br><br>");
    		out.println("*出重庆：渝康码、行程码绿码+体温正常");
    	}
    }
    if(a.trim().equals("gx"))
    {
    	if(b.trim().equals("Commuting") ||b.trim().equals("low_Risk"))
    	{
    		out.println("*进广西：提前48h报备+48小时核酸证明+三天两检+7天自我健康监测"+"<br><br><br>");
    		out.println("*出广西：提前报备+非必要不出境，不去中高风险地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进广西：21天集中隔离+7天居家隔离"+"<br><br><br>");
    		out.println("*出广西：提前报备+非必要不出境，不去中高风险地区");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进广西：提前48h报备+48小时核酸证明+7天居家隔离+5次核酸"+"<br><br><br>");
    		out.println("*出广西：提前报备+非必要不出境，不去中高风险地区");
    	}
    	
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进广西：提前48h报备+48小时核酸证明+7天居家隔离+3次核酸"+"<br><br><br>");
    		out.println("*出广西：提前报备+非必要不出境，不去中高风险地区");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进广西：提前48h报备+即到即采+三天两检"+"<br><br><br>");
    		out.println("*出广西：提前报备+非必要不出境，不去中高风险地区");
    	}
    }
    if(a.trim().equals("guangdong"))
    {
    	if(b.trim().equals("Commuting") || b.trim().equals("low_Risk"))
    	{
    		out.println("*进广东：核酸3天2检+社区报备"+"<br><br><br>");
    		out.println("*出广东：查验48h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进广东：集中隔离14天"+"<br><br><br>");
    		out.println("*出广东：查验48h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进广东：核酸3天2检+社区报备"+"<br><br><br>");
    		out.println("*出广东：查验748核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进广东：7天居家隔离+48小时核酸证明+即到即采"+"<br><br><br>");
    		out.println("*出广东：查验48h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进广东：3天1检"+"<br><br><br>");
    		out.println("*出广东：查验48h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    }
    
    
    
    
    
    
    if(a.trim().equals("gz"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进贵州：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出贵州：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进贵州：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出贵州：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进贵州：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵贵州后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进贵州：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵贵州后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进贵州：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵贵州后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出贵州：不去中高风险地区和有报告确诊病例的地区+非必要不出镜");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进贵州：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵贵州后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出贵州：不去中高风险地区和有报告确诊病例的地区+非必要不出镜");
    	}
    }
    if(a.trim().equals("gs"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("hunan"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("hubei"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("hn"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("henan"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("hb"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("hlj"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("js"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("jl"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    
    if(a.trim().equals("jx"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("ln"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("nx"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    
    if(a.trim().equals("nmg"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("qh"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("sh"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("sd"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("sx"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("shanxi"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("sc"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("tj"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("xz"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("xj"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("yn"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    if(a.trim().equals("zj"))
    {
    	if(b.trim().equals("Commuting"))
    	{
    		out.println("*进北京：72h核酸检测阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：查验72h核酸检测阴性证明+不去中高风险地区和有报告确诊病例的地区");
    	}
    	else if(b.trim().equals("Overseas"))
    	{
    		out.println("*进北京：当地完成7天集中隔离和3天居家隔离+48h核算阴性证明+北京健康宝绿码"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("high_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("mid_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：严控出京");
    	}
    	else if(b.trim().equals("low_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    	else if(b.trim().equals("None_Risk"))
    	{
    		out.println("*进北京：进京前所在县7日内有新增本土确诊病例人员禁止入京+48h核酸证明+健康宝绿码"+"<br><br><br>");
    		out.println("*抵北京后24-72h：必须做一次以上核酸"+"<br><br><br>");
    		out.println("*出北京：不去中高风险地区和有报告确诊病例的地区+非必要不出镜、不离京");
    	}
    }
    }
    %>
    </div>
    
        
</div>

</body>
</html>