<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<link rel="stylesheet" type="text/css" href="css/gg.css">

 	 <script type="text/javascript" src="js/AC_OETags.js">  </script>
 	 <script type="text/javascript" src="js/gg.js"> </script>
    <script type="text/javascript" src="js/jquery.js"></script>
 	 <script type="text/javascript" src="js/jquery.corner.js"></script>

	 <script type="text/javascript" src="js/myindex.js"></script>
  <style type="text/css">
  .left{
	 float:left;
	 display:inline;
	  font-size:16px;
  }
  .right{
	 float:right;
	 display:inline;
	  font-size:16px;
	  
  }
  .res{
	 float:inherit;
	 display:inline;
	  font-size:16px;
	  margin-top: 0px;
	  padding-top: 0px;
  }
  </style>
		<script type="text/javascript">
        //当前页按钮 
	        $('#currentbt').corner("top");
	        $('#ctd').corner("top");   
      //其他导航按钮
	        $('#otherbt').corner("tr");   
	        $('#otd').corner("tr");   
	  //搜索按钮      
	    $('#seatb').corner("bottom"); 
	    $('#seatd').corner("bottom") ;
	    //登陆框
	     $('#logintb').corner("top");
	     $('#logintd').corner("top");
	     //3d广告
	    $('#3dggtb').corner( );   
	    $('#3dggtd').corner( );
	    
	    //中间的表格
	   $('#centtb1').corner( "top"); 
	    $('#centtd1').corner("top" );
  
	    $('#centtb2').corner("top" );   
	    $('#centtd2').corner("top" );
	    
	    $('#centtb3').corner("top" );   
	    $('#centtd3').corner("top" );
	    
	    $('#centtb4').corner( "top");   
	    $('#centtd4').corner("top" );
	    
	    $('#centtb5').corner("top" );   
	    $('#centtd5').corner("top" );
	    
	    $('#centtb6').corner("top" );   
	    $('#centtd6').corner("top" );
	    ///快捷入口
	    $('#alttb').corner();   
	    $('#alttd').corner();
	     
	     
	     
     </script>
 
	
		<script type="text/javascript">
			function check(){
				if(aaa() == false){
					alert("请登录 ");
					return false;
				}
			}
		
		</script>
	 </head>

	<body onload="init()" >
		<table width="900" border="0" align="center" cellpadding="0"
			cellspacing="8">
			<tr>
				<td colspan="3" align="center">

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
										<td width="20%">&nbsp; </td>
										<td width="20%">&nbsp; </td>
										<td width="24%" align="right" valign="top"> 
										<a href="javascript:if(confirm('您真的要进入后台吗'))location.href='/jsp/main/login.jsp'">进入后台</a></td>
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
										<td width="24%">
											<!-- 首页按钮 -->
											<table id="currentbt" width="100%" height="36">
												<tr>
													<td align="center" id="ctd"
														background="/jsp/index/images/bt2.gif">
														<a href="/" class="txclass">首 &nbsp;&nbsp;页 </a>
													</td>
												</tr>
											</table>
										</td>
										<td width="76%" height="36" valign="bottom">
											<!-- 其他按钮 -->
											<table id="otherbt" width="100%" height="27" align="left">
												<tr>
													<td align="center" background="/jsp/index/images/topbg.gif"
														id="otd">
														<a href="/jsp/index/coworker.jsp" target="_self" onclick="return check();">合作伙伴专区</a> &nbsp;||&nbsp;&nbsp;
														<a href="/jsp/index/zxzq.jsp" target="_self" onclick="return check();">资讯专区</a> &nbsp;||&nbsp;
														<a href="/jsp/index/zmzl.jsp" onclick="return check();">招募专栏</a> &nbsp;||&nbsp;
														<a href="/jsp/index/jfzq.jsp" onclick="return check();">积分乐园</a>
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
										<td id="seatd" background="/jsp/index/images/top_down_bg.gif">
											<img src="/jsp/index/images/top_down.gif" width="900"
												height="35" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<!-- 登陆框 -->
					<table width="202" height="226" cellspacing="2" align="left"
						bgcolor="ccccff" id="logintb">
						<tr>
							<td id="logintd" height="25"
								background="/jsp/index/images/logintop.gif">&nbsp;
								
							</td>
						</tr>
						<tr>
							<td align="center" background="/jsp/index/images/bg1.gif">
									<!-- 登陆表单   -->
							   <jsp:include flush="true" page="login.jsp"></jsp:include>
							</td>
						</tr>
					</table>
					<table width="480" height="226" border="0" align="left"
						cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<div id="pdiv">
									<div id="cdiv0" class='divclass'>
										<img width="458" height="214" src="/jsp/index/images/a1.jpg"
											alt="点击跳转" onmouseover="this.style.cursor='hand'"
											onmouseout="this.style.cursor='default'"
											onclick="location='http://www.baidu.com'">
									</div>
									<div id="cdiv1" class='divclass'>
										<img width="458" height="214" src="/jsp/index/images/a2.jpg"
											alt="点击跳转" onmouseover="this.style.cursor='hand'"
											onmouseout="this.style.cursor='default'"
											onclick="location='http://www.baidu.com'">
									</div>
									<div id="cdiv2" class='divclass'>
										<img width="458" height="214" src="/jsp/index/images/a3.jpg"
											alt="点击跳转" onmouseover="this.style.cursor='hand'"
											onmouseout="this.style.cursor='default'"
											onclick="location='http://www.baidu.com'">
									</div>
									<div id="cdiv3" class='divclass'>
										<img width="458" height="214" src="/jsp/index/images/a4.jpg"
											alt="点击跳转" onmouseover="this.style.cursor='hand'"
											onmouseout="this.style.cursor='default'"
											onclick="location='http://www.baidu.com'">
									</div>
								</div>
							</td>
						</tr>
					</table>
					<table id="3dggtb" width="226" height="226" align="right"
						bgcolor="#ccccff">
						<tr>
							<td id="3dggtd" background="/jsp/index/images/bg1.gif">
								<div id="3dgg"
									style=" position :relative; width:220px;height:220px;left:0px;top:0px;">
									本页面需要Adobe Flash Player 8.0.
									<br />
									<a href="http://www.adobe.com/go/getflash" /> 点击获取 Adobe Flash
										Player</a>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="330" align="center">
					<!-- 最新公告 -->
			<table width="100%" height="300" border="0" bgcolor="#CCCCFF"
						align="center" id="centtb1">
						<tr>
							<td height="25" background="/jsp/index/images/cent_top.gif"
								id="centtd1"> 
								&nbsp;&nbsp;公告&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|

								<a href="/mb100/main/MoreSelect.action?iq=1">MORE</a>

							</td>
						</tr>
						<tr>

							<td background="/jsp/index/images/bg1.gif" valign="top">&nbsp;
								<c:forEach items="${zixun}" var="all">
									
										<a href="/mb100/main/selectAGongGaoOne.action?iq=${all.infoId}&xinxi=A">${all.title }</a>
										<c:if test="${dates<= all.createDate}">
										<img src="/jsp/index/images/new.gif">
										</c:if>
										<br/>
									
								</c:forEach>

							</td>
						</tr>
					</table>
				</td>
				<td width="345" align="center">
					<!--最新招募  -->
					<table width="100%" height="300" border="0" cellspacing="2"
						align="center" bgcolor="ccccff" id="centtb2">
						<tr>
							<td height="25" background="/jsp/index/images/cent_top.gif"
								id="centtd2">
								&nbsp;&nbsp;招募信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;
								<a href="/mb100/main/MoreSelect.action?iq=2">MORE</a>
							</td>
						</tr>
						<tr>
							<td background="/jsp/index/images/bg1.gif" valign="top">
							 <c:forEach items="${zhaomu}" var="ss" varStatus="status">
							       <span class="left"><span class="STYLE5">&nbsp;<a href="/mb100/main/selectAGongGaoOne.action?iq=${ss.invtId}&xinxi=C">${ss.rcSubject}</a>
							       	<c:if test="${dates<= ss.rcTime}">
										<img src="/jsp/index/images/new.gif">
										</c:if>
							       </span>
							       <span class="right">${fn:substring(ss.rcTime,0,10)}</span>
							   </c:forEach>
							</td>
						</tr>
					</table>
				</td>
				<td width="345" align="center">
					<!--最新 政策  -->
						<table width="100%" height="300" border="0" align="center"
						bgcolor="ccccff" id="centtb3" >
						<tr>
							<td height="25" background="/jsp/index/images/cent_top.gif"
								id="centtd3">
								&nbsp;&nbsp;最新政策&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;

								<a href="/mb100/main/MoreSelect.action?iq=3">MORE</a>
		               </td>
						</tr>
						<tr>

							<td background="/jsp/index/images/bg1.gif" valign="top">&nbsp;
								<c:forEach items="${zxzc}" var="all">
									 <span class="left"><a href="/mb100/main/selectAGongGaoOne.action?iq=${all.infoId}&xinxi=A">${all.title }</a>
									 	<c:if test="${dates<= all.createDate}">
										<img src="/jsp/index/images/new.gif">
										</c:if>
									 </span>
										 <span class="right">${fn:substring(all.createDate,0,10)}</span>
										<br/>
								</c:forEach>

							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">	
				<!-- 快捷入口 --> 
					<table width="100%" border="0" height="90" align="center"
					     id="alttb"  bgcolor="#CCCCFF"  >
						<tr>
							<td align="center" valign="middle"  	id="alttd"  
							bgcolor="#FFFFFF" >  <img   id="altimg" 
							src="/jsp/index/images/alt.gif" width="900"  height="90" align="absmiddle"> </td>
						</tr>
					</table> 
				</td>         
			</tr> 
			<tr>
				<td align="center">
					<!-- 资料下载 -->
					<table width="100%" height="300" border="0"
						bgcolor="ccccff" id="centtb4">
						<tr>
							<td height="25" background="/jsp/index/images/cent_top.gif"
								id="centtd4">
								&nbsp;&nbsp;资料下载&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;
								<a href="/mb100/main/xzid.action?iq=6">MORE</a>
							</td>
						</tr>
						<tr>
							<td background="/jsp/index/images/bg1.gif" valign="top">
								<c:forEach items="${info}" var="ss">
								<span class="res"><a href="/mb100/main/xzT.action?number=${ss.key }">${fn:substring(ss.value,78,-1) }</a></span>
								<br/></c:forEach>
							</td>
						</tr>
					</table>
				</td>
				<td align="center">
					<!--积分排行TOP100-->
					<table width="100%" height="300" border="0" align="center"
						bgcolor="ccccff" id="centtb5">
						<tr>
							<td height="25" background="/jsp/index/images/cent_top.gif"
								id="centtd5">
								&nbsp;&nbsp;积分排行&nbsp;&nbsp;
								TOP100&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;|<a href="/mb100/main/MoreSelect.action?iq=4">MORE</a>
							</td>
						</tr>
						<tr>
							<td background="/jsp/index/images/bg1.gif" valign="top" align="right">
							
							<c:forEach items="${alljifen}" var="all">
								<span class="left"> <a href="/mb100/main/selectAGongGaoOne.action?iq=${all.cpf.spId}&xinxi=B"> ${all.cpf.deptName }</a>
									
								</span>
								 <span class="right">${all.score }</span> 
							     <br/>
							</c:forEach>
							</td>
						</tr>
						
					</table>
				</td>
				<td align="center">
					<!-- 业务动态 -->
						<table width="100%" height="300" border="0" align="center"
						bgcolor="ccccff" id="centtb6">
						<tr>
							<td height="25" background="/jsp/index/images/cent_top.gif"
								id="centtd6">
								&nbsp;&nbsp;业务动态&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;
								<a href="/mb100/main/MoreSelect.action?iq=5">MORE</a>
							</td>
						</tr>
						<tr>
							<td background="/jsp/index/images/bg1.gif" valign="top">&nbsp;
								<c:forEach items="${ywdt}" var="all">
									<span class="left"><a href="/mb100/main/selectAGongGaoOne.action?iq=${all.infoId}&xinxi=A">${all.title }</a>
										<c:if test="${dates<= all.createDate}">
										<img src="/jsp/index/images/new.gif">
										</c:if>
									</span>
									 <span class="right">	${fn:substring(all.createDate,0,10)}</span>
									<br/>
								</c:forEach>
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
					<img src="/jsp/index/images/down.gif" width="910" height="42"></td>
			</tr>
		</table>

	</body>
