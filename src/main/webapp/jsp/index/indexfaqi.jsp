<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:directive.page import="java.sql.PreparedStatement"/>
<jsp:directive.page import="java.sql.ResultSet"/>
<jsp:directive.page import="java.util.Vector"/>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>My JSP 'main.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		  <LINK href="css/admin.css" type="text/css" rel="stylesheet">
	
	<script type="text/javascript" src="<%=path %>/js/dt.js"></script></HEAD>
    <style type="text/css">
      .pp{border-bottom:#666 solid 857px;}
    </style>
<BODY>
<form action="/mb100/gongdan/insertgongdan.action" method="post" enctype="multipart/form-data" name="">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr class="pp">
    <td ><h3><strong>发起工单</strong></h3></td>
  </tr>
</table>
<br>
<table width="83%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="40" colspan="3"><h4><strong>工单传送：</strong></h4></td>
  </tr>
  <tr>
    <td width="24%" height="30" align="right" valign="middle">工单名称：</td>
    <td width="66%" ><input type="text" name="cwiName" value="" size="40">&nbsp;</td>
    <td width="10%">&nbsp;</td>
  </tr>
   <tr>
    <td height="30" align="right" valign="middle">工单类别：</td>
    <td ><select name="cwiType" id="type">
         <option value="请选择">--请选择--</option>
         <option value="内部">内部</option>
         <option value="外部">外部</option>
    </select>      </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="right" valign="middle">级&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别：</td>
    <td ><select name="grade" id="grade">
         <option value="请选择">--请选择--</option>
       <option value="一般">一般</option>
        <option value="普通">普通</option>
         <option value="紧急">紧急</option>
         <option value="特级">特级</option>
    </select>      </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="right" valign="middle">时间限制：</td>
    <td><input type="text" name="timeLimt" value="" size="40" onClick="getDateString(this,oCalendarChs)"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="right" valign="middle">发送对象：</td>
    <td>
    <select name="sendTo" id="sendTo">
         <option value="请选择">--请选择--</option>
		<c:forEach items="${admins}" var="cc">
		<option value="${cc.adminName }">${cc.adminName }</option>
		</c:forEach>
    </select></td>
    <td>&nbsp;<input type="hidden" name="createUserId" value=" ${coComUser.userName }"/></td>
  </tr>
  
  <tr>
    <td height="45" align="right" valign="middle">工作内容：</td>
    <td><textarea name="cwiContent" cols="40" rows="3"></textarea></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="right" valign="middle">上传附件：</td>
    <td>
      <input type="file" name="state" id="state">
      <a href="/mb100/gongdan/XiaZaiT.action">下载模板</a></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3"> &nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <input type="submit" name="button" id="button" value="提 交">
      &nbsp; &nbsp; &nbsp; &nbsp;  <input type="reset" name="reset" id="reset" value="重 置"></td></tr>
</table>
</form>
</BODY>
</HTML>
