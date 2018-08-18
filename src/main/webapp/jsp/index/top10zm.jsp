<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top10zm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
body {
	margin-top: 0px;
}
-->
</style></head>
  
  <body >
 
     <table width="100%"   border="0" align="left" cellspacing="0">
         <c:forEach items="${top10}" var="a">
        <tr>
          <td width="61%"   align="left">&nbsp;
         <img src="images/1.gif"></img>  <a href="index/ResponseZhaomuServlet?dothing=info&rcId=${a.rcId}">${a.rcSubject}</a>          </td>
          <td width="39%" align="right" valign="bottom">&nbsp;${a.startTime}</td>
        </tr>
       </c:forEach>
  </table> 
       
  </body>
</html>
