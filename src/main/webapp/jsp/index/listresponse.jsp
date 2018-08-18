<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listresponse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
.STYLE2 {font-size: 14px}
.STYLE3 {
	font-size: 18px;
	color: #0099FF;
}
.STYLE4 {
	font-size: 18px;
	color: #3399CC;
}
.STYLE5 {color: #3399FF}
.STYLE6 {
	color: #3399CC;
	font-family: "华文楷体";
	font-size: 16px;
}
.STYLE8 {
	color: #3399FF;
	font-family: "华文楷体";
	font-size: 16px;
}
</style>

<script type="text/javascript" src="js/dt.js"></script></head>

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
  <form name="form1" method="post" action="/mb100/selectName.action">
<p align="center" class="STYLE4">&nbsp;</p>
<table width="792" border="0" align="center" cellspacing="1">
  <tr>
    <td height="28" colspan="5" align="center"><span class="STYLE4">根据联系人和电话查询</span></td>
    </tr>
  <tr>
    <td width="155" height="42"><span class="STYLE8">请输入关键字：</span></td>
    <td width="182"><label>
      <input name="linkman" type="text" id="linkman">
    </label></td>
    <td width="88" class="STYLE8">时间：</td>
    <td width="214"><label>
      <input name="submitDate" type="text" id="submitDate"  onClick="getDateString(this,oCalendarChs)">
    </label></td>
    <td width="258"><label>
      <input type="submit" name="Submit" value="查   询">
    </label></td>
  </tr>
</table>
<table   border="1" align="center" cellpadding="0" cellspacing="1" bordercolor="#B1C7E2"  style="background-image: url(images/bg.JPG);">
        <tr>
          <td colspan="7" align="center"><span class="STYLE3">显示所有响应信息 </span></tr>
         
        <tr>
          <td   align="center"><span class="STYLE2">编号</span></td>
          <td  align="center"><span class="STYLE2">参赛单位</span></td>
          <td   align="center"><span class="STYLE2">联系人</span></td>
          <td   align="center"><span class="STYLE2">电话</span></td>
          <td   align="center"><span class="STYLE2">中标结果</span></td>
          <td  align="center"><span class="STYLE2">方案附件</span></td>
          <td  align="center"><span class="STYLE2">操作标志</span></td>
          <td   align="center"><span class="STYLE2">操作</span></td>
        </tr>
        <c:forEach items="${cointps}" var="ss" varStatus="kk" >
          <tr>
            <td ><span class="STYLE2">&nbsp;<a href="javascript:aaa(${kk.index})">${ss.respId}</a></span></td>
            <td class="STYLE2" >&nbsp;${ss.runUnit}</td>
            <td ><span class="STYLE2">&nbsp;${ss.linkman}</span></td>
            <td ><span class="STYLE5 STYLE2">&nbsp;</span><span class="STYLE2">${ss.mobile}</span></td>
            <td ><span class="STYLE2">&nbsp;${ss.opFlag=='1' ? '选中' : '不选中'}</span></td>
            <td class="STYLE2" >&nbsp;<a href="/mb100/plan/download2.action">${ss.attachment}</a></td>
            <td align="center"><span class="STYLE2">&nbsp;${ss.opFlag}</span></td>
            <td align="center">
            <span class="STYLE5 STYLE2">
              <c:if test="${ ss.opFlag=='1'}"> 
			       <a href="/mb100/selectID.action?rcId=${ss.rcId}">修改</a> 
			       <a href="javascript:if(confirm('你确定要删除吗?'))location.href='/mb100/delete.action?respId=${ss.respId}'">删除</a>    
             </c:if>
               <c:if test="${ ss.opFlag=='0'}">
               不能修改/删除
               </c:if>  
            </span></td>
          </tr>
          <tr style="display:none"  id="tr${kk.index}">
            <td height="81" colspan="8">
            <table width="551" border="1" align="center" cellspacing="1"  
            bordercolor="white"  style="background-image: url(images/bg.JPG); font-size: 11px;">
              <tr>
                <td width="158">&nbsp;联系人Email</td>
                <td width="130">&nbsp;${ss.email}</td>
                <td width="126">&nbsp;报价</td>
                <td width="167">&nbsp;${ss.price}</td>
              </tr>
              <tr>
                <td>&nbsp;响应状态</td>
                <td>&nbsp;${ss.responseStatus}</td>
                <td>&nbsp;招募状态</td>
                <td>&nbsp;${ss.rcStatus}</td>
              </tr>
              <tr>
                <td>&nbsp;方案描述</td>
                <td>&nbsp;${ss.schemaDesc}</td>
                <td>&nbsp;原因</td>
                <td>&nbsp;${ss.reason}</td>
              </tr>
              <tr>
                <td>&nbsp;提交时间</td>
                <td>&nbsp;${ss.submitDate}</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </c:forEach>
    </table>
    <p align="center">${fenye.viewButton}</p>
  </form>
  <p class="STYLE2">&nbsp;</p>
  </body>
</html>
