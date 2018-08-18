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
  .STYLE1 {font-size: 18px;
	color: #0033FF;
}
.aa {background-color:#CCCCCC}
.pp {font-size: 12px;
}
  </style>
  
  <script type="text/javascript" src="<%=path%>/js/dt.js"></script></head>
  
<body>
    <form action="/mb100/update.action" method="post"   name="form1">
      <table width="529" height="298" border="1" align="center" bordercolor="#6699FF" bgcolor="#66FFFF"  bordercolor="#B1C7E2"  style="background-image: url(images/bg.JPG);">
      <tr>
        <td height="24" colspan="2" align="center"><span class="STYLE1">修改响应招募信息</span></td>
      </tr>
      <tr>
        <td width="117" height="22" align="center" class="pp">参赛单位：</td>
        <td width="396"><label>
          <input name="runUnit" type="text" id="runUnit" value="${resp.runUnit}" >
          
          <input name="rcId" type="hidden" id="rcId" value="${resp.rcId}">
        </label></td>
      </tr>
      <tr>
        <td height="21" align="center" class="pp">联系人：</td>
        <td><label>
          <input name="linkman" type="text" id="linkman" value="${resp.linkman}">
        </label></td>
      </tr>
      <tr>
        <td height="20" align="center" class="pp">联系人电话：</td>
        <td><label>
          <input name="mobile" type="text" id="mobile" value="${resp.mobile}">
        </label></td>
      </tr>
      <tr>
        <td height="20" align="center" class="pp">联系人Email：</td>
        <td><label>
          <input name="email" type="text" id="email" value="${resp.email}">
        </label></td>
      </tr>
      <tr>
        <td height="20" align="center" class="pp">报价：</td>
        <td><label>
          <input name="price" type="text" id="price" value="${resp.price}">
        </label></td>
      </tr>
      <tr>
        <td height="37" align="center" class="pp">方案描述：</td>
        <td><label>
          <textarea name="schemaDesc" id="schemaDesc">${resp.schemaDesc}</textarea>
        </label></td>
      </tr>
      <tr>
        <td height="33" align="center" class="pp">原因：</td>
        <td><label>
          <textarea name="reason" id="reason">${resp.reason}</textarea>
        </label></td>
      </tr>
      <tr>
        <td height="24" align="center" class="pp">提交时间：</td>
        <td><label>
          <input name="submitDate" type="text" id="submitDate" 
          onClick="getDateString(this,oCalendarChs)" value="${resp.submitDate}">
        </label></td>
      </tr>
      <tr>
        <td height="25" colspan="2" align="center" valign="top"><label>
          <input name="Submit" type="submit" class="aa" value="提   交">
        </label></td>
      </tr>
      </table>
    </form>
</body>
</html>
