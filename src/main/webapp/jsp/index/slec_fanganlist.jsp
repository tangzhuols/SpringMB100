<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fanganlist.jsp' starting page</title>
    
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
-->
    </style>
</head>
  
  <body>
  <form name="form1" method="post" action="">
    <table width="800" height="25" border="0" cellpadding="0" cellspacing="0" style="background-image: url(images/bg.JPG)">
      <tr>
        <td>&nbsp;&nbsp; <span class="STYLE2">&nbsp; 选验申请列表</span></td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="1" bordercolor="#B1C7E2"  style="background-image: url(images/bg.JPG)">
      <tr>
        <td height="30" colspan="12" align="center"><span class="STYLE1 STYLE3">选验申请列表</span>        </td>
        ${fenye.viewButton}
      </tr>
      <tr>
        <td width="170" height="30" align="center"><strong>编号</strong></td>
        <td width="200" align="center"><strong>方案名称</strong></td>
        <td width="280" align="center"><strong>方案描述</strong></td>
        <td width="300" align="center"><strong>创建时间</strong></td>
        <td width="430" align="center"><strong>处理状态</strong></td>
        <td width="250" align="center"><strong>方案附件</strong></td>
      </tr>
      <page:pager dz="5">
		 	<c:forEach items="${scss}"  var="all" varStatus="status">
		 	 	<page:item nr="${status.count}">
         <tr>
        <td width="170" height="30" align="center"><strong>${all.schemaId }</strong></td>
        <td width="197" align="center"><strong>${all.schemaName }</strong></td>
        <td width="191" align="center"><strong>${all.schemaDesc }</strong></td>
        <td width="183" align="center"><strong>${fn:substring(all.createDate,0,10)}</strong></td>
        <td width="176" align="center"><strong>${all.dealStatus }</strong></td>
        <td width="180" align="center"><strong>${all.attachment }</strong></td>
      </tr>
 			</page:item>
		 </c:forEach>
	 </page:pager>
<tr><td colspan="5" align="center"><page:bt /></td></tr>
    </table>
  </form>
  </body>
</html>
