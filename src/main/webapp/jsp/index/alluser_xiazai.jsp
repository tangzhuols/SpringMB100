<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'alluser_jifen.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style >
.STYLE3 
{
	font-family: "�����п�";
	font-size: 38px;
}
.STYLE1 
{
	color: #9900FF;
	font-size: 24px;
	font-weight: bold;
}
.aaa{font-size:18pxz;}
a:link {
	color: #FF0;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #0FF;
}
a:hover {
	text-decoration: underline;
	color: #F0F;
}
a:active {
	text-decoration: none;
	color: #60F;
}
.STYLE4 {font-size: 36px}
</style>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
  </head>
  
 <body>
   <table width="429" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#B1C7E2"
   style="background-image: url(images/bg.JPG)">
   



 
 
  <%--������Ϣ --%>
 <c:if test="${info !=null}">
 	 <tr>
      <td height="35" colspan="2" align="center" valign="middle">
      <p class="STYLE1 STYLE3 STYLE4">����������Ϣ��Ϣ</p>
      <a href="<%=path %>/main/index.action" class="aaa"><strong>����</strong></a></td>
     </tr>
    <tr>
      <td width="324" height="29" align="center" colspan="2"><strong>�����б�</strong></td>
    </tr>
    <c:forEach items="${info}" var="ss">
    <tr><td colspan="2"  align="center">
	<a href="/mb100/main/xzT.action?number=${ss.key }">${fn:substring(ss.value,78,-1) }</a>
	</td></tr>
	</c:forEach>
 
 </c:if>
 
  </table>
</body>
</html>
