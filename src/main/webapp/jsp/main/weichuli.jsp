<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>
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
  <table width="100%" border="0" align="center" cellspacing="1">
    <tr>
      <td colspan="9"><h2><strong>未处理工单</strong></h2></td>
    </tr>
    <tr>
      <td colspan="9"><strong>工单显示：</strong></td>
    </tr>
    <tr bgcolor="#BBF5EE">
      <td>工单名称</td>
      <td>级别</td>
      <td>时间限制</td>
      <td>发送对象</td>
      <td>创建时间</td>
      <td>工作内容</td>
      <td>附件</td>
      <td>操作</td>
       
    </tr>
    <page:pager dz="5">
		 	<c:forEach items="${wVector}" var="vv" varStatus="status">
		 	 	<page:item nr="${status.count}">
    
				            <tr>
				      <td>&nbsp;${vv.cwiName }</td>
				      <td>&nbsp;${vv.grade }</td>
				      <td>&nbsp;${vv.timeLimt }</td>
				      <td>&nbsp;${vv.sendTo }</td>
				      <td>&nbsp;${fn:substring(vv.createDate,0,10)}</td>
				      <td>&nbsp;${vv.cwiContent }</td>
				 	 <td>&nbsp;<a href="/mb100/plan/download2.action">${vv.statu }</a></td>
				      <td>
				      <a href="/mb100/gongdan/HuiKuiGongdanH.action?wfId=${vv.wfId}&&createUserId=${vv.createUserId }">回馈</a>
				     <c:if test="${vv.createUserId == sadmin.adminName}"> 
				      ||<a href="javascript:if(confirm('你确定要结束吗？')){
        window.location.href='/mb100/gongdan/HJieShuGongDan.action?wfId=${vv.wfId}';
     }">结束</a>
           </c:if>
     </td>
				       
				    </tr>
      </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="8" align="center"><page:bt /></td></tr>
 
  </table>
  <br>
  </body>
</html>
