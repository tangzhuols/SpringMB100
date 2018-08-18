<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'chakan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  <body>
  <table width="1340" border="0" align="center" cellspacing="1">
    <tr>
      <td colspan="10"><h2><strong>工单查看</strong></h2></td>
    </tr>
    <tr>
      <td colspan="10"><strong>工单传送：</strong></td>
    </tr>

           <tr>
        
      <td width="100">工单名称</td>
      <td width="100">级别</td>
      <td width="120">时间限制</td>
      <td width="120">发送对象</td>
      <td width="120">创建时间</td>
      <td width="300">工作内容</td>
      <td width="120">附件(点击下载)</td>
      <td width="120" align="center">工单状态</td>
      <td width="120">操作</td>
    <td width="120">附加操作</td>
    </tr>
    ${fenye.viewHref}
    	<page:pager dz="5">
		 	 <c:forEach items="${cwis1}" var="cc" varStatus="status">
		 	 	<page:item nr="${status.count}">
     
          <tr>
      <td>&nbsp;${cc.cwiName}</td>
      <td>&nbsp;${cc.grade}</td>
      <td>&nbsp;${cc.timeLimt}</td>
      <td>&nbsp;${cc.sendTo}</td>
      <td>&nbsp;${fn:substring(cc.createDate,0,10)}</td>
      <td>&nbsp;${cc.cwiContent }</td>
      <td>&nbsp;<a href="/mb100/gongdan/download2.action">${cc.statu }</a></td>
      <td align="center" valign="middle">${cc.status }</td>
      <input type="hidden" name="createUserId" value="${cc.createUserId }"/>
      <td><a href="/mb100/gongdan/huikuiXinxi.action?wfId=${cc.wfId}&createUserId=${cc.createUserId }">回馈</a>||<a href="javascript:if(confirm('你确定要结束吗?'))location.href='/mb100/gongdan/endGongDan.action?wfId=${cc.wfId}'">结束</a>
      </td>
    <td><a href="javascript:if(confirm('你确定要删除吗？')){
        window.location.href='/mb100/gongdan/deleteGongDan.action?wfId=${cc.wfId}';}">删除</a></td>
        </tr>
             </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="9" align="center">a<page:bt /></td></tr>
          ${fenye.viewHref}
  </table>
  <br>
  </body>
</html>
