<%@ page language="java" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>My JSP 'main.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		  <LINK href="css/admin.css" type="text/css" rel="stylesheet">
	
		<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
	<script type="text/javascript" src="js/myindex.js"></script>
	
	</HEAD>
	<BODY>
		<TABLE height="100%" cellSpacing=0 cellPadding=0 width=180
			background=images/menu_bg.jpg border=0>
			<TR>
				<TD vAlign=top align="center">
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>

						<TR>
							<TD height=10></TD>
						</TR>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg 
							 onmouseover="hg(this,true)"   onmouseout="hg(this,false)"   onclick= "expand(1)" >
								<A class=menuParent onclick="expand(1) "   href="#">合作伙伴管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild 
								href="/mb100/hezuo/selectAll.action" target=main>资质审核</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild 
								href="/mb100/hezuo/selectCengJi.action" target=main>修改层级</A>
							</TD>
						</TR>
						<TR height=4>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg  
							 onmouseover="hg(this,true)"   onmouseout="hg(this,false)" onclick=expand(2) >
								<A class=menuParent onclick=expand(2) href="javascript:void(0);">资讯管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild
								 href="/mb100/zixun/zixunJump.action" target=main>发布资讯</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="/mb100/zixun/zixunweihu.action" target=main>资讯维护</A>
							</TD>
						</TR>
						<TR height=4>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="images/menu_bt.jpg"
							 onmouseover="hg(this,true)"   onmouseout="hg(this,false)"  onclick=expand(3)>
								<A class=menuParent onclick=expand(3) href="javascript:void(0);">招募管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
	<TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
						<TD>
								<!-- 先走servlet 获取资源类别 -->
								<A class=menuChild href="/mb100/tianjia.action" target=main>添加招募</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="/mb100/main/selectHT.action" target=main>招募管理</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="/mb100/main/selectcanxuan.action" target=main>处理招募信息</A>
							</TD>
						</TR>
                          <TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="/mb100/main/selectzhongbiao.action" target=main>处理中标信息</A>
							</TD>
						</TR>
						<TR height=4>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="images/menu_bt.jpg"  
							 onmouseover="hg(this,true)"   onmouseout="hg(this,false)"onclick=expand(4)>
								<A class=menuParent onclick=expand(4) href="javascript:void(0);">工单管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
	<TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0
						width=150 border=0>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="/mb100/gongdan/HGangdanFq.action" target=main>发起工单</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="/mb100/gongdan/HchakanGongDan.action" target=main>查看工单</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="/mb100/gongdan/HWeiChuLiGangDan.action" target=main>未处理工单</A>
							</TD>
						</TR>
						<TR height=4>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="images/menu_bt.jpg"  
							 onmouseover="hg(this,true)"   onmouseout="hg(this,false)"onclick=expand(5) >
								<A class=menuParent onclick=expand(5) href="javascript:void(0);">选验管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0
						width=150 border=0>

						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="/mb100/plan/xuanyanAuditing.action" 
								target=main>选验审核</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="/mb100/plan/induceTheme.action" 
								target=main>归纳主题</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>							
								<A class=menuChild href="/mb100/plan/induceThemeList.action" 
								target=main>选验结论</A>
							</TD>
						</TR>
						<TR height=4>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="images/menu_bt.jpg" 
							 onmouseover="hg(this,true)"   onmouseout="hg(this,false)" onclick=expand(6) >
								<A class=menuParent onclick=expand(6) href="javascript:void(0);">资源类别管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
			<TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0
						width=150 border=0>

						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild 
								href="/mb100/ziyuanlei/selectAll.action" target=main>资源类别列表</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild 
								href="/mb100/ziyuanlei/insertJump.action" target=main>添加资源类别</A>
							</TD>
						</TR>
						<TR height=4>
							<TD colSpan=2></TD>
						</TR>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="images/menu_bt.jpg"  
							 onclick=expand(0)      onmouseover="hg(this,true)"   onmouseout="hg(this,false)">
								<A class=menuParent onclick=expand(0) href="javascript:void(0);">个人管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child0 style="DISPLAY: none" cellSpacing=0 cellPadding=0
						width=150 border=0>

						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="UpdateKL.jsp" target="_parent">修改口令</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align="center" width=30>
								<IMG height=9 src="images/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild
									onclick="if (confirm('确定要退出吗？')) return true; else return false;"
									href="/mb100/index/index.jsp" target="_parent">退出系统</A>
							</TD>
						</TR>
					</TABLE>
				</TD>
				<TD width=1 bgColor=#d1e6f7></TD>
			</TR>
		</TABLE>
	</BODY>
</HTML>

