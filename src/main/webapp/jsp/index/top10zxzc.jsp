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
    
    <title>My JSP 'top10ggb.jsp' starting page</title>
    
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
      <table  width="202" border="0" cellspacing="0">
      <c:forEach items="${infos}" var="infos" varStatus="kk">
      <tr>
      <td width="118">
             <img src="images/1.gif"></img><A href="/mb100/zixun/selectZ.action?coId=${infos.coId}}">${infos.title}</A>&nbsp;
            <c:if test="${kk.index<5}"><img src="images/new.gif"></c:if>
       </td>
             <td width="169" align="right">${infos.createDate} </td>
      </tr>
      </c:forEach>
  </table>
  </body>
</html>
