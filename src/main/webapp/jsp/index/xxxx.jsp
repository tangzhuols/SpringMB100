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
    
    <title>My JSP 'xxxx.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body {
	background-image: url(<%=path%>/images/bg1.gif);
}
.STYLE1 {
	color: #FF66CC;
	font-weight: bold;
	font-size: 24px;
}
-->
  </style></head>
  
  <body>
  <table width="334" height="154" border="0" align="left" cellpadding="0" cellspacing="1" bgcolor="#99CC66">
    <tr>
      <td height="40" colspan="2" align="center" bgcolor="#FFFFFF"><span class="STYLE1">详细信息</span></td>
    </tr>
    <tr>
      <td width="117" height="30" align="right" bgcolor="#FFFFFF"><strong>资讯类型：</strong></td>
      <td width="214" align="left" bgcolor="#FFFFFF">${in.category.cdcName}&nbsp;</td>
    </tr>
    <tr>
      <td height="30" align="right" bgcolor="#FFFFFF"><strong>发布人：</strong></td>
      <td align="left" bgcolor="#FFFFFF">${in.createorId}&nbsp;</td>
    </tr>
    <tr>
      <td height="30" align="right" bgcolor="#FFFFFF"><strong>信息标题：</strong></td>
      <td align="left" bgcolor="#FFFFFF">${in.createorId}&nbsp;</td>
    </tr>
    <tr>
      <td height="30" align="right" bgcolor="#FFFFFF"><strong>关键字：</strong></td>
      <td align="left" bgcolor="#FFFFFF">${in.keyword}&nbsp;</td>
    </tr>
    <tr>
      <td height="30" align="right" bgcolor="#FFFFFF"><strong>正文：</strong></td>
      <td align="left" bgcolor="#FFFFFF">${in.cdfContent}&nbsp;</td>
    </tr>
    <tr>
      <td height="30" align="right" bgcolor="#FFFFFF"><strong>发布时间：</strong></td>
      <td align="left" bgcolor="#FFFFFF">${in.createDate}&nbsp;</td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF"><strong>状态：</strong></td>
      <td align="left" bgcolor="#FFFFFF">${in.state}&nbsp;</td>
    </tr>
  </table>
  </body>
  
</html>
