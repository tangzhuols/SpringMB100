<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'slec_fanganxiangxi.jsp' starting page</title>
    
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
.STYLE5 {font-size: 16px;font-family: "默认字体";}
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
  
  <body>
  
    <table width="785"  border="1" cellpadding="0" cellspacing="0"
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td  >&nbsp;&nbsp; <span class="STYLE2">&nbsp; 选验明细</span></td>
      </tr>
    </table>
    <table width="785" border="1" align="left" cellpadding="0" cellspacing="1" 
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td   colspan="2" align="center">  <strong>&nbsp; 
        <a href="/mb100/plan/verdictXuanYan.action?schemaId=${scss.coSlctList.slctId }" class="STYLE5">返回相关方案</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <a href="/mb100/plan/xuanyanAuditing.action">返回审核列表</a></strong> </td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>选验列表：</strong></td>
        <td height="35" align="left">
        <input name="slctlist" type="text" class="aaaa" id="slctlist" value="${scss.coSlctList.subject}"></td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>合作伙伴：</strong></td>
        <td height="35" align="left">
        <input name="hezuofriend" type="text" class="aaaa" id="hezuofriend" value="${scss.coi.deptName}"></td>
      </tr>
      <tr>
        <td height="30"    align="right"><strong>方案名称：</strong></td>
        <td  align="left"> 
        <input name="schemaName" type="text" class="aaaa" id="schemaName" 
         value="${scss. schemaName}" readonly="readonly"></td>
      </tr>
      <tr>
        <td height="30" align="right"><strong>方案描述：</strong></td>
        <td align="left"> 
            <input name="schemaDesc" type="text" class="aaaa"
             id="schemaDesc" value="${scss. schemaDesc}" readonly="readonly">
         </td>
      </tr>
      <tr>
        <td height="30" align="right"><strong>选验类型：</strong></td>
         <td align="left"> 
            <input name="slctType" type="text" class="aaaa" id="slctType" readonly="readonly"
			value="${scss. slctType}">
         </td>
      </tr>
      <tr>
        <td height="30" align="right"><strong>方案附件：</strong></td>
        <td align="left"> 
        <input name="attachment" type="text" class="aaaa" id="attachment" readonly="readonly"
		 value="${scss. attachment}">
         </td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>创建时间：</strong></td>
        <td height="35" align="left"> 
          <input name="createDate" type="text" class="aaaa" id="createDate" readonly="readonly"
		  value="${scss. createDate}">
         </td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>结论：</strong></td>
        <td height="35" align="left"> 
          <input name="summing" type="text" class="aaaa" id="summing"  value="${scss. summing}" readonly="readonly">
        </td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>处理状态：</strong></td>
        <td height="35" align="left"> 
          <input name="dealStatus" type="text" class="aaaa" id="dealStatus" value="${scss. dealStatus}">
        </td>
      </tr>
      <tr>
        <td height="35" align="right"><strong>操作标志：</strong></td>
        <td height="35" align="left"> 
          <input name="opStatus" type="text" class="aaaa" id="opStatus" value="${scss. opStatus}" readonly="readonly">
         </td>
      </tr>
    </table>
 
  
  </body>
</html>
