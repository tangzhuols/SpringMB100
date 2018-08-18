<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'responsezhaomu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
    .STYLE2 {
	font-size: 18px;
	color: #0099CC;
}
    </style>
</head>
<script type="text/javascript">
 function aaa(k)
 {
    var tr= document.getElementById("tr"+k);
    if(tr.style.display=="none") 
        tr.style.display="block"
    else
        tr.style.display="none"
 }

</script>
  
  <body>
  <table border="1" align="center" cellpadding="0"
   cellspacing="1"  
    bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG);">
  <tr>
    <td colspan="7" align="center"><span class="STYLE2">显示所有招募信息 </span></tr>
    <tr>
          <td width="77" align="center"><span >编号</span></td>
          <td width="83" align="center"><span >招募主题</span></td>
          <td width="85" align="center"><span >资源类别</span></td>
          <td width="72" align="center"><span >结束应标</span></td>
          <td width="103" align="center"><span >操作标志</span></td>
          <td width="79" align="center"><span >结束时间</span></td>
          <td width="124" align="center"><span >操作</span></td>
    </tr>
    <page:
			dz="2">
		 	 <c:forEach items="${zhaomu}" var="ss" varStatus="kk">
		 	 	<%--<page:item nr="${kk.count}">--%>
    <tr>
      <td  ><span class="STYLE5">&nbsp;<a href="javascript:aaa(${kk.index})">${ss.invtId}</a></span></td>
      <td  ><span class="STYLE5">&nbsp;<a href="javascript:aaa(${kk.index})">${ss.rcSubject}</a></span></td>
      <td  ><span class="STYLE5">&nbsp;${ss.resSort}</span></td>
      <td><span class="STYLE5">&nbsp;${ss.endFlag}</span></td>
      <td  ><span class="STYLE5">&nbsp;${ss.opStatus}</span></td>
      <td  ><span class="STYLE5">&nbsp;${fn:substring(ss.endDate,0,10)}</span></td>
      <td align="center"  ><span class="STYLE5">
        <c:if test="${ss.opStatus=='1'}"><a href="/ZhaoMuadd.action?ptnrId=2&rcId=${ss.invtId}">响应招募</a></c:if>
        <a href="#">
        <c:if test="${ss.opStatus=='0'}">
        </c:if>
     </a></span></td>
    </tr>
  
	   <tr style="display:none"  id="tr${kk.index}">
	    <td colspan="7">
	    	 <table width="495"    border="1" align="center" cellspacing="1"  
	    	   bordercolor="white"  style="background-image: url(images/bg.JPG); font-size: 11px;">
			  <tr>
				<td class="STYLE5">&nbsp;发起时间</td> 
				<td><span class="STYLE5">&nbsp;${ss.startTime}</span></td>
				<td><span class="STYLE5">&nbsp;招募时间</span></td> 
				<td><span class="STYLE5">&nbsp;${ss.rcTime}</span></td>
			  </tr>
			    <tr>
				<td><span class="STYLE5">&nbsp;费用预算</span></td> 
				<td><span class="STYLE5">&nbsp;${ss.mnTudget}</span></td>
				<td><span class="STYLE5">&nbsp;招募数量</span></td> 
				<td><span class="STYLE5">&nbsp;${ss.rcNum}</span></td>
			  </tr>
			    <tr>
				<td><span class="STYLE5">&nbsp;招募介绍</span></td> 
				<td><span class="STYLE5">&nbsp;${ss.rcIntro}</span></td>
				<td><span class="STYLE5">&nbsp;招募标准</span></td> 
				<td><span class="STYLE5">&nbsp;${ss.rcCriterion}</span></td>
			  </tr>
			    <tr>
				<td><span class="STYLE5">&nbsp;招募类型</span></td> 
				<td><span class="STYLE5">&nbsp;${ss.rcType}</span></td>
				<td><span class="STYLE5">&nbsp;计划参赛单位数</span></td> 
				<td><span class="STYLE5">&nbsp;${ss.units}</span></td>
			  </tr>
			    <tr>
				<td><span class="STYLE5">&nbsp;发起人</span></td> 
				<td><span class="STYLE5">&nbsp;${ss.creatorId}</span></td>
				<td><span class="STYLE5">&nbsp;</span></td> 
				<td><span class="STYLE5">&nbsp;</span></td>
			  </tr>
	     </table>		</td>
	   </tr>
  <%--</page:item>--%>
		   </c:forEach>
		  <%--</page:pager>--%>
<%--		   <tr><td colspan="5" align="center"><page:bt /></td></tr>--%>
  </table>
  </body>
</html>
