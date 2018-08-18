<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ywdtmore.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script type="text/javascript" src="<%=path %>/js/dt.js"></script><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body {
	background-image: url(<%=path%>/images/bg1.gif);
}
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
	color: #FF6699;
}
-->
  </style></head>
  
  <body>
  ${fenye.viewButton} 
  <form name="form1" method="post" action="">
              
    <table width="695" height="86" border="0" align="left" cellpadding="0" cellspacing="1" bgcolor="#99CC66">
      <tr>
        <td height="42" colspan="6" align="center" bgcolor="#FFFFFF"><span class="STYLE1">业务动态更多信息</span></td>
      </tr>
      <tr>
       <td width="110" height="42" align="center" bgcolor="#FFFFFF"><strong>资讯类型</strong></td>
        <td width="125" align="center" bgcolor="#FFFFFF"><strong>发布人</strong></td>
       <td width="132" align="center" bgcolor="#FFFFFF"><strong>信息标题</strong></td>
        <td width="116" align="center" bgcolor="#FFFFFF"><strong>关键字</strong></td>
        <td width="152" align="center" bgcolor="#FFFFFF"><strong>正文</strong></td>
        <td width="128" align="center" bgcolor="#FFFFFF"><strong>发布时间</strong></td>
      </tr>
      <c:forEach items="${infos}" var="infos">
      <tr>
        <td height="30" align="center" bgcolor="#FFFFFF">${infos.category.cdcName}&nbsp;</td>
        <td align="center" bgcolor="#FFFFFF">${infos.createorId}&nbsp;</td>
        <td align="center" bgcolor="#FFFFFF">${infos.title}&nbsp;</td>
        <td align="center" bgcolor="#FFFFFF">${infos.keyword}&nbsp;</td>
        <td align="center" bgcolor="#FFFFFF">${infos.cdfContent}&nbsp;</td>
        <td align="center" bgcolor="#FFFFFF">${fn:substring(infos.createDate,0,10)}&nbsp;</td>
      </tr>
      </c:forEach>
    </table>
  </form> 
  </body>
</html>
