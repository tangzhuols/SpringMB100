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
    
    <title>My JSP 'allzm.jsp' starting page</title>
    
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
      <table width="400" height="20" border="1" align="center" cellspacing="1"  bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG);">
        <tr>
          <td colspan="2"   align="right"><a href="index/index.jsp">返回</a></td>
        </tr>
        <c:forEach items="${all}" var="a">
        <tr>
          <td width="184"   align="left">&nbsp; ${a.rcSubject}</td>
          <td width="212" align="left" valign="bottom">&nbsp;${a.startTime} </td>
        </tr>
      </c:forEach>
  </table>
  </body>
</html>
