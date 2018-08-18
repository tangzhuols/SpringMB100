<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhuti_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.STYLE2 {	font-family: "华文楷体";
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
.STYLE3 {
	font-size: 36px;
	font-family: "华文行楷";
	color: #6600FF;
}
a:link {
	color: #CC00FF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFF00;
}
a:hover {
	text-decoration: underline;
	color: #FF6633;
}
a:active {
	text-decoration: none;
	color: #FF00FF;
}
.aaa{border:1px solid #66CCCC; height:23px; width:150px;}
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>


  <body>
    <table width="785" border="0" cellpadding="0" cellspacing="0"
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td>&nbsp;&nbsp; <span class="STYLE2">&nbsp; 归纳主题列表</span></td>
      </tr>
    </table>
      ${fenye.viewButton} 
 
    <table width="785"  border="1" align="left" cellpadding="0" cellspacing="1"
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td   colspan="8" align="center" class="STYLE3">主题列表</td>
      </tr>
      <page:pager dz="5">
		 	 <c:forEach items="${scl}" var="all" varStatus="status">
		 	 	<page:item nr="${status.count}">
			      <tr>
			        <td  align="center"><strong>主题名称</strong></td>
			        <td  align="center"> <strong>
		            <a href="/mb100/plan/verdictXuanYan.action?schemaId=${all.slctId }">${all.subject }</a></strong> </td>
			        <td  align="center"><strong>归属年</strong></td>
			        <td   align="center"><label><strong>${all.belongYear }</strong></label></td>
			        <td  align="center"><strong>归属月</strong></td>
			        <td   align="center"><label><strong>${all.belongMonth }</strong></label></td>
			        <td  align="center"><strong>操作状态</strong></td>
			        <td  align="center"><label><strong>${all.opFlag }</strong></label></td>
			      </tr>
		 </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="4" align="center"><page:bt /></td></tr>
    </table>
 
  
  
  
  </body>
</html>
