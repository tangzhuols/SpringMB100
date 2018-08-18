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
	font-family: "华文行楷";
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
      <p class="STYLE1 STYLE3 STYLE4">具体积分信息</p>
      <a href="<%=path %>/main/index.action" class="aaa"><strong>返回</strong></a></td>
     </tr>
    <tr>
      <td align="center"><strong>企业名称</strong></td>
      <td align="center" ><strong>企业类别</strong></td>
      <td align="center" ><strong>资源类别</strong></td>
      <td align="center" ><strong>经营模式</strong></td>
      <td align="center" ><strong>成立时间</strong></td>
      <td align="center" ><strong>公司人数</strong></td>
      <td align="center" ><strong>品牌名称</strong></td>
      <td align="center" ><strong>管理体系</strong></td>
      <td align="center" ><strong>主要市场</strong></td>
      <td align="center" ><strong>公司地址</strong></td>
      <td align="center" ><strong>法人</strong></td>
      <td align="center" ><strong>负责人姓名</strong></td>
      <td align="center" ><strong>负责人电话</strong></td>
      <td align="center" ><strong>手机</strong></td>
      <td align="center" ><strong>营业执照</strong></td>
      <td align="center" ><strong>注册地址</strong></td>
      <td align="center" ><strong>税务登记号</strong></td>
      <td align="center" ><strong>企业介绍</strong></td>
      <td align="center" ><strong>合作层次</strong></td>
      <td align="center" ><strong>信用等级</strong></td>
      <td align="center" ><strong>申请状态</strong></td>
      <td align="center" ><strong>操作标志</strong></td>
      <td align="center" ><strong>注册时间</strong></td>
      <td align="center" ><strong>积分</strong></td>
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



 
 
 <%--所有招募信息 --%>
 <c:if test="${ss!=null}">
 	 <tr>
      <td height="35" colspan="15" align="center" valign="middle">
      <p class="STYLE1 STYLE3 STYLE4">详细招募信息</p>
      <a href="<%=path %>/main/index.action" class="aaa"><strong>返回</strong></a></td>
     </tr>
    <tr>
      <td  height="29" align="center"><strong>招募主题</strong></td>
      <td  align="center"  ><strong>资源类别</strong></td>
      <td  align="center"  ><strong>发起时间</strong></td>
      <td  align="center"  ><strong>招募时间</strong></td>
      <td  align="center"  ><strong>费用预算</strong></td>
      <td  align="center"  ><strong>招募数量</strong></td>
      <td  align="center"  ><strong>招募介绍</strong></td>
      <td  align="center" ><strong>面向行业</strong></td>
      <td align="center" ><strong>招募标准</strong></td>
      <td  align="center" ><strong>注意对象</strong></td>
      <td  align="center" ><strong>招募类型</strong></td>
      <td  align="center" ><strong>计划参赛单位数</strong></td>
      <td  align="center"><strong>发起人</strong></td>
      <td  align="center" ><strong>结束应标</strong></td>
      <td  align="center" ><strong>结束时间</strong></td>
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
 
 <%--所有业务动态信息 --%>
 <c:if test="${Allxinxi != null}">
 	 <tr>
      <td height="35" colspan="9" align="center" valign="middle">
      <p class="STYLE1 STYLE3 STYLE4">详细业务信息</p>
      <a href="<%=path %>/main/index.action" class="aaa"><strong>返回</strong></a></td>
     </tr>
    <tr>
      <td  height="29" align="center" ><strong>资讯分类名</strong></td>
      <td  align="center"><strong>描述</strong></td>
      <td  align="center"><strong>发布人</strong></td>
      <td  align="center"><strong>资源状态</strong></td>
      <td  align="center"><strong>标题</strong></td>
      <td  align="center"><strong>关键字</strong></td>
      <td  align="center"><strong>正文</strong></td>
      <td  align="center"><strong>创建时间</strong></td>
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
