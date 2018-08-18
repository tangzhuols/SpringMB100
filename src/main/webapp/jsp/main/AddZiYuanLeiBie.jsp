<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddZiYuanLeiBie.jsp' starting page</title>
    
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
.STYLE1 {color: #FF0000}
-->
    </style>
</head>
  
  <body>
  <form name="form1" method="post" action="/mb100/ziyuanlei/insert.action">
    <TABLE width="80%" border="0" cellpadding="0" cellspacing="0">
      <TBODY>
        <TR>
          <TD width="9%" align="center" valign="middle"><img src="<%=path %>/images/bg_point1.gif" width="4" height="7"></TD>
          <TD width="91%" class="index-12ahuase STYLE11 STYLE1">添加资源类别</TD>
        </TR>
      </TBODY>
    </TABLE>
	 <hr align="center" width="100%" style="border: 1px  dashed   #CCCCFF;"> 
     <table width="420" height="126" border="0" align="center" cellspacing="1" bgcolor="#00FFFF">
       <tr>
         <td width="120" align="center" bgcolor="#FFFFFF">资源名称</td>
         <td width="293" bgcolor="#FFFFFF">
        <input type="text" name="dataName"></td>
       </tr>
       <tr>
         <td align="center" bgcolor="#FFFFFF">资源描述</td>
         <td bgcolor="#FFFFFF"><textarea name="dataDescription"></textarea></td>
       </tr>
       <tr>
         <td colspan="2" align="center" bgcolor="#FFFFFF">
          <input type="image"  src="<%=path %>/images/ti-01.gif" width="61" height="26"></td>
       </tr>
     </table>
  </form>
  </body>
</html>