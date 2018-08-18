<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'toupdate.jsp' starting page</title>
    
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
	color: #666666;
}
-->
    </style>
<script type="text/javascript" src="<%=path %>/js/dt.js"></script></head>
  
  <body>
  <CENTER>
  <form name="form1" method="post" enctype="multipart/form-data"  action="/mb100/gongdan/UpdateGongDan.action?wfId=${GDbyId.wfId}">
    <table width="626" height="290" border="0" align="left" cellspacing="0" bgcolor="#6699FF">
      <tr bgcolor="#FFFFFF">
        <td height="35" colspan="3"><span class="style1">修改工单：</span></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td width="196" height="30" align="right" valign="middle">工单名称：</td>
        <td colspan="2" align="left" valign="middle">
        <input type="text" name="cwiName" value="${GDbyId.cwiName }"></td>
        <input type="hidden" name="createUserId" value="${GDbyId.createUserId }"/>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td height="30" align="right" valign="middle">工单类别：</td>
        <td colspan="2" align="left" valign="middle">
        <select name="cwiType" id="type">
     <option value="内部" ${GDbyId.cwiType=="内部"?"selected":"" }>内部</option>
        <option value="外部" ${GDbyId.cwiType=="外部"?"selected":"" }>外部</option>
    </select></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td height="30" align="right" valign="middle">级&nbsp;&nbsp; 别：</td>
        <td colspan="2" align="left" valign="middle">
        <select name="grade" id="grade">
       <td colspan="2" align="left" valign="middle"><select name="grade" id="grade">
       <option value="一般" ${GDbyId.grade=="一般"?"selected":"" }>一般</option>
        <option value="普通" ${GDbyId.grade=="普通"?"selected":"" }>普通</option>
         <option value="紧急" ${GDbyId.grade=="紧急"?"selected":"" }>紧急</option>
         <option value="特急" ${GDbyId.grade=="特急"?"selected":"" }>特急</option>
    </select></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td height="30" align="right" valign="middle">时间限制：</td>
         	<% SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd"); %>
        <td colspan="2" align="left" valign="middle">
        <input type="text" name="timeLimt"  
        onclick="getDateString(this,oCalendarChs)">    
        <td colspan="2" align="left" valign="middle">
          </td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td height="30" align="right" valign="middle">发送对象：</td>
        <td colspan="2" align="left" valign="middle"><select name="sendTo" id="sendTo">
		<c:forEach items="${admins}" var="cc">
		<option value="${cc.adminName }" ${GDbyId.sendTo==cc.adminName?"selected":""}>${cc.adminName }</option>
		</c:forEach>
    </select></td>
      </tr>
      <tr bgcolor="#FFFFFF">
      <input  type="hidden" name="createUserId" value="${GDbyId.createUserId }"/>
        <td height="45" align="right" valign="middle">内&nbsp;&nbsp; 容：</td>
        <td colspan="2" align="left" valign="middle"><textarea name="cwiContent" cols="45" rows="3">${GDbyId.cwiContent }</textarea></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td height="30" align="right" valign="middle">上传附件：</td>
        <td colspan="2" align="left" valign="middle">
        <input type="file" name="state" id="state" >
        <a href="main/GongdanServlet?method=download">下载模板</a>
        </td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td height="30" align="right" valign="middle">&nbsp;</td>
        <td width="213" align="center" valign="middle"><input type="submit" name="Submit" value="修   改"></td>
        <td width="211" align="center" valign="middle"><input type="reset" name="reset" value="撤   销"></td>
      </tr>
      <tr align="right" bgcolor="#FFFFFF">
        <td height="30" colspan="3"><a href="/mb100/gongdan/selectHistory.action">返回上一层&gt;&gt;</a></td>
      </tr>
    </table>
  </form>
  </CENTER>
  </body>
</html>
