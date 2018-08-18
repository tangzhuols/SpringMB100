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
								<img src="/jsp/index/images/logo.gif" width="377" height="80">
							</td>
							<td width="56%">
								<table width="100%" height="50" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="20%">
											&nbsp;
										</td>
										<td width="20%">
											&nbsp;
										</td>
										<td width="24%">
											&nbsp;
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
													<td align="center" id="itd" background="/jsp/index/images/topbg.gif">
														<a href="/jsp/index/index.jsp" target="_self">首
															&nbsp;&nbsp;页 </a>
													</td>
												</tr>
											</table>
										</td>
										<td width="26%">
											<table id="currentbt" width="100%" height="36">
												<tr>
													<td align="center" id="ctd" background=" /jsp/index/images/bt2.gif">
														<a href="#" class="txclass">合作伙伴专区</a>
													</td>
												</tr>
											</table>
										</td>
										<td width="56%" height="36" valign="bottom">
											<!-- 其他按钮 -->
											<table id="otherbt" width="100%" height="27" align="left">
												<tr>
													<td align="center" background="/jsp/index/images/topbg.gif" id="otd">
														<a href="/"></a><a href="#">资讯专区</a> &nbsp;||&nbsp;
														<a href="/">招募专栏</a> &nbsp;||&nbsp;
														<a href="/">积分乐园</a>
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
										<td id="seatd" background=" /jsp/index/images/top_down_bg.gif">
											<img src="/jsp/index/images/top_down.gif" width="900" height="35" />
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
							<td id="logintd" height="25" background=" /jsp/index/images/logintop.gif">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td align="center" background=" /jsp/index/images/bg1.gif">
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
								合作伙伴注册
								<br>
								<hr>
							</td>
						</tr>
						<tr>
							<td   valign="top">
								 <jsp:include flush="true" page="register.jsp"></jsp:include>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
		</table>
	 

		<table width="910" border="0" align="center">
			<!-- 底部 -->
			<tr>
				<td align="center">
					<img src="/jsp/index/images/down.gif" width="910" height="42">
				</td>
			</tr>
		</table>

	</body>
</html>







