<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://jpager.com/taglibs/page" prefix="page"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fabuzixun.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script type="text/javascript" src="<%=path %>/js/dt.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body {
	background-image: url(<%=path%>/images/bg1.gif);
}
.STYLE1 {
	color: #FF6699;
	font-weight: bold;
	font-size: 24px;
}
-->
  </style></head>
  
  <body>             
    <table width="785"    border="0" cellpadding=" " cellspacing="1" bgcolor="#99CC99">
    <page:pager dz="5">
      <tr>
        <td  colspan="8" align="center" bgcolor="#FFFFFF"><span class="STYLE1">资讯维护</span></td>
      </tr>
      <tr>
       <td    align="center" bgcolor="#FFFFFF"><strong>资讯类型</strong></td>
        <td   align="center" bgcolor="#FFFFFF"><strong>发布人</strong></td>
       <td   align="center" bgcolor="#FFFFFF"><strong>信息标题</strong></td>
        <td   align="center" bgcolor="#FFFFFF"><strong>关键字</strong></td>
        <td   align="center" bgcolor="#FFFFFF"><strong>正文</strong></td>
        <td   align="center" bgcolor="#FFFFFF"><strong>发布时间</strong></td>
        <td  align="center" bgcolor="#FFFFFF"><strong>状态</strong></td>
        <td  align="center" bgcolor="#FFFFFF"><strong>操作</strong></td>
      </tr>
      
		 <c:forEach items="${infos}" var="infos" varStatus="status">
		 	<page:item nr="${status.count}">
		      <tr>
		        <td height="30" align="center" bgcolor="#FFFFFF">${infos.category.cdcName}&nbsp;</td>
		        <td align="center" bgcolor="#FFFFFF">${infos.createorId}&nbsp;</td>
		        <td align="center" bgcolor="#FFFFFF">${infos.title}&nbsp;</td>
		        <td align="center" bgcolor="#FFFFFF">${infos.keyword}&nbsp;</td>
		        <td align="center" bgcolor="#FFFFFF">${infos.cdfContent}&nbsp;</td>
		        <td align="center" bgcolor="#FFFFFF">${fn:substring(infos.createDate,0,10)}&nbsp;</td>
		        <td align="center" bgcolor="#FFFFFF">${infos.state=="N"?"未发布":"已发布"}&nbsp;</td>
		        <td align="center" bgcolor="#FFFFFF"> 
		        <c:if  test="${infos.state=='N'}">
		        <a href="javascript:if(confirm('你确定修改吗???'))location.href='/mb100/zixun/update.action?infoId=${infos.infoId}'">修改</a> ||
		        <a href="javascript:if(confirm('你确定删除吗???'))location.href='/mb100/zixun/delete.action?infoId=${infos.infoId}'">删除</a>||
		        <a href="javascript:if(confirm('你真的要发布吗???'))location.href='/mb100/zixun/zhuangtai.action?infoId=${infos.infoId}'">发布</a>        </c:if > 
		         <c:if test="${infos.state=='Y'}">
		           <input  type="button" disabled="true"  value="已发布不能操作"  align="center">
		        </c:if>        
		        </td>   
		      </tr>
		      </page:item>
		 </c:forEach>
  		</page:pager>
 		<tr>
			<td colspan="8" align="center">
				<page:bt />
			</td>
		</tr>		
    </table>
    <br>
    
     <form name="form1" method="post" action="/mb100/zixun/selecByWords.action">
    <table width="785" border="0" align="left" cellpadding="0" cellspacing="1" bgcolor="#999999">
		<tr>
		    <td   align="center" bgcolor="#FFFFFF"><span class="STYLE1">模糊查询</span></td>
		</tr>
		
	  	<tr>
		    <td  align="center" bgcolor="#FFFFFF"><strong>发布时间：</strong>
		      <label>
		      <input type="text" name="createDate"  id ="aa" onClick="getDateString(this,oCalendarChs)" >
		      </label> &nbsp;&nbsp;<strong>
		      发布人：</strong>
		      <label>
		      <input type="text" name="createorId"> 
		      </label>    &nbsp;<strong>&nbsp;
		      发布内容：</strong> 
		      <label>
		      <input type="text" name="cdfContent">
		     &nbsp;&nbsp;
		     <input type="submit" name="Submit" value="查询">
		      </label></td>
	  	</tr>
	</table>
  </form> 
  </body>
</html>
