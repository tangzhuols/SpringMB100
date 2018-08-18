<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<link rel="stylesheet" type="text/css" href="css/my.css">

		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.corner.js"></script>

		<script type="text/javascript" src="js/myindex.js"></script>

		<script type="text/javascript">
      
	      //合作伙伴   
	          $('#currentbt').corner("top");
	        $('#ctd').corner("top"); 
	        
	            //首页按钮 
	          $('#indexbt').corner("tl");
	          $('#itd').corner("tl");   
	          
        //其他导航按钮
	        $('#otherbt').corner("tr");   
	        $('#otd').corner("tr");   
	  //搜索按钮      
	    $('#seatb').corner("bottom"); 
	    $('#seatd').corner("bottom") ;
	    //登陆框
	     $('#logintb').corner("top");
	     $('#logintd').corner("top");
	  
	     $('#centtb1').corner("top");
	     $('#centtd1').corner("top");
	  
     </script>

	    <style type="text/css">
<!--
.STYLE2 {	font-size: 18px;
	color: #0099CC;
}
-->
        </style>
		<script type="text/javascript">
 function aaa( )
 {
    var tr= document.getElementById("tr");
    if(tr.style.display=="none") 
        tr.style.display="block"
    else
        tr.style.display="none"
 }

</script>
  
