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
  <form name="form1" method="post" enctype="multipart/form-data"  action="/mb100/gongdan/UpdateGongDans.action?wfId=${GDbyId.wfId}">
    <table width="738" height="300" border="0" align="left" cellspacing=" " bgcolor="#66CCFF">
      <tr bgcolor="#FFFFFF">
        <td colspan="3"><span class="style1">修改工单：</span></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td width="172" align="right" valign="middle">工单名称：</td>
        <td colspan="2" align="left" valign="middle"> <input type="text" name="cwiName" value="${GDbyId.cwiName }"></td></td>
        <input type="hidden" name="createUserId" value="${GDbyId.createUserId }"/>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="right" valign="middle">工单类别：</td>
        <td colspan="2" align="left" valign="middle"><select name="cwiType" id="type">
     <option value="内部" ${GDbyId.cwiType=="内部"?"selected":"" }>内部</option>
         <option value="外部" ${GDbyId.cwiType=="外部"?"selected":"" }>外部</option>
    </select></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="right" valign="middle">级&nbsp;&nbsp; 别：</td>
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
        <td align="right" valign="middle">发送对象：</td>
        <td colspan="2" align="left" valign="middle">
        <select name="sendTo" id="sendTo">
		<c:forEach items="${hVector}" var="cc">
			<option value="${cc.deptName }" ${ww.sendTo==cc.deptName?"selected":""}>${cc.deptName }</option>
		</c:forEach>
		<c:forEach items="${admins}" var="ss">
			<option value="${ss.adminName }" ${ww.sendTo==ss.adminName?"selected":""}>${ss.adminName }</option>
		</c:forEach>
    </select></td>
      </tr>
      <tr bgcolor="#FFFFFF">
      <input  type="hidden" name="createUserId" value="${GDbyId.createUserId }"/>
        <td align="right" valign="middle">内&nbsp;&nbsp; 容：</td>
        <td colspan="2" align="left" valign="middle"><textarea name="cwiContent" cols="50">${GDbyId.cwiContent }</textarea></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="right" valign="middle">上传附件：</td>
        <td colspan="2" align="left" valign="middle">
        <input type="file" name="state" id="state"><a href="/mb100/gongdan/xzHGongDan.action">下载模板</a>        </td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="right" valign="middle">&nbsp;</td>
        <td width="291" align="center" valign="middle"><input type="submit" name="Submit" value="提   交"></td>
        <td width="269" align="left" valign="middle"><input type="reset" name="reset" value="撤   销"></td>
      </tr>
      <tr align="right" bgcolor="#FFFFFF">
        <td colspan="3"><a href="/mb100/gongdan/HchakanGongDan.action">返回上一层&gt;&gt;</a></td>
      </tr>
    </table>
  </form>
  </CENTER>
  </body>
</html>
