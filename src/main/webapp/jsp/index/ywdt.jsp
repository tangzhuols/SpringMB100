<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ywdt.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      <c:forEach items="${ywdt}" var="yy" varStatus="aa">
        <table width="379">
          <tr>
            <td width="225" align="left"> 
            <img src="images/1.gif"></img>
            <a href="index/InitIndexServlet?method=xx&&id=${yy.infoId}">${yy.title}</a>
            <c:if test="${aa.index<5}">&nbsp;&nbsp;<img src="images/new.gif"></c:if></td>
            <td width="142" align="right">${yy.createDate} </td>
          </tr>
        </table>
      </c:forEach>
  </body>
</html>
