<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Cengji.jsp' starting page</title>
    
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
.STYLE1 {
	color: #FF0000;
	font-size: 16px;
}
.STYLE2 {font-size: 16px}
.STYLE3 {color: #0000FF}
.STYLE4{font-size: 12px; color: #FF00FF; }
.STYLE5{font-size: 12px; color:#000; }
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
        <td><img src="<%=path %>/images/bg_point1.gif" width="4" height="7"> <span class="STYLE2 STYLE1">修改层级</span></td>
      </tr>
    </table>
	<hr align="center" width="100%" style="border: 1px  dashed   #CCCCFF;">
	 ${fenye.viewButton} 
	 
    <table width="100%" border="0" cellspacing="1">
      <tr class="STYLE4">
        <td align="center" bgcolor="#CCCCFF">企业名称</td>
        <td align="center" bgcolor="#CCCCFF">企业类型</td>
        <td align="center" bgcolor="#CCCCFF">资源类别</td>
        <td align="center" bgcolor="#CCCCFF">经营模式</td>
        <td align="center" bgcolor="#CCCCFF">成立时间</td>
        <td align="center" bgcolor="#CCCCFF">公司人数</td>
        <td align="center" bgcolor="#CCCCFF">品牌名称</td>
        <td align="center" bgcolor="#CCCCFF">管理体系认证</td>
        <td align="center" bgcolor="#CCCCFF">主要市场</td>
        <td align="center" bgcolor="#CCCCFF">公司地址</td>
        <td align="center" bgcolor="#CCCCFF">法人</td>
        <td align="center" bgcolor="#CCCCFF">负责人姓名</td>
        <td align="center" bgcolor="#CCCCFF">负责人电话</td>
      </tr>
       <c:forEach items="${infs}" var="infs" varStatus="kk">
       <form name="form1" method="post" 
	  action="/mb100/hezuo/updateCengji.action">
      <tr class="STYLE5">
        <td align="center">
        <a href="javascript:aaa(${kk.index})" class="STYLE12"><input type="hidden" name="spId" value="${infs.spId}"/>${infs.deptName }</a>
     </td>
        <td align="center">${infs.deptType }</td>
        <td align="center">${infs.resType }</td>
        <td align="center">${infs.mgtMode }</td>
        <td align="center">${fn:substring(infs.crtDate,0,10)}</td>
        <td align="center">${infs.peopNum }</td>
        <td align="center">${infs.brandName }</td>
        <td align="center">${infs.mngType }</td>
        <td align="center">${infs.manMkt }</td>
        <td align="center">${infs.deptAddr }</td>
        <td align="center">${infs.artPerson }</td>
        <td align="center">${infs.principalName }</td>
        <td align="center">${infs.principalTel }</td>
      </tr>
      <tr style="display:none"  id="tr${kk.index}">
        <td colspan="13">
        <table width="95%" border="0" align="center" cellspacing="1">
          <tr class="STYLE4">
            <td align="center" bgcolor="#CCCCFF">负责人手机</td>
            <td align="center" bgcolor="#CCCCFF">营业执照号</td>
            <td align="center" bgcolor="#CCCCFF">注册地址</td>
            <td align="center" bgcolor="#CCCCFF">税务登记号</td>
            <td align="center" bgcolor="#CCCCFF">企业简介</td>
            <td align="center" bgcolor="#CCCCFF">合作层级</td>
            <td align="center" bgcolor="#CCCCFF">信用等级</td>
            <td align="center" bgcolor="#CCCCFF">申请状态</td>
            <td align="center" bgcolor="#CCCCFF">注册时间</td>
            <td align="center" bgcolor="#CCCCFF">操作</td>
           
       </tr>         
       <tr class="STYLE5"  bgcolor="#CCCCFF">
            <td align="center" >${infs.principalMtel }</td>
            <td align="center" >${infs.businessNo }</td>
            <td align="center" >${infs.regAddr }</td>
            <td align="center" >${infs.taxRegNo }</td>
            <td align="center" >${infs.deptBrief }</td>
            <td>
             <select name="coLevel" size="1">
              <option value="核心层、优秀级" ${infs.coLevel=="核心层、优秀级"?"selected":"" }>

核心层、优秀级</option>
              <option value="核心层、良好级" ${infs.coLevel=="核心层、良好级"?"selected":"" }>

核心层、良好级</option>
              <option value="普通层" ${infs.coLevel=="普通层"?"selected":"" }>普通层

</option>
            </select>
              
            </td>
            <td align="center" >${infs.creditLevel }</td>
            <td align="center" >${infs.status }</td>
            <td align="center" >${infs.regDate }</td>
            <td align="center"> <input type="submit" value="修改" >
            </td>
          </tr>
        </table></td>
      </tr>
      </form>
       </c:forEach>
    </table>
    <p>&nbsp;</p>
  </body>
</html>
