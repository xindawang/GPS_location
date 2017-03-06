<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
  <title>自定义点标记内容</title>
  <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
  <style type="text/css">
    .amap-marker .marker-route {
      position: absolute;
      width: 40px;
      height: 44px;
      color: #e90000;
      background: url(http://webapi.amap.com/theme/v1.3/images/newpc/poi-1.png) no-repeat;
      cursor: pointer;
    }
    .amap-marker .marker-marker-bus-from {
      background-position: -334px -180px;
    }
  </style>
  <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=您申请的key值"></script>
  <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
<div id="container"></div>
<script type="text/javascript">
    var longitude = "<%=request.getAttribute("longitude")%>";
    var latitude = "<%=request.getAttribute("latitude")%>";
    var map = new AMap.Map("container", {
        resizeEnable: true,
        center: [longitude, latitude],//地图中心点
        zoom: 13 //地图显示的缩放级别
    });
    var marker = new AMap.Marker({ //添加自定义点标记
        map: map,
        position: [longitude, latitude], //基点位置
        offset: new AMap.Pixel(-17, -42), //相对于基点的偏移位置
        draggable: false,  //是否可拖动
        content: '<div class="marker-route marker-marker-bus-from"></div>'   //自定义点标记覆盖物内容
    });
</script>
</body>
</html>