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
    
    <title>My JSP 'guina_zhuti.jsp' starting page</title>
    
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
.STYLE2 {	font-family: "华文楷体";
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
.STYLE3 {
	font-size: 36px;
	font-family: "华文行楷";
	color: #6600FF;
}
a:link {
	color: #CC00FF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFF00;
}
a:hover {
	text-decoration: underline;
	color: #FF6633;
}
a:active {
	text-decoration: none;
	color: #FF00FF;
}
.aaa{border:1px solid #66CCCC; height:23px; width:150px;}
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
  
  <body>
    <table width="800" height="25" border="0" cellpadding="0" cellspacing="0"
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td>&nbsp;&nbsp; <span class="STYLE2">&nbsp; 主题的相关方案</span></td>
      </tr>
    </table>
    ${fenye.viewButton} 
  <form name="form2" method="post"
   action="/mb100/plan/updateVerdict.action?slctId=${list.slctId }">
 
    <table border="0" cellpadding="0" cellspacing="1" bordercolor="#FF6699"
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)">
      <tr>
        <td height="30" colspan="11" align="center">
        <span class="STYLE1 STYLE3">
        相关主题的所有方案      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 
          <a href="/mb100/plan/induceThemeList.action"><strong>主题列表</strong></a></td>     
      </tr>
      <tr>
        <td width="102"   height="30" align="center"><strong>编号</strong></td>
        <td width="112"  align="center"><strong>方案名称</strong></td>
        <td width="143"   align="center"><strong>方案描述</strong></td>
        <td width="146" align="center" ><strong>方案创建时间</strong></td>
        <td width="143"  align="center" ><strong>方案附件</strong></td>
        <td width="154"   align="center" ><strong>处理状态</strong></td>
        <td width="154"   align="center"><strong>结论</strong></td>
      </tr>
      <page:pager dz="5">
		 	<c:forEach  items="${scss}" var="all" varStatus="status">
		 	 	<page:item nr="${status.count}">
     <tr>
        <td width="102"   height="30" align="center" ><strong>
        <c:if test="${all.dealStatus=='待评估'}">
                   <label><input type="checkbox" name="aaa" value="${all.schemaId }"></label>
        </c:if>  
          ${all.schemaId }
</strong></td>
        <td width="112" align="center" ><input type="hidden" name="schemaId1" value="${all.ptnrId }"><strong>
        <a href="/mb100/plan/detailXuanYan.action?schemaId=${all.schemaId }">${all.schemaName }</a></strong></td>
        <td width="143" align="center" ><strong>${all.schemaDesc }</strong></td>
        <td width="146" align="center" ><strong>${fn:substring(all.createDate,0,10)}</strong></td>
        <td width="143" align="center"><strong>${all.attachment }</strong></td>
        <td width="154" align="center" ><strong>${all.dealStatus }</strong></td>
        <td width="154" align="center" ><strong>${all.summing }</strong>
        </td>
    </tr>
 </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="7" align="center"><page:bt /></td></tr>
   
    </table>
    <table width="552" height="42" border="0" align="center"
     cellpadding="0" cellspacing="1" bordercolor="#FF6699">
      <tr>
        <td width="69" height="36" align="right" bgcolor="#FFCCCC"><strong>主题:</strong></td>
        <td width="109" align="center" bgcolor="#FFCCCC"><strong>${list.subject}</strong></td>
        <td width="91" align="right" bgcolor="#FFCCCC"><strong>结论:</strong></td>
        <td width="167" align="center" bgcolor="#FFCCCC"><label>
          <select name="bbb">
            <option value="--请选择--">--请选择--</option>
            <option value="接受">接受</option>
            <option value="不接受">不接受</option>
            <option value="待转化">待转化</option>
              <option value="待实施">待实施</option>
          </select>
        </label></td>
        <td width="133" align="center" bgcolor="#FFCCCC"><label>
          <input type="submit" name="Submit" value="提   交">
        </label></td>
      </tr>
    </table>
    <label></label>
  </form>
  
  
  
  </body>
</html>
