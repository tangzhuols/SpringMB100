<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatezhaomu.jsp' starting page</title>
    
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
.STYLE1 {	font-size: 18px;
	color: #0033FF;
}
.aa {background-color:#CCCCCC}
.pp {	font-size: 12px;
}
-->
    </style>
<script type="text/javascript" src="<%=path%>/js/dt.js"></script></head>
  
  <body>
    This is my JSP page. <br>
    <form name="form1" method="post" action="/mb100/updateHT.action">
      <table width="538" height="393" border="1" align="center" bordercolor="#6699FF" bgcolor="#66FFFF"  bordercolor="#B1C7E2"  style="background-image: url(images/bg.JPG);">
        <tr>
          <td height="24" colspan="2" align="center"><span class="STYLE1">修改招募信息</span></td>
        </tr>
        <tr>
          <td width="114" height="24" align="center" class="pp">招募主题:</td>
          <td width="378"><label>
            <input name="rcSubject" type="text" id="rcSubject" value="${zhaomuxinxi.rcSubject}">
			<input name="invtId" type="hidden" id="invtId" value="${zhaomuxinxi.invtId}">
          </label></td>
        </tr>
       		
       		<tr>
          <td height="24" align="center" class="pp">资源类别:</td>
          <td><label>
            <select name="resSort" id="resSort">
              <option value="渠道型"${zhaomuxinxi.resSort=='渠道型'?'selected':'' }>渠道型</option>
              <option value="拓展代理型"${zhaomuxinxi.resSort=='拓展代理型'?'selected':'' }>拓展代理型</option>
              <option value="支撑型"${zhaomuxinxi.resSort=='支撑型'?'selected':'' }>支撑型</option>
              <option value="营销资源型"${zhaomuxinxi.resSort=='营销资源型'?'selected':'' }>营销资源型</option>
              <option value="产品型"${zhaomuxinxi.resSort=='产品型'?'selected':'' }>产品型</option>
            </select>
          </label></td>
        </tr>
       		
        <tr>
          <td height="22" align="center" class="pp">发起时间:</td>
          <td><label>
            <input name="startTime" type="text" id="startTime" onClick="getDateString(this,oCalendarChs)" value="${zhaomuxinxi.startTime}">
          </label></td>
        </tr>
        <tr>
          <td height="25" align="center" class="pp">招募时间:</td>
          <td><label>
            <input name="rcTime" type="text" id="rcTime"
            onclick="getDateString(this,oCalendarChs)" value="${zhaomuxinxi.rcTime}">
          </label></td>
        </tr>
        <tr>
          <td height="23" align="center" class="pp">费用预算:</td>
          <td><label>
            <input name="mnTudget" type="text" id="mnTudget" value="${zhaomuxinxi.mnTudget}">
          </label></td>
        </tr>
        <tr>
          <td height="24" align="center" class="pp">招募数量:</td>
          <td><label>
            <input name="rcNum" type="text" id="rcNum" value="${zhaomuxinxi.rcNum}">
          </label></td>
        </tr>
        <tr>
          <td height="24" align="center" class="pp">招募介绍:</td>
          <td><label>
            <textarea name="rcIntro" id="rcIntro">${zhaomuxinxi.rcIntro}</textarea>
          </label></td>
        </tr>
        <tr>
          <td align="center" class="pp">面向行业:</td>
          <td><label>
            <input name="faceWay" type="text" id="faceWay" value="${zhaomuxinxi.faceWay}">
          </label></td>
        </tr>
        <tr>
          <td align="center" class="pp">招募标准:</td>
          <td><label>
            <input name="rcCriterion" type="text" id="rcCriterion" value="${zhaomuxinxi.rcCriterion}">
          </label></td>
        </tr>
        <tr>
          <td align="center" class="pp">注意对象:</td>
          <td><label>
            <input name="advertObject" type="text" id="advertObject" value="${zhaomuxinxi.advertObject}">
          </label></td>
        </tr>
        <tr>
          <td align="center" class="pp">招募类型:</td>
          <td><label>
            <select name="rcType" id="rcType">
              <option value="公开招募" ${zhaomuxinxi.rcType=="公开招募"?"selected":""} >公开招募</option>
              <option value="指定招募" ${zhaomuxinxi.rcType=="指定招募"?"selected":""} >指定招募</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td align="center" class="pp">计划参赛单位数:</td>
          <td><label>
            <input name="units" type="text" id="units" value="${zhaomuxinxi.units}">
          </label></td>
        </tr>
         
        <tr>
          <td align="center" class="pp">结束时间：</td>
          <td><label>
            <input type="text" name="endDate" onClick="getDateString(this,oCalendarChs)" value="${zhaomuxinxi.endDate}">
          </label></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><label>
            <input name="Submit" type="submit" class="aa" value="提  交">
          </label></td>
        </tr>
      </table>
  </form>
  </body>
</html>
