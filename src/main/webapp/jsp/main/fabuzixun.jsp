<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zixunweihu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body 
{
	background-image: url(<%=path%>/images/bg1.gif);
}
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
	color: #FF9999;
}
-->
  </style></head>
  
  <body>
    <form name="form1" method="post" action="/mb100/zixun/insert.action">
      <table width="785"   border="0" align="left" cellpadding="0" cellspacing="1" bgcolor="#99CC66">
        <tr>
          <td  colspan="2" align="center" bgcolor="#FFFFFF"><span class="STYLE1">发布资讯</span></td>
        </tr>
        <tr>
          <td    align="right" bgcolor="#FFFFFF"><strong>资讯类别：</strong></td>
          <td   bgcolor="#FFFFFF"><label>
          <select name="coId" id="cateId" onblur="check()"> 
            <option selected  value="-1">---请选择资讯类别---</option>
             <c:forEach   items="${co}"  var="co">
               <option value="${co.cateId}">--${co.cdcName}--</option> 
            </c:forEach>
          </select>
           <script type="text/javascript">
            function check()
			{
			   var upass=document.getElementById("cateId").value;
			   if(upass==-1){
			    alert("请选择资源类别！！！");
		            return false;
		       }else{	            
		             return true;
		        }
			}
             
          </script>
          </label></td>
        </tr>
        <tr>
          <td   align="right" bgcolor="#FFFFFF"><strong>发布人：</strong></td>
          <td bgcolor="#FFFFFF"><label>
            <input type="text" name="createorId" value="${sadmin.adminName }" readonly="readonly">
          </label></td>
        </tr>
        <tr>
          <td   align="right" bgcolor="#FFFFFF"><strong>资讯标题：</strong></td>
          <td bgcolor="#FFFFFF"><label>
            <input type="text" name="title">
          </label></td>
        </tr>
        <tr>
          <td  align="right" bgcolor="#FFFFFF"><strong>关键字：</strong></td>
          <td bgcolor="#FFFFFF"><label>
            <input type="text" name="keyword">
          </label></td>
        </tr>
        <tr>
          <td  align="right" bgcolor="#FFFFFF"><strong>资讯正文：</strong></td>
          <td bgcolor="#FFFFFF"><label>
            <textarea name="cdfContent" cols="35" rows="5"></textarea>
          </label></td>
        </tr>
        <tr>
        	<td><input type="hidden" name="state" value="N"></td>
        </tr>
        <tr>
          <td   colspan="2" align="center" bgcolor="#FFFFFF"><label>
            <input type="submit" name="Submit" value="提交资讯维护">
         &nbsp;&nbsp;&nbsp; 
         <input type="reset" name="Submit2" value="取消资讯维护">
          </label></td>
        </tr>
      </table>
  </form>
  </body>
</html>
