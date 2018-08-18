<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CheckHeZuofriend.jsp' starting page</title>
    
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
.STYLE2 {
	font-size: 16px;
	color: #FF0000;
}
.STYLE9 {font-size: 12px}
.STYLE11 {color: #0000FF; font-size: 16px; }
.STYLE12 {font-size: 14px}
.STYLE18 {font-size: 14px; color: #FF00FF; }
-->
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
    <table width="100%" border="0" align="center" cellspacing="1">
      <tr>
        <td><img src="<%=path %>/images/bg_point1.gif" width="4" height="7"> <span class="STYLE2">合作伙伴查询</span></td>
      </tr>
    </table>
	<hr align="center" width="100%" style="border: 1px  dashed   #CCCCFF;">
	 ${fenye.viewButton} 
    <table width="100%" height="72" border="0" cellspacing="1">
      <tr>
      <form name="form1" method="post" action="/mb100/hezuo/selectByWords.action">
        <td colspan="8" bgcolor="#CCFFFF">
          <span class="STYLE11">账号</span> 
          <input name="username" type="text" size="15">
          <span class="STYLE11">企业名称</span>
          <input name="deptName" type="text" size="15">
          <span class="STYLE11">办公地址</span>
          <input name="deptAddr" type="text" size="15">
          <span class="STYLE11"><br>
            邮箱</span>
          <input name="email" type="text" size="15">
           <span class="STYLE11">联系电话
          <input name="principalTel" type="text" size="15">
          </span>
          
          <span class="STYLE11">联系手机</span><span class="STYLE11">
          <input name="principalMtel" type="text" size="15">
          </span>
          <input type="submit" name="Submit" value="模糊查询">
       </td>
       </form>
      </tr>
      <tr>
        <td bgcolor="#CCCCFF"><span class="STYLE12">企业名称 </span></td>
        <td bgcolor="#CCCCFF" class="STYLE12">用户名</td>
        <td bgcolor="#CCCCFF" class="STYLE12">用户密码</td>
        <td bgcolor="#CCCCFF"><span class="STYLE12">提案数</span></td>
        <td bgcolor="#CCCCFF"><span class="STYLE12">提案实施数</span></td>
        <td bgcolor="#CCCCFF"><span class="STYLE12">总积分</span></td>
        <td bgcolor="#CCCCFF" class="STYLE12">邮件地址</td>
        <td bgcolor="#CCCCFF" class="STYLE12">操作</td>
      </tr>
      <c:forEach items="${infs}" var="infs" varStatus="kk">
      <c:if test="${infs.status == '待审核' }">
      <tr>
        <td><a href="javascript:aaa(${kk.index})" class="STYLE12">${infs.deptName }</a></td>
        <td class="STYLE12">${infs.username}</td>
        <td class="STYLE12"><span class="STYLE12">${infs.userpwd}</span></td>
        <td><span class="STYLE12">${infs.tian }</span></td>
        <td><span class="STYLE12">${infs.sisi }</span></td>
        <td><span class="STYLE12">${infs.score }</span></td>
        <td class="STYLE12">${infs.email}</td>
        <td class="STYLE12">
        <a href="/mb100/hezuo/updateShenHe.action?spId=${infs.spId }" onclick=" if (confirm('确定要通过吗?')) return true; else return false;">通过审核</a></td>
      </tr>
      <tr style="display:none"  id="tr${kk.index}">
        <td colspan="8"> 
		<table width="74%" border="0" align="center" cellspacing="1" bgcolor="#FFFFFF" >
          <tr>
            <td width="20%" bgcolor="#CCFFFF"><span class="STYLE18">企业名称 ： </span></td>
            <td width="30%" bgcolor="#CCFFFF"><span class="STYLE12">${infs.deptName }</span></td>
            <td width="20%" bgcolor="#CCFFFF"><span class="STYLE18">企业类型：</span></td>
           <td width="30%" bgcolor="#CCFFFF"><span class="STYLE12">${infs.deptType }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">资源类别：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.resType }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">经营模式：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.mgtMode }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">成立时间：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.crtDate }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">公司人数：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.peopNum }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">品牌名称：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.brandName }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">管理体系认证：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.mngType }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">主要市场：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.manMkt }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">公司地址：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.deptAddr }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">法人：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.artPerson }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">负责人姓名：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.principalName }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">负责人电话：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.principalTel }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">负责人手机：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.principalMtel }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">营业执照号：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.businessNo }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">注册地址：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.regAddr }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">税务登记号：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.taxRegNo }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">企业简介：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.deptBrief }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">合作层级：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.coLevel }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">信用等级：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.creditLevel }</span></td>
          </tr>
          <tr>
            <td bgcolor="#CCFFFF"><span class="STYLE18">申请状态：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.status }</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE18">注册时间：</span></td>
            <td bgcolor="#CCFFFF"><span class="STYLE12">${infs.regDate }</span></td>
          </tr>
        </table></td>
        </tr>
        </c:if>
      </c:forEach>
  </table>
  </body>
</html>
