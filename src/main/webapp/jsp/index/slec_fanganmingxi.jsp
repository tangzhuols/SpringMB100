<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tijiaofangan.jsp' starting page</title>
    
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
.STYLE1 {
	color: #9900FF;
	font-size: 24px;
	font-weight: bold;
}
.aaaa{ border:1px solid #6699FF; width:250px; height:22px;}
.STYLE2 {
	font-family: "华文楷体";
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
.STYLE3 {
	font-family: "华文行楷";
	font-size: 36px;
}
a:link {
	color: #FF00FF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #9900FF;
}
a:hover {
	text-decoration: underline;
	color: #FF9900;
}
a:active {
	text-decoration: none;
	color: #00FFFF;
}
.STYLE4 {font-size: 24px}
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
  
  <body>
  <form action=""   method="post"   name="form1">
    <table width="500" height="33" border="0" cellpadding="0" cellspacing="0" bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td width="500" height="30">&nbsp;&nbsp; <span class="STYLE2">&nbsp; 选验明细</span></td>
      </tr>
    </table>
    <table width="500" border="0" align="left" cellpadding="0" cellspacing="1" 
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td height="35" colspan="2" align="center"><p class="STYLE1 STYLE3">查看选验明细
        &nbsp;&nbsp;&nbsp;&nbsp; <a href="<%=path %>/plan/selectXuanYanId.action" class="STYLE4">返回</a></p>        </td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>选验列表：</strong></td>
        <td height="35" align="left">
        <input name="slctlist" type="text" class="aaaa" id="slctlist" value="${cschema.coSlctList.subject}" readonly="readonly"></td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>合作伙伴：</strong></td>
        <td height="35" align="left">
        <input name="hezuofriend" type="text" class="aaaa" id="hezuofriend" value="${cschema.coi.deptName}" readonly="readonly"></td>
      </tr>
      <tr>
        <td width="151" height="30" align="right"><strong>方案名称：</strong></td>
        <td width="345" align="left"><label for="schemaName"></label>
        <input name="schemaName" type="text" class="aaaa" id="schemaName" value="${cschema. schemaName}" readonly="readonly"></td>
      </tr>
      <tr>
        <td height="30" align="right"><strong>方案描述：</strong></td>
        <td align="left"><label for="select"></label>
            <label for="schemaDesc"></label>
            <label>
            <input name="schemaDesc" type="text" class="aaaa" id="schemaDesc" value="${cschema. schemaDesc}" readonly="readonly">
        </label></td>
      </tr>
      <tr>
        <td height="30" align="right"><strong>方案附件：</strong></td>
        <td align="left"><label for="attachment"></label>
        <label>
        <input name="attachment" type="text" class="aaaa" id="attachment" readonly="readonly"
		 value="${cschema. attachment}">
        </label></td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>创建时间：</strong></td>
        <td height="35" align="left"><label class="aaaa">
          <input name="createDate" type="text" class="aaaa" id="createDate" readonly="readonly"
		  value="${cschema. createDate}">
        </label></td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>结论：</strong></td>
        <td height="35" align="left"><span class="aaaa">
          <input name="summing" type="text" class="aaaa" id="summing"  value="${cschema. summing}" readonly="readonly">
        </span></td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>处理状态：</strong></td>
        <td height="35" align="left"><span class="aaaa">
          <input name="dealStatus" type="text" class="aaaa" id="dealStatus" value="${cschema. dealStatus}" readonly="readonly">
        </span></td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>选验类型：</strong></td>
        <td height="35" align="left"><span class="aaaa">
          <input name="slctType" type="text" class="aaaa" id="slctType" readonly="readonly"
		  value="${cschema. slctType}">
        </span></td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>操作标志：</strong></td>
        <td height="35" align="left"><span class="aaaa">
          <input name="opStatus" type="text" class="aaaa" id="opStatus" value="${cschema. opStatus}" readonly="readonly">
        </span></td>
      </tr>
    </table>
  </form>
  <label></label>
  </body>
</html>
