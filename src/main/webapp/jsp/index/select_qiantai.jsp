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
   <table  border="1px" align="center" cellpadding="0" cellspacing="1" bordercolor="#B1C7E2"
   style="background-image: url(images/bg.JPG)">
   <c:if test="${alljifen != null}">
    <tr>
      <td height="35" colspan="15" align="center" valign="middle">
      <p class="STYLE1 STYLE3 STYLE4">���������Ϣ</p>
      <a href="<%=path %>/main/index.action" class="aaa"><strong>����</strong></a></td>
     </tr>
    <tr>
      <td align="center"><strong>��ҵ����</strong></td>
      <td align="center" ><strong>��ҵ���</strong></td>
      <td align="center" ><strong>��Դ���</strong></td>
      <td align="center" ><strong>��Ӫģʽ</strong></td>
      <td align="center" ><strong>����ʱ��</strong></td>
      <td align="center" ><strong>��˾����</strong></td>
      <td align="center" ><strong>Ʒ������</strong></td>
      <td align="center" ><strong>������ϵ</strong></td>
      <td align="center" ><strong>��Ҫ�г�</strong></td>
      <td align="center" ><strong>��˾��ַ</strong></td>
      <td align="center" ><strong>����</strong></td>
      <td align="center" ><strong>����������</strong></td>
      <td align="center" ><strong>�����˵绰</strong></td>
      <td align="center" ><strong>�ֻ�</strong></td>
      <td align="center" ><strong>Ӫҵִ��</strong></td>
      <td align="center" ><strong>ע���ַ</strong></td>
      <td align="center" ><strong>˰��ǼǺ�</strong></td>
      <td align="center" ><strong>��ҵ����</strong></td>
      <td align="center" ><strong>�������</strong></td>
      <td align="center" ><strong>���õȼ�</strong></td>
      <td align="center" ><strong>����״̬</strong></td>
      <td align="center" ><strong>������־</strong></td>
      <td align="center" ><strong>ע��ʱ��</strong></td>
      <td align="center" ><strong>����</strong></td>
    </tr>
  
      <tr>
	     <td align="center">${alljifen.cpf.deptName }</td>
	     <td align="center">${alljifen.cpf.deptType }</td>
	     <td align="center">${alljifen.cpf.resType }</td>
	     <td align="center">${alljifen.cpf.mgtMode }</td>
	     <td align="center">${fn:substring(alljifen.cpf.crtDate,0,10)}</td>
	     <td align="center">${alljifen.cpf.peopNum }</td>
	     <td align="center">${alljifen.cpf.brandName }</td>
	     <td align="center">${alljifen.cpf.mngType }</td>
	     <td align="center">${alljifen.cpf.manMkt }</td>
	     <td align="center">${alljifen.cpf.deptAddr }</td>
	     <td align="center">${alljifen.cpf.artPerson }</td>
	     <td align="center">${alljifen.cpf.principalName }</td>
	     <td align="center">${alljifen.cpf.principalTel }</td>
	     <td align="center">${alljifen.cpf.principalMtel }</td>
	     <td align="center">${alljifen.cpf.businessNo }</td>
	     <td align="center">${alljifen.cpf.regAddr }</td>
	     <td align="center">${alljifen.cpf.taxRegNo }</td>
	     <td align="center">${alljifen.cpf.deptBrief }</td>
	     <td align="center">${alljifen.cpf.coLevel }</td>
	     <td align="center">${alljifen.cpf.creditLevel }</td>
	     <td align="center">${alljifen.cpf.status }</td>
	     <td align="center">${alljifen.cpf.opStatus }</td>
	     <td align="center">${fn:substring(alljifen.cpf.regDate,0,10)}</td>
	     <td align="center">${alljifen.sort }</td>
     </tr>
</c:if>



 
 
 <%--������ļ��Ϣ --%>
 <c:if test="${ss!=null}">
 	 <tr>
      <td height="35" colspan="15" align="center" valign="middle">
      <p class="STYLE1 STYLE3 STYLE4">��ϸ��ļ��Ϣ</p>
      <a href="<%=path %>/main/index.action" class="aaa"><strong>����</strong></a></td>
     </tr>
    <tr>
      <td  height="29" align="center"><strong>��ļ����</strong></td>
      <td  align="center"  ><strong>��Դ���</strong></td>
      <td  align="center"  ><strong>����ʱ��</strong></td>
      <td  align="center"  ><strong>��ļʱ��</strong></td>
      <td  align="center"  ><strong>����Ԥ��</strong></td>
      <td  align="center"  ><strong>��ļ����</strong></td>
      <td  align="center"  ><strong>��ļ����</strong></td>
      <td  align="center" ><strong>������ҵ</strong></td>
      <td align="center" ><strong>��ļ��׼</strong></td>
      <td  align="center" ><strong>ע�����</strong></td>
      <td  align="center" ><strong>��ļ����</strong></td>
      <td  align="center" ><strong>�ƻ�������λ��</strong></td>
      <td  align="center"><strong>������</strong></td>
      <td  align="center" ><strong>����Ӧ��</strong></td>
      <td  align="center" ><strong>����ʱ��</strong></td>
    </tr>
     <tr height="10px" >
     	<td align="center">${ss.rcSubject }</td>
     	<td align="center">${ss.resSort }</td>
     	<td align="center">${fn:substring(ss.startTime,0,10)}</td>
     	<td align="center">${fn:substring(ss.rcTime,0,10)}</td>
     	<td align="center">${ss.mnTudget }</td>
     	<td align="center">${ss.rcNum }</td>
     	<td align="center">${ss.rcIntro }</td>
     	<td align="center">${ss.faceWay }</td>
     	<td align="center">${ss.rcCriterion }</td>
     	<td align="center">${ss.advertObject }</td>
     	<td align="center">${ss.rcType }</td>
     	<td align="center">${ss.units }</td>
     	<td align="center">${ss.creatorId }</td>
     	<td align="center">${ss.endFlag }</td>
     	<td align="center">${fn:substring(ss.endDate,0,10)}</td>
  
    </tr>
 </c:if>
 
 <%--����ҵ��̬��Ϣ --%>
 <c:if test="${Allxinxi != null}">
 	 <tr>
      <td height="35" colspan="9" align="center" valign="middle">
      <p class="STYLE1 STYLE3 STYLE4">��ϸҵ����Ϣ</p>
      <a href="<%=path %>/main/index.action" class="aaa"><strong>����</strong></a></td>
     </tr>
    <tr>
      <td  height="29" align="center" ><strong>��Ѷ������</strong></td>
      <td  align="center"><strong>����</strong></td>
      <td  align="center"><strong>������</strong></td>
      <td  align="center"><strong>��Դ״̬</strong></td>
      <td  align="center"><strong>����</strong></td>
      <td  align="center"><strong>�ؼ���</strong></td>
      <td  align="center"><strong>����</strong></td>
      <td  align="center"><strong>����ʱ��</strong></td>
    </tr>
 		
		<tr>
			<td align="center">${Allxinxi.category.cdcName }</td>
			<td align="center">${Allxinxi.category.intro }</td>
			<td align="center">${Allxinxi.createorId }</td>
			<td align="center">${Allxinxi.state }</td>
			<td align="center">${Allxinxi.title }</td>
			<td align="center">${Allxinxi.keyword }</td>
			<td align="center">${Allxinxi.cdfContent }</td>
			<td align="center">${fn:substring(Allxinxi.createDate,0,10)}</td>
		</tr>
 </c:if>
  </table>
</body>
</html>
