<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'huikui.jsp' starting page</title>
    
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
.style2 {
	font-family: "华文仿宋";
	font-size: 24px;
	font-weight: bold;
	color: #0000FF;
}
.style3 {
	font-size: 18px;
	color: #666666;
}
.style4 {color: #E0DFE3}
-->
    </style>
</head>
  
  <body>
  <center>
    <form name="form1" method="post" action="/mb100/gongdan/HinsertGongDanFanKuai.action">
      <table width="100%" height="173" border="0" align="center" cellpadding="0" cellspacing="0">
 

         <tr>
           <td class="style2">
           
           
           <table width="100%" border="0" cellspacing="1" bgcolor="#0000FF">
             <tr align="center" valign="middle" bgcolor="#00FFFF">
               <td width="12%">反馈信息编号</td>
               <td width="15%">反馈人编号</td>
               <td width="73%">反馈信息</td>
             </tr>
             <page:pager dz="5">
		 	 <c:forEach items="${cwf1}" var="dd" varStatus="status">
		 	 	<page:item nr="${status.count}">
             <tr align="center" valign="middle" bgcolor="#FFFFFF">
               <td>&nbsp;${dd.wfkId }</td>
               <td>&nbsp;${dd.cwi.createUserId}</td>
               <td>&nbsp;${dd.cyfContent }</td>
             

               <c:set var="a" value="${dd.wfkId}" /> 
             
             </tr>
               </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="3" align="center"><page:bt /></td></tr>
                    <tr align="center" height="20" valign="middle" bgcolor="#FFFFFF">
               <td width="12%"><c:out value="${a==null}"></c:out></td>
               <td width="15%"></td>
               <td width="73%"></td>
             </tr>
           </table>
           
           
           
           </td>
         </tr>
         <tr>
          <td class="style2">请输入你要反馈的内容:</td>
        </tr>
        <tr>
          <td align="center"><textarea name="content" cols="70" rows="5"></textarea>
           <input type="hidden" value="${sadmin.adminId}" name="replyId">  
          <input type="hidden" name="wformId" value="${cwfId}">
           <input type="hidden" name="createUserId" value="1003">
          </td>
        </tr>
             <tr>
           
          <td align="center" valign="middle"><input type="submit" name="Submit" value="提交">
          &nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
        
          <td align="right"><a href="/mb100/gongdan/HJieShuGongDan.action?wfId=${cwfId}" class="style3">结束回馈工单&gt;&gt;</a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="/mb100/gongdan/HWeiChuLiGangDan.action" class="style3">返回上一层&gt;&gt;</a></td>

        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;          </p>
    </form>
    <br>
  </center>
  </body>
</html>
