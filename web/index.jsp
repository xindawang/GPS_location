<%--
  Created by IntelliJ IDEA.
  User: my
  Date: 2017/2/14
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
  <title>定位小测试</title>
  <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
  <script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
  <script src="http://webapi.amap.com/maps?v=1.3&key=7666f4e74c2c7e9a05e81f4133a60e76"></script>
  <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
<div id="container"></div>

<script>

    var longitude = "<%=request.getAttribute("longitude")%>";
    var latitude = "<%=request.getAttribute("latitude")%>";
    var map = new AMap.Map('container', {

        resizeEnable: true,
        zoom:13,
        center: [longitude,latitude]

    });
</script>
</body>
<html>
