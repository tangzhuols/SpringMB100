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
    <table   border="1" cellpadding="0" cellspacing="1" 
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)" width="785">
      <tr>
        <td>&nbsp;&nbsp; <span class="STYLE2">&nbsp; 归纳主题</span></td>
      </tr>
    </table>
    ${fenye.viewButton} 
  <form name="form2" method="post" action="/mb100/plan/insetConclude.action">
    <table border="1" cellpadding="0" cellspacing="1"
	bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG)" width="785">
      <tr>
        <td   colspan="12" align="center"><span class="STYLE1 STYLE3">
        所有待评估的方案      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 
          <a href="/mb100/plan/induceThemeList.action"><strong>主题列表</strong></a></td>     
      </tr>
      <tr>
        <td  align="center"><strong>编号</strong></td>
        <td  align="center"><strong>主题</strong></td>
        <td  align="center"><strong>方案名称</strong></td>
        <td   align="center"><strong>方案描述</strong></td>
        <td align="center"><strong>方案创建时间</strong></td>
        <td  align="center"><strong>方案附件</strong></td>
        <td   align="center"><strong>处理状态</strong></td>
      </tr>
      <page:pager dz="5">
		 	 <c:forEach items="${scss}" var="all" varStatus="status">
		 	 	<page:item nr="${status.count}">
	         <tr>
		        <td     align="center"><strong>
        <c:if test="${all.coSlctList.subject ==null}">
                   <label><input type="checkbox" name="aaa" value="${all.schemaId }"></label>
           </c:if>      
		                   ${all.schemaId }
	           </strong></td>
		        <td  align="center"><strong>${all.coSlctList.subject }</strong></td>
		        <td   align="center"><strong>${all.schemaName }</strong></td>
		        <td  align="center"><strong>${all.schemaDesc }</strong></td>
		        <td   align="center"><strong>${fn:substring(all.createDate,0,10)}</strong></td>
		        <td  align="center"><strong>${all.attachment }</strong></td>
		        <td   align="center"><strong>${all.dealStatus }</strong></td>
	      </tr>
 </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="7" align="center"><page:bt /></td></tr>

    </table>
    <label></label>
  

    <table width="785"  border="1" align="center" 
          cellpadding="0" cellspacing="1" bordercolor="#FF99CC">
      <tr>
        <td   colspan="7" align="center" bgcolor="#FFCCFF" class="STYLE3">归纳主题</td>
      </tr>
      <tr>
        <td  align="right" bgcolor="#FFCCFF"><strong>主题名称</strong></td>
        <td   align="center" bgcolor="#FFCCFF"> 
          <input name="aaaa" type="text" class="aaa" id="subject">
        </td>
        <td   align="right" bgcolor="#FFCCFF"><strong>归属年</strong></td>
        <td   align="center" bgcolor="#FFCCFF"> 
          <select name="belongYear" class="aaa">
           <input name="belongYear" value="">
        </select >
       
        </td>
        <td    align="right" bgcolor="#FFCCFF"><strong>归属月</strong></td>
        <td   align="center" bgcolor="#FFCCFF"><label>
          <select name="belongMonth" class="aaa">
          
<script>
   var mm=new Date().getMonth()+1;
	  for(var i=1;i<=12;i++)
	  {
		  if(mm==i)
		  {  
		         document.write(" <option id="+i+" "+'selected'+">"+i+"</option> ") ;
		  }
		  else
		  {
		      document.write(" <option id="+i+">"+i+"</option> ") ;
		  }
	  }
</script>

        </select>
        <input type="hidden" name="createUserId" value="${sadmin.adminName }">
        </label></td>
        <td   align="center" bgcolor="#FFCCFF"> 
          <input type="submit" name="Submit" value="提   交">
        </td>
      </tr>
    </table>
  </form>
  
  
  
  </body>
</html>
