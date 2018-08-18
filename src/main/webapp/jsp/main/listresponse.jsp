<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    .aa {background-color:#CCCCCC}
    .STYLE1 {
	font-size: 18px;
	color: #3399CC;
}
    .STYLE2 {color: #3399CC}
    .STYLE3 {font-size: 18px}
    </style>
</head>
   <script type="text/javascript">
 function aaa(k)
 {
    var tr= document.getElementById("tr"+k);
	 var tt= document.getElementById("tt"+k);
    if(tr.style.display=="none")
	{ 
       tr.style.display="block"
		}else{
        tr.style.display="none"
		}
		
		 
 }
  function bb(k)
 {
      var tt= document.getElementById("tt"+k);
     
		 if(tt.style.display=="none")
		 {
		  tt.style.display="block"
		 } else{
        tt.style.display="none"
		}
 }
 

</script>
  <body>

    <form name="form1" method="post" action="">
      <table width="785"  border="1" align="center" cellpadding="0" cellspacing="1" 
      bordercolor="#B1C7E2"  style="background-image: url(images/bg.JPG);">
        <tr>
          <td colspan="8" align="center"><span class="STYLE3 STYLE1">显示所有响应信息 </span>        </tr>
        <tr>
          <td  align="center"><span >编号</span></td>
          <td   align="center"><span >参赛单位</span></td>
          <td  align="center"><span >联系人</span></td>
          <td   align="center"><span >电话</span></td>
          <td  align="center"><span class="STYLE5">&nbsp;招募状态</span></td>
          <td  align="center"><span >方案附件</span></td>
          <td  align="center"><span >操作标志</span></td>
          <td  align="center"><span >操作</span></td>
        </tr>
        <c:forEach items="${nnnn}" var="ss" varStatus="kk" >
          <tr>
            <td ><span >&nbsp;<a href="javascript:aaa(${kk.index})">${ss.respId}</a></span></td>
            <td ><span >&nbsp;${ss.runUnit}</span></td>
            <td ><span >&nbsp;${ss.linkman}</span></td>
            <td ><span >&nbsp;${ss.mobile}</span></td>
            <td ><span class="STYLE5">&nbsp;${ss.rcStatus}</span></td>
            <td ><span >&nbsp;${ss.attachment}</span></td>
            <td align="center"><span class="STYLE3">&nbsp;${ss.opFlag}</span></td>
            <td align="center"><span class="STYLE5 STYLE2">
            
            <c:if test="${ss.opFlag=='1'}">
               <a href="main/canxuan.jsp?respId=${ss.respId}&p=1">参选</a> ||
               <a href="main/canxuan.jsp?respId=${ss.respId}&p=0"> 不参选 </a>
            </c:if>
             &nbsp;
            
           </span></td>
          </tr>
		   
          <tr style="display:none"  id="tr${kk.index}">
            <td colspan="8">
			
			<table width="80%" border="1" align="center" cellspacing="1"  bordercolor="white"  style="background-image: url(images/bg.JPG); font-size: 11px;">
                <tr>
                  <td class="STYLE5">&nbsp;联系人Email</td>
                  <td   class="STYLE5">&nbsp;${ss.email}</td>
                  <td   class="STYLE5">&nbsp;报价</td>
                  <td   class="STYLE5">&nbsp;${ss.price}</td>
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
        </c:forEach>
      </table>
      <p align="center">${fenye.viewButton}</p>
    </form>
  </body>
</html>
