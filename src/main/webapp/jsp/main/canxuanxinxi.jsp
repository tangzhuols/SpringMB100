<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'canxuanxinxi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
  </head>
  
<body>
<br>
    <table border="1" align="center"  width="785" cellpadding="0" cellspacing="1" bordercolor="#B1C7E2"  style="background-image: url(images/bg.JPG);">
      <tr>
        <td colspan="9" align="center"><span class="STYLE3 STYLE1">显示所参选有信息 </span>        
      </tr>
      <tr>
        <td  align="center"><span >编号</span></td>
        <td  align="center"><span >参赛单位</span></td>
        <td  align="center"><span >联系人</span></td>
        <td  align="center"><span >电话</span></td>
        <td align="center"><span class="STYLE5">&nbsp;招募品牌</span></td>
        <td   align="center"><span >方案附件</span></td>
        <td   align="center">中标结果</td>
        <td   align="center"><span >操作标志</span></td>
        <td  align="center"><span >操作</span></td>
      </tr>
       <page:pager dz="2">
		 	 <c:forEach items="${cccc}" var="ss" varStatus="kk">
		 	 	<page:item nr="${kk.count}">
      
        <tr>
          <td ><span >&nbsp;<a href="javascript:aaa(${kk.index})">${ss.respId}</a></span></td>
          <td ><span >&nbsp;${ss.runUnit}</span></td>
          <td ><span >&nbsp;${ss.linkman}</span></td>
          <td ><span >&nbsp;${ss.mobile}</span></td>
          <td ><span class="STYLE5">&nbsp;${ss.rcStatus}</span></td>
          <td ><span >&nbsp;${ss.attachment}</span></td>

          <td >&nbsp;${ss.opFlag=="1"?"中标":"不中标"}</td>

          <td align="center"><span class="STYLE3">&nbsp;${ss.opFlag}</span></td>
          <td align="center"><span class="STYLE5 STYLE2">
           <c:if test="${ss.rcStatus!='处理结束'}">
               <a href="/mb100/updateZb.action?respId=${ss.respId}&opFlag=1">中标</a> ||
               <a href="/mb100/updateZb.action?respId=${ss.respId}&opFlag=0">不中标</a>
             </c:if>
                  <c:if test="${ss.rcStatus=='处理结束'}">
                   不可操作
             &nbsp;  </c:if>
        </tr>
        <tr style="display:none" id="tt${kk.index}">
          <td></td>
        </tr>
        <tr style="display:none"  id="tr${kk.index}">
          <td colspan="9"><table width="80%" border="1" align="center" cellspacing="1"  bordercolor="white"  style="background-image: url(images/bg.JPG); font-size: 11px;">
            <tr>
              <td width="158" class="STYLE5">&nbsp;联系人Email</td>
              <td width="130" class="STYLE5">&nbsp;${ss.email}</td>
              <td width="126" class="STYLE5">&nbsp;报价</td>
              <td width="167" class="STYLE5">&nbsp;${ss.price}</td>
            </tr>
            <tr>
              <td class="STYLE5">&nbsp;响应状态</td>
              <td class="STYLE5">&nbsp;${ss.responseStatus}</td>
              <td class="STYLE5">&nbsp;&nbsp;方案描述</td>
              <td class="STYLE5">&nbsp;${ss.schemaDesc}</td>
            </tr>
            <tr>
              <td class="STYLE5">&nbsp;原因</td>
              <td class="STYLE5">&nbsp;${ss.reason}</td>
              <td class="STYLE5">&nbsp;提交时间</td>
              <td class="STYLE5">&nbsp;${ss.submitDate}</td>
            </tr>
          </table></td>
        </tr>
       </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="5" align="center"><page:bt /></td></tr>
    </table>
</body>
</html>
