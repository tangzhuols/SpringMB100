<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<script type="text/javascript" src="js/dt.js"></script>
		<style type="text/css">
<!--
.STYLE2 {
	font-size: 24px
}
-->
</style>
	</head>
	<script type="text/javascript">

</script>

	<body>

		<table width="100%" align="center" cellspacing="1" border='0'>
			<tr>
				<td colspan="10">
					<h2>
						<strong>工单查看</strong>
					</h2>
				</td>
			</tr>
			<tr><td colspan="6">最新招募&nbsp;&nbsp;<a href="/mb100/selectAll.action">>>更多</a></td></tr>
		<tr>
          <td width="83" align="center" colspan="2"><span >招募主题</span></td>
          <td width="85" align="center"><span >招募标准</span></td>
          <td width="85" align="center"><span >发起时间</span></td>
          <td width="79" align="center"><span >结束时间</span></td>
          <td width="124" align="center"><span >操作</span></td>
   		 </tr>
   		 	<page:pager dz="5">
		 	 <c:forEach items="${zhaomu}" var="ss" varStatus="status">
		 	 	<page:item nr="${status.count}">
		    <tr>
		      <td  colspan="2" align="center"><span class="STYLE5">&nbsp;${ss.rcSubject}</a></span></td>
		      <td><span class="STYLE5" align="center">&nbsp;${fn:substring(ss.rcCriterion,0,10)}</span></td>
		      <td  ><span class="STYLE5" align="center">&nbsp;${fn:substring(ss.rcTime,0,10)}</span></td>
		      <td  ><span class="STYLE5" align="center">&nbsp;${fn:substring(ss.endDate,0,10)}</span></td>
		      <td align="center"  ><span class="STYLE5">
		        <c:if test="${ss.opStatus=='1'}"><a href="/mb100/add.action">参加</a></c:if>
		     </span></td>
		    </tr>
		    </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="5" align="center"><page:bt /></td></tr>
		<c:if test="${zhaomu == null}"><tr>
			<td align="center" colspan="6">
				没有找到符合条件的记录！
			</td></tr>
		</c:if> 
		 
		 
		 <tr><td colspan="5" align="center">&nbsp;</td></tr><tr></tr>
			<tr><td colspan="6">最新待反馈工单&nbsp;&nbsp;<a href="/mb100/gongdan/FankuiGangDan.action">>>更多</a></td></tr>
			<tr bgcolor="#BBF5EE">
				<td height="30" align="center" colspan="2">工单名称</td>
				<td align="center" colspan="2">创建时间</td>
				<td align="center" colspan="2">操作</td>
			</tr>
			<page:pager dz="5">
		 	<c:forEach items="${cowfirm}" var="cc" varStatus="status">
		 	 	<page:item nr="${status.count}">
			
				<tr bgcolor="#BBF5EE">
					<td height="30" align="center" colspan="2">
						&nbsp;
						 ${cc.cwiName}
					</td>
					<td align="center" valign="middle" colspan="2">${fn:substring(cc.createDate,0,10)}
						&nbsp;
					</td>
					<input type="hidden" name="createUserId" value="" />

					<td align="center" colspan="2"><%-- <!-- && cc.createUserId==comUser.userName --> --%>
						<c:if             
							test="${cc.status=='待处理' || cc.createUserId==comUser.userName  }">
							<a
								href="/mb100/gongdan/XiuGaiGongdan.action?wfId=${cc.wfId}">修改</a>||
		         <a
								href="javascript: if(confirm('你确定要删除吗?'))location.href='/mb100/gongdan/deleteGongDans.action?wfId=${cc.wfId}'">删除</a>
						</c:if>
						&nbsp;
					</td>
				</tr>
			  </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="5" align="center"><page:bt /></td></tr>
			<c:if test="${cowfirm == null}"><tr>
			<td align="center" colspan="6">
				没有找到符合条件的记录！
			</td></tr>
		</c:if> 
	</body>
</html>