</head>

  <body>
		<table width="900" border="0" align="center" cellpadding="0"
			cellspacing="8">
			<tr>
				<td colspan="2" align="center">

					<table width="100%" height="100%" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td width="44%" height="80" valign="bottom">
								<img src="images/logo.gif" width="377" height="80">
							</td>
							<td width="56%">
								<table width="100%" height="50" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="20%">&nbsp;
											
										</td>
										<td width="20%">&nbsp;
											
										</td>
										<td width="24%">&nbsp;
											
										</td>
										<td width="17%" align="right" valign="top">
											<a href="#">收藏本站</a>
										</td>
										<td width="19%" align="center" valign="top">
											<a href="#">设为首页</a>
										</td>
									</tr>
								</table>
								<table width="100%" height="36" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="18%" valign="bottom">
											<!-- 首页按钮 -->
											<table id="indexbt" width="100%" height="27" cellspacing="2"
												bgcolor="#CCCCFF">
												<tr>
													<td align="center" id="itd" background="images/topbg.gif">
														<a href="index/index.jsp" target="_self">首
															&nbsp;&nbsp;页 </a>
													</td>
												</tr>
											</table>
										</td>
										<td width="26%">
											<table id="currentbt" width="100%" height="36">
												<tr>
													<td align="center" id="ctd" background=" images/bt2.gif">
														<a href="#" class="txclass">合作伙伴专区</a>
													</td>
												</tr>
											</table>
										</td>
										<td width="56%" height="36" valign="bottom">
											<!-- 其他按钮 -->
											<table id="otherbt" width="100%" height="27" align="left">
												<tr>
													<td align="center" background="images/topbg.gif" id="otd">
														<a href="#"></a><a href="#">资讯专区</a> &nbsp;||&nbsp;
														<a href="#">招募专栏</a> &nbsp;||&nbsp;
														<a href="#">积分乐园</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<!-- 搜索栏  -->
							<td colspan="2" valign="top" height="36">

								<table width="100%" id="seatb" height="36">
									<tr>
										<td id="seatd" background=" images/top_down_bg.gif">
											<img src="images/top_down.gif" width="900" height="35" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center" height="226" valign="top">
					<!-- 登陆框 -->
					<table width="202" height="226" cellspacing="2" align="center"
						bgcolor="ccccff" id="logintb">
						<tr>
							<td id="logintd" height="25" background=" images/logintop.gif">&nbsp;
								
							</td>
						</tr>
						<tr>
							<td align="center" background=" images/bg1.gif">
								<!-- 登陆表单   -->
								<jsp:include flush="true" page="login.jsp"></jsp:include>
							</td>
						</tr>
					</table>

				</td>
				<td width="698" rowspan="2" align="center" valign="top">
					<!--合作伙伴业务  -->
					<table width="100%" height="785" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="50">
								合作伙伴专区
								<br>
								<hr>
							</td>
						</tr>
						<tr>
							<td   valign="top"><table border="1" align="center" cellpadding="0"
   cellspacing="1"  
    bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG);">
                              <tr>
                                <td colspan="7" align="center"><span class="STYLE2">显示所有招募信息 </span>                            
                              </tr>
                              <tr>
                                <td width="77" align="center"><span >编号</span></td>
                                <td width="83" align="center"><span >招募主题</span></td>
                                <td width="85" align="center"><span >资源类别</span></td>
                                <td width="72" align="center"><span >结束应标</span></td>
                                <td width="103" align="center"><span >操作标志</span></td>
                                <td width="79" align="center"><span >结束时间</span></td>
                                <td width="124" align="center"><span >操作</span></td>
                              </tr> 
                                <tr>
                                  <td  ><span class="STYLE5">&nbsp;<a href="javascript:aaa()">${ss.rcId}</a></span></td>
                                  <td  ><span class="STYLE5">&nbsp; ${ss.rcSubject} </span></td>
                                  <td  ><span class="STYLE5">&nbsp;${ss.resSort}</span></td>
                                  <td><span class="STYLE5">&nbsp;${ss.endFlag}</span></td>
                                  <td  ><span class="STYLE5">&nbsp;${ss.opStatus}</span></td>
                                  <td  ><span class="STYLE5">&nbsp;${ss.endDate}</span></td>
                                  <td align="center"  ><span class="STYLE5">
                                    <c:if test="${ss.opStatus=='1'}"><a href="index/ResponseZhaomuServlet?dothing=byId&&rcId=${ss.rcId}">响应招募</a></c:if>
                                    <a href="#">
                                    <c:if test="${ss.opStatus=='0'}"></c:if>
                                  </a></span></td>
                                </tr>
                                <tr style="display:none"  id="tr">
                                  <td colspan="7"><table width="495"    border="1" align="center" cellspacing="1"  
	    	   bordercolor="white"  style="background-image: url(images/bg.JPG); font-size: 11px;">
                                      <tr>
                                        <td class="STYLE5">&nbsp;发起时间</td>
                                        <td><span class="STYLE5">&nbsp;${ss.startTime}</span></td>
                                        <td><span class="STYLE5">&nbsp;招募时间</span></td>
                                        <td><span class="STYLE5">&nbsp;${ss.rcTime}</span></td>
                                      </tr>
                                      <tr>
                                        <td><span class="STYLE5">&nbsp;费用预算</span></td>
                                        <td><span class="STYLE5">&nbsp;${ss.mnBudget}</span></td>
                                        <td><span class="STYLE5">&nbsp;招募数量</span></td>
                                        <td><span class="STYLE5">&nbsp;${ss.rcNum}</span></td>
                                      </tr>
                                      <tr>
                                        <td><span class="STYLE5">&nbsp;招募介绍</span></td>
                                        <td><span class="STYLE5">&nbsp;${ss.rcIntro}</span></td>
                                        <td><span class="STYLE5">&nbsp;招募标准</span></td>
                                        <td><span class="STYLE5">&nbsp;${ss.rcCriterion}</span></td>
                                      </tr>
                                      <tr>
                                        <td><span class="STYLE5">&nbsp;招募类型</span></td>
                                        <td><span class="STYLE5">&nbsp;${ss.rcType}</span></td>
                                        <td><span class="STYLE5">&nbsp;计划参赛单位数</span></td>
                                        <td><span class="STYLE5">&nbsp;${ss.units}</span></td>
                                      </tr>
                                      <tr>
                                        <td><span class="STYLE5">&nbsp;发起人</span></td>
                                        <td><span class="STYLE5">&nbsp;${ss.creatorId}</span></td>
                                        <td><span class="STYLE5">&nbsp;</span></td>
                                        <td><span class="STYLE5">&nbsp;</span></td>
                                      </tr>
                                  </table></td>
                                </tr>
                            
                            </table></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="202" align="center" valign="top"><!-- 合作伙伴功能区 -->
					<script type="text/javascript">
          function setMenu(_id){
			if(document.getElementById(_id).style.display=="none")
				document.getElementById(_id).style.display="block";
			else
				document.getElementById(_id).style.display="none";
            }
          </script>
          <!--  功能区结束-->
			  </td>
			</tr>
		</table>
	 

		<table width="910" border="0" align="center">
			<!-- 底部 -->
			<tr>
				<td align="center">
					<img src="images/down.gif" width="910" height="42">
				</td>
			</tr>
		</table>

  </body>
</html>







