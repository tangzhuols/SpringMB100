<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    
    <title>My JSP 'listzhaomuxinxi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <style type="text/css">
  
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
      <table width="785" border="1" align="center" cellpadding="0" bordercolor="#B1C7E2" cellspacing="1" 
           style="background-image: url(images/bg.JPG);" >
        <tr>
        <td colspan="18" align="center"><span class="STYLE2">显示所有招募信息        </span></tr>
        <tr>
          <td  align="center"><span class="STYLE4">编号</span></td>
          <td   align="center"><span class="STYLE4">招募主题</span></td>
          <td   align="center"><span class="STYLE4">资源类别</span></td>
          <td   align="center"><span class="STYLE4">发起时间</span></td>
          <td  align="center"><span class="STYLE4">结束应标</span></td>
          <td  align="center"><span class="STYLE4">操作标志</span></td>
          <td  align="center"><span class="STYLE4">结束时间</span></td>
          <td   align="center"><span class="STYLE4">操作</span></td>
        </tr>
         <page:pager dz="2">
		 	 <c:forEach items="${coins}" var="ss" varStatus="kk">
		 	 	<page:item nr="${kk.count}">

        <tr>
          <td><span class="STYLE4">&nbsp;
          <a href="javascript:aaa(${kk.index})">${ss.invtId}</a></span></td>
          <td><span class="STYLE4">&nbsp;${ss.rcSubject}</span></td>
          <td><span class="STYLE4">&nbsp;${ss.resSort}</span></td>
          <td><span class="STYLE4">&nbsp;${fn:substring(ss.startTime,0,10)}</span></td>
          <td><span class="STYLE4">&nbsp;${ss.endFlag}</span></td>
          <td><span class="STYLE4">&nbsp;${ss.opStatus}</span></td>
          <td><span class="STYLE4">&nbsp;${fn:substring(ss.endDate,0,10)}</span></td>
          <td align="center">  
              <span class="STYLE4">
              <c:if test="${ss.opStatus=='1'}"> 
                <a href="/mb100/main/selectIDHT.action?invtId=${ss.invtId}">修改</a> 
                <a href="/mb100/main/deleteHT.action?invtId=${ss.invtId}">删除</a> 
              </c:if>
              <c:if test="${ss.opStatus=='0'}"> 
                      不能修改
                      不能删除              </c:if>
                    
          </span></td>
        </tr>
        <tr style="display:none"  id="tr${kk.index}">
	    <td height="113" colspan="8" align="center">
	    	 <table   width="80%"  border="1"  align="center" cellspacing="1" bordercolor="#FFFFFF"   bordercolor="white"  style="background-image: url(images/bg.JPG); font-size: 11px;">
			  <tr>
				<td   class="STYLE5 STYLE4">&nbsp;招募时间</td> 
				<td  ><span class="STYLE5 STYLE4">&nbsp;${ss.rcTime}</span></td>
				<td  ><span class="STYLE5 STYLE4">&nbsp;费用预算</span></td> 
				<td  ><span class="STYLE5 STYLE4">&nbsp;${ss.mnTudget}</span></td>
			  </tr>
			    <tr>
				<td><span class="STYLE5 STYLE4">&nbsp;招募数量</span></td> 
				<td><span class="STYLE5 STYLE4">&nbsp;${ss.rcNum}</span></td>
				<td><span class="STYLE5 STYLE4">&nbsp;招募介绍</span></td> 
				<td><span class="STYLE5 STYLE4">&nbsp;${ss.rcIntro}</span></td>
			  </tr>
			    <tr>
				<td><span class="STYLE5 STYLE4">&nbsp;面向行业</span></td> 
				<td><span class="STYLE5 STYLE4">&nbsp;${ss.faceWay}</span></td>
				<td><span class="STYLE5 STYLE4">&nbsp;招募标准</span></td> 
				<td><span class="STYLE5 STYLE4">&nbsp;${ss.rcCriterion}</span></td>
			  </tr>
			    <tr>
				<td><span class="STYLE5 STYLE4">&nbsp;注意对象</span></td> 
				<td><span class="STYLE5 STYLE4">&nbsp;${ss.advertObject}</span></td>
				<td><span class="STYLE5 STYLE4">&nbsp;招募类型</span></td> 
				<td><span class="STYLE5 STYLE4">&nbsp;${ss.rcType}</span></td>
			  </tr>
			    <tr>
				<td height="20"><span class="STYLE5 STYLE4">&nbsp;计划参赛单位数</span></td> 
				<td><span class="STYLE5 STYLE4">&nbsp;${ss.units}</span></td>
				<td><span class="STYLE5 STYLE4">&nbsp;发起人</span></td> 
				<td><span class="STYLE5 STYLE4">&nbsp;${ss.creatorId}</span></td>
			  </tr>
		  </table>
        </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="5" align="center"><page:bt /></td></tr>
    </table>
 
  </body>
</html>
