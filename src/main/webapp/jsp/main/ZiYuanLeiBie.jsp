<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ZiYuanLeiBie.jsp' starting page</title>
    
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
.STYLE11 {
	color: #FF0000;
	font-size: 16px;
}
.STYLE12 {color: #0000FF}
-->
    </style>
</head>
  
  <body>
  <form name="form1" method="post" action="">
    <TABLE width="80%" border="0" cellpadding="0" cellspacing="0">
      <TBODY>
        <TR>
          <TD width="9%" align="center" valign="middle"><img src="<%=path %>/images/bg_point1.gif" width="4" height="7"></TD>
          <TD width="91%" class="index-12ahuase STYLE11">资源类别维护</TD>
        </TR>
      </TBODY>
    </TABLE>
	 <hr align="center" width="100%" style="border: 1px  dashed   #CCCCFF;"> 
    <table width="585" height="96" border="0" align="center" cellspacing="1" bgcolor="#33CCFF">
      <tr>
        <td width="85" align="center" bgcolor="#FFFFFF"><span class="STYLE12">资源ID</span></td>
        <td width="157" align="center" bgcolor="#FFFFFF"><span class="STYLE12">资源名称</span></td>
        <td width="244" align="center" bgcolor="#FFFFFF"><span class="STYLE12">资源描述</span></td>
        <td width="86" align="center" bgcolor="#FFFFFF"><span class="STYLE12">操作        </span></td>
      </tr>
      <c:forEach items="${datas}" var="datas">
      <tr>
        <td align="center" bgcolor="#FFFFFF">${datas.dataId}</td>
        <td align="center" bgcolor="#FFFFFF">${datas.dataName}</td>
        <td align="center" bgcolor="#FFFFFF">${datas.dataDescription}</td>
        <td align="center" bgcolor="#FFFFFF">
        <a href="javascript:if(confirm('你真的要删除吗？'))location.href='/mb100/ziyuanlei/delete.action?dataId=${datas.dataId}'">删除</a>||
        <a href="javascript:if(confirm('你真的要修改吗？'))location.href='/mb100/ziyuanlei/selectById.action?dataId=${datas.dataId}'">修改</a></td>
      </tr>
      </c:forEach>
    </table>
  </form>
  </body>
</html>
