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
    
    <title>My JSP 'xinxi.jsp' starting page</title>
    
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
.style1 {
	font-size: 18px;
	font-weight: bold;
}
-->
    </style>
  </head>
  
  <body>
  <table width="825" height="302" border="0" align="center" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#0000FF">
    <tr bgcolor="#FFFFFF">
      <td height="27" colspan="2" align="center"><span class="style1"><br>查看工单详情</span></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td width="235" align="right">工单名称：</td>
      <td width="577">&nbsp;${ww.name }</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right">工单类别：</td>
      <td>&nbsp;${ww.type }</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right">级&nbsp;&nbsp;&nbsp; 别：</td>
      <td>&nbsp;${ww.grade }</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right">时间限制：</td>
      <td>&nbsp;${ww.timeLimt }</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right">发送对象：</td>
      <td>&nbsp;${ww.sendTo }</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right">创建时间：</td>
      <td>&nbsp;${ww.createDate }</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right">创 建 人：</td>
      <td>&nbsp;${ww.createUserId }</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right">内&nbsp;&nbsp;&nbsp; 容：</td>
      <td>&nbsp;${ww.content }</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align="right">工单状态：</td>
      <td>&nbsp;${ww.status }</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td colspan="2" align="right"><a href="main/GongdanServlet?method=toweichuli" class="style3">返回上一层&gt;&gt;</a></td>
    </tr>
  </table>
   
  </body>
</html>
