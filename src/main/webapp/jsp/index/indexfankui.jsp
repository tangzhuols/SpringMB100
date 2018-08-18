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
    
    <title>My JSP 'chakan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style >
	    
	    
	</style>

  <script type="text/javascript" src="js/dt.js"></script></head>
<script type="text/javascript">
  function pppp(k)
  {
       var tr=   document.getElementById("tr"+k);
       if(tr.style.display=='none')
           tr.style.display='block';
      else
           tr.style.display='none'
  }

</script>

  <body>
 
  <table  width="100%"  align="center" cellspacing="1"   border='0' >
    <tr>
      <td colspan="10"><h2><strong>工单查看</strong></h2></td>
    </tr>
    
      <tr bgcolor="#BBF5EE" > 
      <td  >工单名称</td>
      <td  >级别</td> 
      <td  align="center">工单状态</td>
      <td >操作</td>
   
    </tr> 
    <page:pager dz="5">
	  <c:forEach items="${cwis1}" var="cc" varStatus="status">
		  <page:item nr="${status.count}">
          <tr  bgcolor="#BBF5EE" >
      <td>&nbsp; <a  href="javascript:pppp(${status.index})"> ${cc.cwiName}</a>  </td>
      <td>&nbsp;${cc.grade} </td> 
      <td align="center" valign="middle">${cc.status }  &nbsp;</td>
              <input type="hidden" name="createUserId" value="${cc.createUserId }"/> 
      <td><a href="/mb100/gongdan/huikuiXinxi.action?wfId=${cc.wfId}&createUserId=${cc.createUserId }">回馈</a>
       <c:if             
				test="${cc.status=='待处理' }">
      ||<a href="javascript:if(confirm('你确定要结束吗?'))location.href='/mb100/gongdan/endGongDan.action?wfId=${cc.wfId}'">结束</a>
      </c:if>
      </td>
     </tr>
     
       <tr  style=" display: none ;font-size: 10px"  id="tr${status.index}">  
       <td  colspan="5">
              <table width="95%"  bgcolor="#FFF5EE"  align="center"  style="font-size: 14px">
                 <tr>
				      <td  >时间限制:${cc.timeLimt}</td> 
				      <td  >发送对象:${cc.sendTo}</td> 
				      <td  >工单类别:${cc.cwiType}</td> 
				      <td  >创建时间:${fn:substring(cc.createDate,0,10)}</td>  
			      </tr> 
			        <tr> 
				      <td  >工作内容:${cc.cwiContent }</td> 
				      <td  >附件:${cc.status }</td>
				       <td  >创建人:${cc.createUserId }</td>
			      </tr> 
			  </table>
			</td   >    
       </tr>
  </page:item>
		   </c:forEach>
		  </page:pager>
		   <tr><td colspan="4" align="center"><page:bt /></td></tr>
  </table>
    <br>${fenye.viewHref}
    <p style="font-size: 10px;">
      <form    action="/mb100/gongdan/selectGongdanZhonghe.action" method="post">
      <h3>综合查询：</h3><br>
      工单名称：<input type="text" name="cwiName">
      类型：<select  name="cwiType"> 
                             <option value="">请选择
					        <option value="内部工单">内部工单
					       <option value="外部工单">外部工单
				   </select> 
			   发送对象：<input type="text" name="sendTo">
			   工单时间：<input type="text" name="createDate" onclick="getDateString(this,oCalendarChs)">
           <input type="submit" value="查询">
      </form>
  </body>
</html>
