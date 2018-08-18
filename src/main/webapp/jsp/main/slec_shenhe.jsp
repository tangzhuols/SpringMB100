<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'slec_shenhe.jsp' starting page</title>
    
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
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
  
  <body>
    <table width="785"  border="1" cellpadding="0" cellspacing="1"
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td>&nbsp;&nbsp; <span class="STYLE2">&nbsp; 选验审核列表</span></td>
      </tr>
    </table>
    <table border="1" cellpadding="0" cellspacing="1" width="785" 
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td   colspan="12" align="center"><span class="STYLE1 STYLE3">选验审核列表</span>       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label></label></td>${fenye.viewButton}      </tr>
      <tr >
        <td   height="30" align="center"><strong>编号</strong></td>
        <td  align="center"><strong>方案名称</strong></td>
        <td   align="center"><strong>方案描述</strong></td>
        <td align="center"><strong>创建时间</strong></td>
        <td  align="center"><strong>方案附件</strong></td>
        <td   align="center"><strong>处理状态</strong></td>
         <td   align="center"><strong>操作</strong></td>
      </tr>
     <page:pager dz="5">
		 	 <c:forEach  items="${scss}" var="all" varStatus="status">
		 	 	<page:item nr="${status.count}">
         <tr>
        <td width="94" height="30" align="center"><strong>${all.schemaId }</strong></td>
        <td width="124" align="center"><strong>
        <a href="/mb100/plan/detailXuanYan.action?schemaId=${all.schemaId }">${all.schemaName }</a></strong></td>
        <td width="143" align="center"><strong>${all.schemaDesc }</strong></td>
        <td width="115" align="center"><strong>${fn:substring(all.createDate,0,10)}</strong></td>
        <td width="117" align="center"><strong>${all.attachment }</strong></td>
        <td width="167" align="center"><strong>${all.dealStatus }</strong></td>
<td width="145" align="center">
			&nbsp;
			<c:if test="${all.dealStatus == '待管理员审核'}">
			         <strong>  <a href="/mb100/plan/updateAuditing.action?schemaId=${all.schemaId }">参选</a>&nbsp;&nbsp;&nbsp; 
			                         <a href="/mb100/plan/updateAuditing.action?schemaId1=${all.schemaId }">不参选</a></strong>
			</c:if>
</td>
      </tr>
 </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="7" align="center"><page:bt /></td></tr>
    </table>
    <label></label>
  </body>
</html>
