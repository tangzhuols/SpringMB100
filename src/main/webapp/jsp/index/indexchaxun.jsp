<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>
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

			<tr bgcolor="#BBF5EE">
				<td height="30" align="center">
					工单名称
				</td>
				<td align="center">
					级别
				</td>
				<td align="center">
					工单状态
				</td>
				<td align="center">
					操作
				</td>

			</tr>
			<page:pager dz="5">
		 	 <c:forEach items="${cowfirm}" var="cc" varStatus="status">
		 	 	<page:item nr="${status.count}">
				<tr bgcolor="#BBF5EE">
					<td height="30" align="center">
						&nbsp;
						<a href="javascript:pppp(${kk.index})"> ${cc.cwiName}</a>
					</td>
					<td align="center">${cc.grade}
						&nbsp;
					</td>
					<td align="center" valign="middle">${cc.status}
						&nbsp;
					</td>
					<input type="hidden" name="createUserId"
						value="" />

					<td align="center"><%-- <!-- && cc.createUserId==comUser.userName --> --%>
						<c:if             
							test="${cc.status=='待处理' && cc.createUserId==comUser.userName  }">
							<a
								href="/mb100/gongdan/XiuGaiGongdan.action?wfId=${cc.wfId}">修改</a>||
		         <a
								href="javascript: if(confirm('你确定要删除吗?'))location.href='/mb100/gongdan/deleteGongDans.action?wfId=${cc.wfId}'">删除</a>
						</c:if>
						&nbsp;
					</td>


				</tr>

				<tr style="display: none; font-size: 10px" id="tr${status.index}">
					<td colspan="5">
						<table style="font-size: 14px" width="92%" height="69" border="0"
							align="center" bgcolor="#FFF5EE">
							<tr>
								<td>
									时间限制:
								</td>
								<td>
									发送对象:
								</td>
								<td>
									工单类别:
								</td>
								<td>
									创建人:
								</td>
							</tr>
							<tr>
								<td>
									工作内容:
								</td>
								<td>
									附件:
								</td>
								<td>
									创建时间:
								</td>
								<td>
									&nbsp;
								</td>
							</tr>
						</table>
					</td>
				</tr>


			 </page:item>
		   </c:forEach>
		  </page:pager>
		  <tr><td colspan="4" align="center"><page:bt /></td></tr>

		</table>
		<br>
		${fenye.viewHref}
		<Div style="font-size: 14px">
			<form action="/mb100/gongdan/selectGongdanZhonghe.action" method="post">
				工单名称 :
				<input type="text" name="cwiName">
				发送对象:
				<input type="text" name="sendTo">
				<br>
				工单时间:
				<input type="text" name="createDate"
					onClick=
	getDateString(this, oCalendarChs);
>
				类型 :
				<select name="cwiType">
					<option value="">
						请选择
						<option value="内部">
							内部工单
							<option value="外部">
								外部工单
				</select>
				<input type="submit" value="查 询">
			</form>
		</Div>
		<br>
	</body>
</html>
