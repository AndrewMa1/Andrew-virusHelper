<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">   

<html lang="zh-cmn-Hans">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>核酸地图</title>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=gun3mmsNcG70x78m5h6lRASHlqCGMXxC"></script>  
  
  
     <style type="text/css">
        body, html {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
        .info {
        z-index: 999;
        width: auto;
        min-width: 22rem;
        padding: .75rem 1.25rem;
        margin-left: 1.25rem;
        margin-top:2rem;
        position: fixed;
        top: 1rem;
        background-color: #fff;
        border-radius: .25rem;
        font-size: 14px;
        color: #666;
        box-shadow: 0 2px 6px 0 rgba(27, 142, 236, 0.5);
    }
    </style> 
</head>
<body>  
 <div class = "info">请输入您当前地址:<input type="text" id="suggestId" size="20" value="百度" style="width:150px;" /><input type="button" id="reset" value="重置" onClick="reset()"> 
 <input type="button" id="revealAll" value="显示所有核酸点" onClick="searchAll()"><br><input type="button" id="search24" value="查询所有24h核酸点" onClick="search24h()">
 
  </div>
 <div id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
<div class="icon-bar">
  <a class="active" href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/house.jsp"><i class="fa fa-home"></i></a> 
  <a href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/virusPolicy.jsp"><i class="fa fa-search"></i></a> 
 <a href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/tripNote.html"><i class="fa fa-envelope"></i></a> 
  <a href="http://192.168.1.4:8081/NucleicAcidTestPlaceSearch/NucleicAcidTest.jsp"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-info"></i></a> 
</div>
   <div id="allmap" style="width: 100%;height: 100%;"></div>
   
  
</body>  
</html>  
<script type="text/javascript">  
//全局变量
var testIcon = new BMap.Icon("核酸检测点图标.jpg", new BMap.Size(25, 25), {
    // 指定定位位置。

});

//重置
function reset()
{
	map.clearOverlays();
}

//快速排序
  function sortByDistance(a,b){  
       return a.distance-b.distance;  
   }

    function G(id) {
        return document.getElementById(id);
    }

    var map = new BMap.Map('allmap', {
        minZoom: 11,
        maxZoom: 14
    });
    map.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
    map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
    

    map.centerAndZoom("北京",19);   // 初始化地图,设置城市和地图级别。

    var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
        {"input" : "suggestId"
        ,"location" : map
    });

    ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
    var str = "";
        var _value = e.fromitem.value;
        var value = "";
        if (e.fromitem.index > -1) {
            value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        }    
        str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
        
        value = "";
        if (e.toitem.index > -1) {
            _value = e.toitem.value;
            value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        }    
        str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
        G("searchResultPanel").innerHTML = str;
    });

    var myValue;
    ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
    var _value = e.item.value;
        myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
        setPlace();
    });
    
    //信息窗口的定义
    var opts = {
    	    width : 300,     // 信息窗口宽度
    	    height: 150,     // 信息窗口高度
    	}

    function setPlace(){
        map.clearOverlays();    //清除地图上所有覆盖物
        function myFun(){
            var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
            var dis;
            dis=[
                {"id":1,"distance":0},
                {"id":2,"distance":0},
                {"id":3,"distance":0},
                {"id":4,"distance":0},
                {"id":5,"distance":0},
                {"id":6,"distance":0},
                {"id":7,"distance":0},
                {"id":8,"distance":0},
                {"id":9,"distance":0},
                {"id":10,"distance":0},
                {"id":11,"distance":0},
                {"id":12,"distance":0},
                {"id":13,"distance":0},
                {"id":14,"distance":0},
                {"id":15,"distance":0},
                {"id":16,"distance":0},
                {"id":17,"distance":0},
                {"id":18,"distance":0},
                {"id":19,"distance":0},
                {"id":20,"distance":0},
                {"id":21,"distance":0},
                {"id":22,"distance":0},
                {"id":23,"distance":0},
                {"id":24,"distance":0},
                {"id":25,"distance":0},
                {"id":26,"distance":0},
                {"id":27,"distance":0},
                {"id":28,"distance":0}
              ]
            //点击marker事件
            var marker1=new BMap.Marker(pp);
            var hesuandian=new Array();
            var infoWindow=new Array();
            var i=0;
            var first,second,third;
            marker1.addEventListener("click", function () {
            	i++;
            	if(i==1){
                for(let j=0;j<28;j++)
                {
                    dis[j].distance=map.getDistance(pp,point[j]);
                }
                dis.sort(sortByDistance);
                first=dis[0].id;
                second=dis[1].id;
                third=dis[2].id;
                hesuandian[0]=new BMap.Marker(point[first-1], { icon: testIcon });
                hesuandian[1]=new BMap.Marker(point[second-1], { icon: testIcon });
                hesuandian[2]=new BMap.Marker(point[third-1], { icon: testIcon });
                map.addOverlay(hesuandian[0]);
            	map.addOverlay(hesuandian[1]);
            	map.addOverlay(hesuandian[2]);
                infoWindow[0] = new BMap.InfoWindow("地址："+info[first-1].address+"<br>"+"预计等待时间："+info[first-1].wait_time+"<br>"+"检测时间："+info[first-1].test_Time, opts);  // 创建信息窗口对象 
            	hesuandian[0].addEventListener("click", function(){          
            		map.openInfoWindow(infoWindow[0], point[first-1]); //开启信息窗口
            	}); 
            	infoWindow[1] = new BMap.InfoWindow("地址："+info[second-1].address+"<br>"+"预计等待时间："+info[second-1].wait_time+"<br>"+"检测时间："+info[second-1].test_Time, opts);  // 创建信息窗口对象 
            	hesuandian[1].addEventListener("click", function(){          
            		map.openInfoWindow(infoWindow[1], point[second-1]); //开启信息窗口
            	}); 
            	infoWindow[2] = new BMap.InfoWindow("地址："+info[third-1].address+"<br>"+"预计等待时间："+info[third-1].wait_time+"<br>"+"检测时间："+info[third-1].test_Time, opts);  // 创建信息窗口对象 
            	hesuandian[2].addEventListener("click", function(){          
            		map.openInfoWindow(infoWindow[2], point[third-1]); //开启信息窗口
            	}); 
            	}
            });
            console.log('经度：'+pp.lng, '纬度：'+pp.lat);
            map.centerAndZoom(pp, 18);
            map.addOverlay(marker1);    //添加标注
            var infoWindow_uraddress=new BMap.InfoWindow("请点击该处图标以查询距您最近的三个核酸检测点！",opts);
            map.openInfoWindow(infoWindow_uraddress, pp); 
        
        }
        var local = new BMap.LocalSearch(map, { //智能搜索
          onSearchComplete: myFun
        });
        local.search(myValue);
    }
    
    //显示所有
    function searchAll()
    {
    	for(let j=0;j<28;j++){
    	map.addOverlay(marker[j]);
    	infoWindowAll[j] = new BMap.InfoWindow("地址："+info[j].address+"<br>"+"预计等待时间："+info[j].wait_time+"<br>"+"检测时间："+info[j].test_Time, opts);  // 创建信息窗口对象 
     	marker[j].addEventListener("click", function(){          
     		map.openInfoWindow(infoWindowAll[j], point[j]); //开启信息窗口
     	}); 
    	}
    }
    function search24h()
    {
    	for(let j=21;j<28;j++){
        	map.addOverlay(marker[j]);
        	infoWindowAll[j] = new BMap.InfoWindow("地址："+info[j].address+"<br>"+"预计等待时间："+info[j].wait_time+"<br>"+"检测时间："+info[j].test_Time, opts);  // 创建信息窗口对象 
         	marker[j].addEventListener("click", function(){          
         		map.openInfoWindow(infoWindowAll[j], point[j]); //开启信息窗口
         	}); 
        }
    }
    //下面存所有核酸检测点的信息
    //海淀区
    var infoWindowAll=new Array();
    var point=new Array();
    var marker=new Array();
    var info;
    info=[
        {"id":0,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":1,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":2,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":3,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":4,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":5,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":6,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":7,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":8,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":9,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":10,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":11,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":12,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":13,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":14,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":15,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":16,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":17,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":18,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":19,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":20,"address":'',"wait_time":'',"test_Time":'0:00-24:00'},
        {"id":21,"address":'',"wait_time":'',"test_Time":'0:00-24:00',"tel":'',"needAppointment":''},
        {"id":22,"address":'',"wait_time":'',"test_Time":'0:00-24:00',"tel":'',"needAppointment":''},
        {"id":23,"address":'',"wait_time":'',"test_Time":'0:00-24:00',"tel":'',"needAppointment":''},
        {"id":24,"address":'',"wait_time":'',"test_Time":'0:00-24:00',"tel":'',"needAppointment":''},
        {"id":25,"address":'',"wait_time":'',"test_Time":'0:00-24:00',"tel":'',"needAppointment":''},
        {"id":26,"address":'',"wait_time":'',"test_Time":'0:00-24:00',"tel":'',"needAppointment":''},
        {"id":27,"address":'',"wait_time":'',"test_Time":'0:00-24:00',"tel":'',"needAppointment":''}
      ]
    
    point[0] = new BMap.Point(116.29096531439367,39.93010899244193);
    marker[0] = new BMap.Marker(point[0]);        // 创建标注
    info[0].address='北京市海淀区西翠路定慧东里';
    info[0].wait_time='大约 5min';
    info[0].test_Time='周一至周日:8:00-12:00,13:30-19:00';
    
	
	
    
    point[1] = new BMap.Point(116.2700840239024,39.91736734594211);
    marker[1] = new BMap.Marker(point[1]);    
    info[1].address='解放军总医院第三医学中心';
    info[1].wait_time='大约 2min';
    info[1].test_Time='周一至周日:7:00-11:30,13:00-16:30';
    
    
    point[2] = new BMap.Point(116.32172295013449,39.98302129561357);
   marker[2] = new BMap.Marker(point[2]);  
   info[2].address='海淀医院核酸采样点';
   info[2].wait_time='大约 2min';
   info[2].test_Time='周一至周日:24小时';
   
    
    point[3] = new BMap.Point(116.26964109903707,40.03051161037752);
    marker[3] = new BMap.Marker(point[3]);  
    info[3].address='解放军总医院第八医学中心核酸采样点';
    info[3].wait_time='大约 3min';
    info[3].test_Time='周一至周日:7:00-11:30,13:00-16:30';
    
   point[4] = new BMap.Point(116.28767421478072,39.90981799801457);
     marker[4] = new BMap.Marker(point[4]); 
     info[4].address='海淀区复兴路26号院社区花园';
     info[4].wait_time='大约 10min';
     info[4].test_Time='周一至周日:8:00-12:00,13:30-19:00';
     
    
     point[5] = new BMap.Point(116.31511147207198,39.969425399772845);
     marker[5] = new BMap.Marker(point[5]);   
     info[5].address='北三环西路99号西海国际中心广场';
     info[5].wait_time='大约 15min';
     info[5].test_Time='周一至周日:8:00-12:00,13:00-18:00';
    
    
    point[6] = new BMap.Point(116.32596184126243,39.969701877387045);
    marker[6] = new BMap.Marker(point[6]);   
    info[6].address='友谊宾馆50号楼门口';
    info[6].wait_time='大约 10min';
    info[6].test_Time='周一至周日:9:00-12:00,13:30-18:00';
    
    point[7] = new BMap.Point(116.32656760807416,39.978316467019575);
    marker[7] = new BMap.Marker(point[7]);    
    info[7].address='双榆树北路双榆树北里西侧';
    info[7].wait_time='大约 20min';
    info[7].test_Time='周一至周日:8:00-12:00,14:00-17:00';
    
    
    point[8] = new BMap.Point(116.29980456636676,39.923976172374665);
    marker[8] = new BMap.Marker(point[8]);    
    info[8].address='万寿路甲15号社区4区小花园';
    info[8].wait_time='大约 2min';
    info[8].test_Time='周一至周日:8:00-12:00,13:30-19:00';
    
    
   point[9] = new BMap.Point(116.24153557633697,39.95690594664738);
    marker[9] = new BMap.Marker(point[9]); 
    info[9].address='益园文创基地c区7号楼下';
    info[9].wait_Time='大约 17min';
    info[9].test_time='周一至周日:8:00-11:00,13:00-19:00';
    
    
    point[10] = new BMap.Point(116.2787943125786,40.04993008028889);
    marker[10] = new BMap.Marker(point[10]);      
    info[10].address='百度科技园2-3号楼廊外';
    info[10].wait_time='大约 13min';
    info[10].test_Time='周一至周五:9:30-11:30,12:30-17:30';
    
    
    point[11] = new BMap.Point(116.30904670425399,40.05604178031484);
    marker[11] = new BMap.Marker(point[11]);        
    info[11].address='上地九街数码科技广场南侧';
    info[11].wait_time='大约 11min';
    info[11].test_Time='周一至周五:9:30-12:00,13:00-18:00';
    
    
    point[12] = new BMap.Point(116.35706397718467,40.03915489939559);
    marker[12] = new BMap.Marker(point[12]);        
    info[12].address='永泰庄路永泰园6号楼楼下';
    info[12].wait_time='大约 9min';
    info[12].test_Time='周一至周五:8:00-12:00,13:30-19:00';
    
    
    point[13]= new BMap.Point(116.30828624000662,39.90417046344407);
    marker[13] = new BMap.Marker(point[13]);        
    info[13].address='万寿路28号院社区篮球场';
    info[13].wait_time='大约 3min';
    info[13].test_Time='周六、周日:8:00-12:00,14:30-17:00';
    
    
    point[14] = new BMap.Point(116.35540112235252,39.95560659865329);
    marker[14] = new BMap.Marker(point[14]);        
    info[14].address='交大东路公交车站';
    info[14].wait_time='大约 16min';
    info[14].test_Time='周一至周日:8:00-12:00,13:30-18:00';
    
    
    point[15] = new BMap.Point(116.35655712923476,39.963544561685055);
    marker[15] = new BMap.Marker(point[15]);        
    info[15].address='学院南路北京金辉国际商务会议大酒店';
    info[15].wait_time='大约 1min';
    info[15].test_Time='周一至周日:8:00-11:30,13:00-17:30';
    
    
    point[16] = new BMap.Point(116.34073045332758,39.90737390797262);
    marker[16] = new BMap.Marker(point[16]);        
    info[16].address='海淀区会城门东路2号';
    info[16].wait_time='大约 25min';
    info[16].test_Time='周一至周日:7:00-17:00';
    
    
    point[17] = new BMap.Point(116.37756078390906,39.96120073445521);
    marker[17] = new BMap.Marker(point[17]);        
    info[17].address='新街口外大街25号院东北侧40米';
    info[17].wait_time='大约 19min';
    info[17].test_Time='周一至周日:13:00-17:00,18:00-21:00';
   
    
    point[18] = new BMap.Point(116.37097639328785,39.993996970006364);
    marker[18] = new BMap.Marker(point[18]);        
    info[18].address='学院路街道核酸(北科大东南角海泰大厦对面)';
    info[18].wait_time='大约 8min';
    info[18].test_Time='周一至周日:9:00-12:00,13:30-17:30';
    
    
    point[19] = new BMap.Point(116.26014239654305,39.9853188222145);
    marker[19] = new BMap.Marker(point[19]);        
    info[19].address='北坞村23号';
    info[19].wait_time='大约 21min';
    info[19].test_Time='周一至周日:8:00-12:00,13:30-19:00';
    
    
    point[20] = new BMap.Point(116.35407082529045,39.98724603250097);
    marker[20] = new BMap.Marker(point[20]);        
    info[20].address='北京航空航天大学体育馆';
    info[20].wait_time='大约 10min';
    info[20].test_Time='周一至周日:8:00-12:00,13:30-18:00';
   
    
    //海淀区24h核酸检测点
    point[21] = new BMap.Point(116.30525643372209,40.03021673887703);
    marker[21] = new BMap.Marker(point[21]);        
    info[21].address='北京市海淀区树村西街甲6号';
    info[21].wait_time='大约 11min';
    info[21].test_Time='24h';
    info[21].tel='13126799895';
    info[21].needAppointment='健康宝平台预约';
    
    point[22] = new BMap.Point(116.24299055326601,39.956505270071034);
    marker[22] = new BMap.Marker(point[22]);        
    info[22].address='北京海淀区杏石口路与旱河路交汇处东北角';
    info[22].wait_time='大约 8min';
    info[22].test_Time='24h';
    info[22].tel='4008888690';
    info[22].needAppointment='不需要';
    
    point[23] = new BMap.Point(116.28532776915357,39.96266201212249);
    marker[23] = new BMap.Marker(point[23]);      
    info[23].address='北京海淀区远大路32号医院主楼东边车棚旁';
    info[23].wait_time='大约 14min';
    info[23].test_Time='24h';
    info[23].tel='88448147';
    info[23].needAppointment='院内自助机现场挂号；健康宝平台预约';
    
    
    point[24] = new BMap.Point(116.27132833588267,39.912374047712596);
    marker[24] = new BMap.Marker(point[24]);        
    info[24].address='北京海淀区永定路东街3号';
    info[24].wait_time='大约 10min';
    info[24].test_Time='24h';
    info[24].tel='无';
    info[24].needAppointment='院内自助机现场挂号；健康宝平台预约';
    
    point[25] = new BMap.Point(116.32710499062826,39.98639406062172);
    marker[25] = new BMap.Marker(point[25]);        
    info[25].address='北京海淀区中关村南路12号综合楼西广场';
    info[25].wait_time='大约 17min';
    info[25].test_Time='24h';
    info[25].tel='无';
    info[25].needAppointment='医院微信公众号预约';
    
    point[26] = new BMap.Point(116.35784843742019,39.99919023975339);
    marker[26] = new BMap.Marker(point[26]);        
    info[26].address='海淀区成府路17号学院路邮局南门';
    info[26].wait_time='大约 8min';
    info[26].test_Time='24h';
    info[26].tel='无';
    info[26].needAppointment='医院微信公众号预约';
    
    point[27] = new BMap.Point(116.32955296826147,40.04937783766459);
    marker[27] = new BMap.Marker(point[27]);        
    info[27].address='海淀区安宁庄西路与安宁庄南路交叉口东南角（近中石化大厂房）';
    info[27].wait_time='大约 7min';
    info[27].test_Time='24h';
    info[27].tel='4008693888';
    info[27].needAppointment='医院微信公众号预约';
    
</script>