</html>


<!-- Flash焦点图 begin -->
<script language="JavaScript" type="text/javascript">
 //  在这里可以修改大小
 var width="220";   
 var height="220";
				  
// 3d 广告  
var requiredMajorVersion = 8;
var requiredMinorVersion = 0;
var requiredRevision = 0;
var hasProductInstall = DetectFlashVer(6, 0, 65);
var hasReqestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);

//焦点图



//mode有以下几种值
//淡入，左移，右移，上移，下移，曝光，旋转，放大，水平百叶窗，垂直百叶窗，方形缩小，方形放大，3D旋转左，3D旋转右
//
function GetFocusAry(){
	var focus_ary=new Array();  //修改图像的路径和链接目标

	focus_ary.push({title:"“嫦娥一号”卫星发射升空",
	src:"/jsp/index/images/focuspic22.jpg",url:"http://www.sharejs.com",mode:"3D旋转右"});

	focus_ary.push({title:"香港市民关注探月卫星嫦娥一号发射",
	src:"/jsp/index/images/focuspic23.jpg",url:"http://www.sharejs.com",mode:"左移"});

	focus_ary.push({title:"新改造的嫦娥一号卫星模型",
	src:"/jsp/index/images/focuspic14.jpg",url:"http://www.sharejs.com",mode:"上移"});

	focus_ary.push({title:"中国航天事业合作伙伴万和特约",
	src:"/jsp/index/images/focuspic7.jpg",url:"http://www.sharejs.com",mode:"垂直百叶窗"});

	focus_ary.push({title:"嫦娥一号在月球表面执行任务想象图",
	src:"/jsp/index/images/focuspic20.jpg",url:"http://www.sharejs.com",mode:"旋转"});

	focus_ary.push({title:"在线涂鸦：画出我心中的月球",
	src:"/jsp/index/images/focuspic15.jpg",url:"http://www.sharejs.com",mode:"方形缩小"});
 
	return focus_ary;
}
 
				
	 //  判断是否有Flash   Player  8.0    PlugIn
	// Check to see if a player with Flash Product Install is available and the version does not meet the requirements for playback
	if ( hasProductInstall && !hasReqestedVersion ) {
		var MMPlayerType = (isIE == true) ? "ActiveX" : "PlugIn";
		var MMredirectURL = window.location;
		document.title = document.title.slice(0, 47) + " - Flash Player Installation";
		var MMdoctitle = document.title;
	
		AC_FL_RunContent(
			"src", "http://mat1.qq.com/news/17da/media/playerProductInstall",
			"FlashVars", "MMredirectURL="+MMredirectURL+'&MMplayerType='+MMPlayerType+'&MMdoctitle='+MMdoctitle+"",
			"width",  width,
			"height", height,
			"align", "middle",
			"id", "detectionExample",
			"quality", "high",
			"bgcolor", "#3A6EA5",
			"name", "detectionExample",
			"allowScriptAccess","sameDomain",
			"type", "application/x-shockwave-flash",
			"pluginspage", "http://www.adobe.com/go/getflashplayer"
		);
	} else if (hasReqestedVersion) {
		// if we've detected an acceptable version
		// embed the Flash Content SWF when all tests are passed
		AC_FL_RunContent(
				"src", "/jsp/index/images/focus_last",
				"FlashVars", "",
				"width",  width,
			    "height", height,
				"align", "middle",
				"id", "focus1",
				"quality", "high",
				"name", "focus1",
				"wmode","transparent",
				"allowScriptAccess","sameDomain",
				"type", "application/x-shockwave-flash",
				'codebase', 'http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab',
				"pluginspage", "http://www.adobe.com/go/getflashplayer"
		);
	} else {  // flash is too old or we can't detect the plugin
		var alternateContent = '本页面需要安装Adobe Flash Player 8.0才能正常浏览.<BR>'
		+ '<a href=http://www.adobe.com/go/getflash/>点击获取 Adobe Flash Player</a>. ';
		//document.write(alternateContent);  // insert non-flash content 
		document.getElementById("3dgg").innerHTML=alternateContent;
	}
	// -->  
	</script>
<!-- Flash焦点图 end -->





