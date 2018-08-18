<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'XiuGaiMiMa.jsp' starting page</title>
    
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
	font-size: 16px;
	color: #FF0000;
}
.STYLE4 {color: #33CCFF; font-size: 14px; }
-->
    </style>
</head>
<script type="text/javascript">

   function aaa()
   {
     if(checkPassword() && quePassword())
     {
       return true;
     }else{
       return false;
     }
   }
    function checkPassword()
	{
	   var upass=document.getElementById("userPwd").value;
	   var p=/^[\w]{3,12}$/; 
	   if(p.test(upass)){
            return true;
       }else{
             alert("密码有误");
             return false;
        }
	}
	
	function quePassword()
	{
	   var upass=document.getElementById("userPwd").value;
	   var upass1=document.getElementById("userPwd2").value;
	   var p=/^[\w]{3,12}$/; 
	   if(upass==upass1 && p.test(upass1))
	   {
	       return true;
	   }else 
	   {
	       alert("密码不一致");
           return false;
	   }
	}
</script>
  
  <body>
  <form name="form1" method="post" action="/XiuGaiMiMa.action" th:object="${coComUser}" th:action="@{/XiuGaiMiMa}">
    <table width="80%" border="0" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td width="9%" align="center" valign="middle"><img src="/jsp/index/images/bg_point1.gif" width="4" height="7"></td>
          <td width="91%" class="index-12ahuase STYLE1">修改密码  </td>
        </tr>
      </tbody>
    </table>
	 <hr align="center" width="100%" style="border: 1px  dashed   #CCCCFF;"> 
    <table width="62%" height="132" border="0" align="center" cellspacing="1" bgcolor="#0000FF">
      <tr>
        <td width="36%" align="right" bgcolor="#FFFFFF"><span class="STYLE4">用户账号：</span></td>
        <td width="64%" bgcolor="#FFFFFF"><label>${coComUser.userName }
        <input type="hidden" name="userId" value="${coComUser.userId}"></label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"><span class="STYLE4">旧密码：</span></td>
        <td bgcolor="#FFFFFF"><label>
          <input type="password" name="userPwd1" value="" id="userPwd1" onblur="check()">
         <script type="text/javascript">
            function check()
			{
			   var upass=document.getElementById("userPwd1").value;
			   if(upass==${coComUser.userPwd }){
		            return true;
		       }else{
		             alert("旧密码有误！！！");
		             return false;
		        }
			}
             
          </script>
        </label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"><span class="STYLE4">新密码：</span></td>
        <td bgcolor="#FFFFFF"><label>
          <input type="password" name="userPwd" id="userPwd">
        </label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#FFFFFF"><span class="STYLE4">确认新密码：</span></td>
        <td bgcolor="#FFFFFF"><label>
          <input type="password" name="userPwd2" id="userPwd2">
        </label></td>
      </tr>
      <tr>
        <td colspan="2" align="center" bgcolor="#FFFFFF">
        <input type="image"  src="/jsp/index/images/czi-01.gif" width="61" height="26"></td>
      </tr>
    </table>
  </form>
  </body>
</html>
