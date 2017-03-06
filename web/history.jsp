<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.sun.org.apache.xpath.internal.operations.String" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="textml; charset=UTF-8">
  <title>TRACE</title>
</head>
<body>

<style>
  .test {
    font-size: 40px;
    color: #080808;
  }

  .button.blue{
    font-size: 40px;
    background:-webkit-linear-gradient(top left,#aaebb9,#82d392);
    background:-moz-linear-gradient(top left,#aaebb9,#82d392);
    background:linear-gradient(top left,#aaebb9,#82d392);
  }
</style>

<%
  List lst = (java.util.List)request.getAttribute("hst");
  int size = lst.size();
  for (int i=0; i<size-1; i++){
%>
  <tr>
    <td>
      <div>
          <a class="test"><%=lst.get(i)%></a>
          <button class="button blue" onclick="showInMap('<%=lst.get(i)%>')">show in map</button>
      </div>
    </td>
  </tr>
<%
  }
%>

<script type="text/javascript">
function showInMap(s){
      alert(s);
      location.href = '<%=request.getContextPath()%>/rcv?GPSLocation='+s;
}
</script>

</body>
</html>