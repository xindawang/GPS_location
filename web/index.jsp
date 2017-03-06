<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="textml; charset=UTF-8">
  <title>c:forEach</title>
</head>
<body>
<c:forEach begin="0" end="100" step="1" varStatus="i">
  <c:out value="${i.index}"></c:out>
</c:forEach>
<hr>
<%
  String[] array = { "A", "B", "C", "D", "E", "F","G","H","I","J","K","L","M","N",
          "O","P","Q","R","S","T","U","V","W","X","Y","Z"};
  request.setAttribute("array", array);
%>
<c:forEach items="${array}" var="arr">
  <c:out value="${arr}"></c:out>
  <br />
</c:forEach>
<%
  List<String> list = new ArrayList<String>();
  list.add("You");
  list.add("Hai");
  list.add("Dong");
  request.setAttribute("list", list);
%>
<c:forEach items="${list}" var="cList">
  <br />
  <c:out value="${cList}"></c:out>
</c:forEach>
</body>
</html>