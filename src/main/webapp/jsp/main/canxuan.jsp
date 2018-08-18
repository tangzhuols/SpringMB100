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
    
    <title>My JSP 'canxuan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <br>
  <form name="form1" method="post" action="/mb100/selectzhongbiao.action">
    <p>&nbsp;</p>
    <table width="619" height="429" border="0" align="center" cellspacing="1"
      style="background-image: url(images/bg.JPG);">
      <tr>
        <td width="522" height="353"><table width="325" height="94" border="1" align="center" cellspacing="1" bordercolor="#FFFFFF"  
		  style="background-image: url(images/bg.JPG);">
          <tr>
            <td width="123" align="right">原因:</td>
            <td width="186" align="left"><label>
              <textarea name="reason" cols="20"></textarea>
              <input type="hidden" name="resId" value="${param.respId}">
               <input type="hidden" name="opFlag" value="${param.op_flag}">
            </label></td>
          </tr>
          <tr>
            <td height="31" colspan="2" align="center"><input name="Submit2" type="submit" class="aa" value="提  交"></td>
          </tr>
        </table></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </form>
</body>
</html>
