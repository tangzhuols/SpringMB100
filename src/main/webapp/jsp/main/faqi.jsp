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
	
	<script type="text/javascript" src="<%=path %>/js/dt.js"></script>
	<style type="text/css">
<!--
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
}
-->
    </style>
	</HEAD>
    <style type="text/css">
      .pp{border-bottom:#666 solid 857px;}
    .STYLE2 {
	font-size: 18px;
	font-weight: bold;
}
.STYLE6 {font-size: 18px}
    </style>
<BODY>
<form action="/mb100/gongdan/hFaqiTianJiaGongDan.action" method="post" enctype="multipart/form-data" name="">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr class="pp">
    <td ><h3 class="STYLE1">发起工单</h3></td>
  </tr>
</table>
<br>
<table width="100%" height="30" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="35" colspan="3"><h4 class="STYLE2">工单传送：</h4></td>
  </tr>
  <tr>
    <td width="15%" height="30" align="right" valign="middle"><span class="STYLE6">工单名称：</span></td>
    <td width="48%" ><input type="text" name="cwiName" value="" size="40">&nbsp;</td>
    <td width="37%">&nbsp;</td>
  </tr>
   <tr>
    <td height="30" align="right" valign="middle"><span class="STYLE6">工单类别：</span></td>
    <td ><select name="cwiType" id="type">
     <option value="请选择">--请选择--</option>
     <option value="内部">内部</option>
         <option value="外部">外部</option>
    </select>      </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="right" valign="middle"><span class="STYLE6">级&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别：</span></td>
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
    <td height="30" align="right" valign="middle"><span class="STYLE6">时间限制：</span></td>
    <td><input type="text" name="timeLimt" value="" size="40" onClick="getDateString(this,oCalendarChs)"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="right" valign="middle"><span class="STYLE6">发送对象：</span></td>
    <td><select name="sendTo" id="sendTo">
     <option value="请选择">--请选择--</option>
		<c:forEach items="${hVector}" var="cc">
		<option value="${cc.deptName }">${cc.deptName }</option>
		</c:forEach>
		<c:forEach items="${admins}" var="ss">
		<option value="${ss.adminName }">${ss.adminName }</option>
		</c:forEach>
		
    </select></td>
    <td>&nbsp;<input type="hidden" name="createUserId" value="${sadmin.adminName }"/></td>
  </tr>
  
  <tr>
    <td height="50" align="right" valign="middle" class="STYLE6">工作内容：</td>
    <td><textarea name="cwiContent" cols="40" rows="3"></textarea></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="right" valign="middle"><span class="STYLE6">上传附件：</span></td>
    <td>
      <input type="file" name="state" id="state"><a href="/mb100/gongdan/HWeiChuLiGangDan.action" class="STYLE6">下载模板</a></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" valign="middle"> &nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="button" id="button" value="提交">
      &nbsp; &nbsp; &nbsp; &nbsp;  <input type="reset" name="reset" id="reset" value="重置"></td>
    </tr>
</table>
</form>
</BODY>
</HTML>
