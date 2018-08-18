<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>My JSP 'select.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script type="text/javascript" src="<%=path %>/js/dt.js"></script></head>

  <body>
    <table width="695" height="25" align="center" cellspacing="1" border="1px"  background="<%=path%>/images/bg1.gif">
      <tr>
       <td width="95" height="42" align="center">资讯类型</td>
        <td width="107" align="center">发布人</td>
       <td width="75" align="center">信息标题</td>
        <td width="108" align="center">关键字</td>
        <td width="99" align="center">正文</td>
        <td width="120" align="center">发布时间</td>
      </tr>
        <page:pager dz="5">
	      <c:forEach items="${infos}" var="infos" varStatus="status">
		    <page:item nr="${status.count}">
		      <tr>
		        <td align="center">
		        	<c:if test="${(infos.infoId.cdcName)eq('公告')}">
		        		<a href="/mb100/zixun/selectG.action?coId=${infos.coId}" style="text-decoration: none;">${infos.infoId.cdcName}&nbsp;</a>
		        	</c:if>
		        	<c:if test="${(infos.infoId.cdcName)eq('最新政策')}">
		        		<a href="/mb100/zixun/selectZ.action?coId=${infos.coId}" style="text-decoration: none;">${infos.infoId.cdcName}&nbsp;</a>
		        	</c:if>
		        	<c:if test="${(infos.infoId.cdcName)eq('业务动态')}">
		        		<a href="/mb100/zixun/selectY.action?coId=${infos.coId}" style="text-decoration: none;">${infos.infoId.cdcName}&nbsp;</a>
		        	</c:if>
		        </td>
		        <td align="center">${infos.createorId.userName}&nbsp;</td>
		        <td align="center"><a href="/mb100/zixun/xxxxxs.action?infoId=${infos.infoId}" style="text-decoration: none;">${infos.title}</a>&nbsp;</td>
		        <td align="center">${infos.keyword}&nbsp;</td>
		        <td align="center">${infos.cdfContent}&nbsp;</td>
		        <td align="center">${fn:substring(infos.createDate,0,10)}&nbsp;</td>
		      </tr>
		    </page:item>
	      </c:forEach>
      </page:pager>
     <tr><td colspan="7" align="center"><page:bt /></td></tr>
    </table>
  </body>
</html>
