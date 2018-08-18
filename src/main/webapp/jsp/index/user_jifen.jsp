<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_jifen.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
.bb{font-size:14px;font-weight: bold; color:#F00;}
</style>
  </head>
  
  <body>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
 	<page:pager dz="6">
		 <c:forEach items="${alljifen}" var="all" varStatus="status">
  			<page:item nr="${status.count}">
		    <tr>  
		      <td width="15%" align="center">${status.count}</td>
		      <td width="70%" align="left"><img src="jsp/index/images/1.gif"></img>
		      ${all.ptnrIdRal.deptName }</td>
		      <td width="15%" align="right" class="bb">${all.score }</td>
		    </tr>
		   </page:item>
		  </c:forEach> 	
 	</page:pager>
 	<tr><td colspan="3" align="center"><page:bt /></td></tr>
  </table>
  </body>
</html>
