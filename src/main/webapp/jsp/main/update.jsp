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
    
    <title>My JSP 'zixunweihu.jsp' starting page</title>
    
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
-->
</style></head>
  
  <body> 
    <br>
    <form name="form1" method="post" action="/mb100/zixun/updateZixun.action">
      <table width="400" height="289" border="1" align="center" cellspacing="0" bgcolor="#FFFFCC">
        <tr>
          <td width="124" align="right">资讯类别：</td>
          <td width="311"><label>
          <select name="coId" id="coId">
            <option selected  value="-1">--请选择资讯类别--</option>
        <c:forEach   items="${co}"  var="co">
               <option value="${co.cateId }" ${co.cateId==in.coId?"selected":""}>--${co.cdcName}--</option> 
            </c:forEach>
          </select>
          </label>
          </td>
          
        </tr>
        <tr>
          <td align="right">发布人：</td>
          <td><label>
            <input type="text" name="createorId" value="${in.createorId}">
          <input type="hidden" name="infoId" value="${in.infoId }">
          </label></td>
        </tr>
        <tr>
          <td align="right">资讯标题：</td>
          <td><label>
            <input type="text" name="title" value="${in.title}">
          </label></td>
        </tr>
        <tr>
          <td align="right">关键字：</td>
          <td><label>
            <input type="text" name="keyword" value="${in.keyword}">
          </label></td>
        </tr>
        <tr>
          <td align="right">资讯正文：</td>
          <td><label>
            <textarea name="cdfContent" cols="35" rows="8">${in.cdfContent}</textarea>
          </label></td>
        </tr>
		     <tr>
          <td height="23" align="right">状态：</td>
          <td><label>
            <select name="state">
              <option value="请选择发布状态">请选择发布状态</option>
              <option value="Y"   ${in.state=='Y'?"selected":" "}>已发布</option>
              <option value="N"   ${in.state=='N'?"selected":" "}>未发布</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><label>
            <input type="submit" name="Submit" value="提交资讯维护">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <input type="submit" name="Submit2" value="取消资讯维护">
          </label></td>
        </tr>
      </table>
  </form>
  </body>
</html>
