<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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
        $('#seatd').corner("bottom");
        //登陆框
        $('#logintb').corner("top");
        $('#logintd').corner("top");

        $('#centtb1').corner("top");
        $('#centtd1').corner("top");

    </script>
    <style type="text/css">
        <!--
        .aaa {
            font-family: "楷体_GB2312";
            color: #F90;
            font-weight: bold;
            font-size: 24px;
        }

        .STYLE1 {
            font-family: "楷体_GB2312";
            font-weight: bold;
            font-size: 18px;
        }

        .STYLE2 {
            font-family: "华文楷体"
        }

        .STYLE4 {
            font-family: "华文楷体";
            font-size: 18px;
        }

        -->
    </style>
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
                                <td width="20%">&nbsp;

                                </td>
                                <td width="20%">&nbsp;

                                </td>
                                <td width="24%" align="right" valign="top">
                                    <a href="javascript:if(confirm('您真的要进入后台吗'))location.href='/jsp/main/login.jsp'">进入后台</a>

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
                                                <a href="/" target="_self">首
                                                    &nbsp;&nbsp;页 </a>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="26%">
                                    <table id="currentbt" width="100%" height="36">
                                        <tr>
                                            <td align="center" id="ctd" background=" /jsp/index/images/bt2.gif">
                                                <a href="/jsp/index/coworker.jsp" class="txclass">合作伙伴专区</a>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="56%" height="36" valign="bottom">
                                    <!-- 其他按钮 -->
                                    <table id="otherbt" width="100%" height="27" align="left">
                                        <tr>
                                            <td align="center" background="/jsp/index/images/topbg.gif" id="otd">
                                                <a href="#"></a><a href="/jsp/index/zxzq.jsp">资讯专区</a> &nbsp;||&nbsp;
                                                <a href="/jsp/index/zmzl.jsp">招募专栏</a> &nbsp;||&nbsp;
                                                <a href="/jsp/index/jfzq.jsp" target="_self">积分乐园</a>
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
                                    <img src="/jsp/index/images/top_down.gif" width="900" height="35"/>
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
                    <td id="logintd" height="25" background=" /jsp/index/images/logintop.gif">&nbsp;

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
                        <span class="aaa">&nbsp; 合作伙伴专区</span>
                        <br>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <iframe width="100%" height="100%" marginheight="0"
                                marginwidth="0" frameborder="0" scrolling="auto"
                                style="border:1px;" src="/HeZuoAll"
                                name="worker">
                            你的浏览器不支持ifrmae标记，请使用IE6.0或更高版本的浏览器。
                        </iframe>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="202" align="center" valign="top">
            <img src="/jsp/index/images/bt1.gif" width="202" height="48">
            <!-- 合作伙伴功能区 -->
            <table width="100%" height="500" border="0" bgcolor="#CCCCFF"
                   align="center" id="centtb1">
                <tr>
                    <td height="25" background=" /jsp/index/images/cent_top.gif" id="centtd1">
                        &nbsp;&nbsp;<strong>合作伙伴功能区
                    </strong></td>
                </tr>
                <tr>
                    <td background=" /jsp/index/images/bg1.gif" valign="top">
                        <!--  功能区开始-->

                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="96%"
                               align=center>
                            <TBODY>
                            <TR>
                                <TD height=8></TD>
                            </TR>
                            <TR>
                                <TD class=menu_title style="CURSOR: hand"
                                    onclick="setMenu('ZZSB')"><span class="STYLE1">
										    企业信息											</span></TD>
                            </TR>
                            <TR id=ZZSB>
                                <TD height=6>
                                    <TABLE style=display='${ff==null?"none":"block" }' class="ttt" border=0
                                           cellSpacing=0 cellPadding=0 width="96%">
                                        <TBODY>

                                        <TR style=display='${ff.opStatus==0?"none":"block" }'>
                                            <TD class=menu_td1>
                                                <c:forEach items="${coComUser.coPtnrInfs}" var="infos"
                                                           varStatus="status">
                                                    <img src="/jsp/index/images/minus.gif"/> <A
                                                        href="/XiuGaiZ.action?spId=${infos.spId }"
                                                        target=worker class="STYLE4">修改资质信息</A>
                                                </c:forEach>
                                            </TD>
                                        </TR>

                                        <TR>
                                            <TD class=menu_td1>
                                                <img src="/jsp/index/images/minus.gif"></img>
                                                <A href="jsp/index/XiuGaiMiMa.jsp"
                                                   target="_parent" class="STYLE4">修改密码</A>
                                            </TD>
                                        </TR>
                                        </TBODY>
                                    </TABLE>
                                </TD>
                            </TR>
                            </TBODY>
                        </TABLE>


                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="96%"
                               align=center>
                            <TBODY>

                            <TR>

                                <TD class=menu_title style="CURSOR: hand"
                                    onclick="setMenu('FQXY')"><span class="STYLE1">
											  自主提交方案											</span></TD>
                            </TR>
                            <TR style="DISPLAY: none" id=FQXY>
                                <TD height=6>
                                    <TABLE style=display='${ff!=null &&  ff.opStatus==0 ?"block":"none" }'
                                           class="ttt" border=0 cellSpacing=0 cellPadding=0 width="96%">
                                        <TBODY>

                                        <TR>
                                            <TD class=menu_td1 STYLE2>
                                                <img src="/jsp/index/images/minus.gif"/>
                                                <A href="/jsp/index/tijiaofangan.jsp"
                                                   target=worker class="STYLE4">提交方案 </A></TD>
                                        </TR>
                                        <TR>
                                            <TD class=menu_td1 STYLE2>
                                                <c:forEach items="${coComUser.coPtnrInfs}" var="infos"
                                                           varStatus="status">
                                                    <img src="/jsp/index/images/minus.gif"/>
                                                    <A href="/xuanyanapply.action?schemaId=${infos.spId}"
                                                       target=worker class="STYLE4"> 查看选验申请状态 </A>
                                                </c:forEach>
                                            </TD>
                                        </TR>
                                        </TBODY>
                                    </TABLE>
                                </TD>
                            </TR>
                            </TBODY>
                        </TABLE>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="96%"
                               align=center>
                            <TBODY>
                            <TR>
                                <TD class=menu_title style="CURSOR: hand"
                                    onclick="setMenu('ZMYB')"><span class="STYLE1">
											  移动公司招募信息											</span></TD>
                            </TR>
                            <TR style="DISPLAY: none" id=ZMYB>
                                <TD height=6>
                                    <TABLE style=display='${ff!=null &&  ff.opStatus==0 ?"block":"none" }'
                                           class="ttt" border=0 cellSpacing=0 cellPadding=0 width="96%">
                                        <TBODY>

                                        <TR>
                                            <TD class=menu_td1>
                                                <img src="/jsp/index/images/minus.gif"/>
                                                <A href="/ZhaoMuAll.action"
                                                   target=worker class="STYLE4">响应招募
                                                </A>
                                            </TD>
                                        </TR>
                                        <TR>
                                            <TD class=menu_td1>
                                                <img src="/jsp/index/images/minus.gif"/>
                                                <A href="/select.action"
                                                   target=worker class="STYLE4">查看响应状态 </A>
                                            </TD>
                                        </TR>

                                        </TBODY>
                                    </TABLE>
                                </TD>
                            </TR>
                            </TBODY>
                        </TABLE>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="96%"
                               align=center>
                            <TBODY>
                            <TR>
                                <TD class=menu_title style="CURSOR: hand"
                                    onclick="setMenu('GDCS')"><span class="STYLE1">
											  工单信息											</span></TD>
                            </TR>
                            <TR style="DISPLAY: none" id=GDCS>
                                <TD height=6>
                                    <TABLE style=display='${ff!=null &&  ff.opStatus==0 ?"block":"none" }'
                                           class="ttt" border=0 cellSpacing=0 cellPadding=0 width="96%">
                                        <TBODY>
                                        <TR>
                                            <TD class=menu_td1>
                                                <img src="/jsp/index/images/minus.gif"/>
                                                <A href="/queryGongDan.action" target=worker
                                                   class="STYLE4">发起工单
                                                </A>
                                            </TD>
                                        </TR>
                                        <TR>
                                            <TD class=menu_td1>
                                                <img src="/jsp/index/images/minus.gif"/>
                                                <A href="/CoWformInfAll.action" target=worker
                                                   class="STYLE4">反馈工单
                                                    (<SPAN id=count2 class=index-hongse>0</SPAN>) </A>
                                            </TD>
                                        </TR>

                                        <TR>
                                            <TD class=menu_td1>
                                                <img src="/jsp/index/images/minus.gif"/>
                                                <A href="/selectGongdanSuoYou.action" target=worker
                                                   class="STYLE4">查询历史工单</A>
                                            </TD>
                                        </TR>

                                        </TBODY>
                                    </TABLE>
                                </TD>
                            </TR>
                            </TBODY>
                        </TABLE>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="96%"
                               align=center>
                            <TBODY>
                            <TR>
                                <TD class=menu_title style="CURSOR: hand"
                                    onclick="setMenu('FYJS')"><span class="STYLE1">
											  资讯专区											</span></TD>
                            </TR>
                            <TR>
                                <TD style="DISPLAY: none" id=FYJS height=6>
                                    <TABLE style=display='${ff!=null &&  ff.opStatus==0 ?"block":"none" }'
                                           class="ttt" border=0 cellSpacing=0 cellPadding=0 width="96%">
                                        <TBODY>
                                        <TR>
                                            <TD class=menu_td1>
                                                <img src="/jsp/index/images/minus.gif"/>
                                                <A href="/ZiXunSelect.action" target=worker class="STYLE4">查看详细资讯(<SPAN
                                                        id=count5 class=index-hongse>0</SPAN>)</A>

                                            </TD>
                                        </TR>
                                        </TBODY>
                                    </TABLE>
                                </TD>
                            </TR>
                            </TBODY>
                        </TABLE>

                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="96%"
                               align=center>
                            <TBODY>
                            <TR>
                                <TD class=menu_title style="CURSOR: hand"
                                    onclick="setMenu('HZPG')"><span class="STYLE1">
											  合作评估											</span></TD>
                            </TR>

                            <TR>
                                <TD style="DISPLAY: none" id=HZPG height=6>
                                    <TABLE style=display='${ff!=null &&  ff.opStatus==0 ?"block":"none" }'
                                           class="ttt" border=0 cellSpacing=0 cellPadding=0 width="96%">
                                        <TBODY>
                                        <TR>
                                            <TD class=menu_td1 STYLE2>
                                                <img src="/jsp/index/images/minus.gif"/>
                                                <A href="/qiantaimenuservlet?method=yueduzc" target=main class="STYLE4">月度支撑评估查询</A>
                                            </TD>
                                        </TR>
                                        <TR>
                                            <TD class=menu_td1 STYLE2>
                                                <img src="/jsp/index/images/minus.gif"/>
                                                <A href="/qiantaimenuservlet?method=wapyw" target=main class="STYLE4">wap业务评估查询</A>
                                            </TD>
                                        </TR>
                                        </TBODY>
                                    </TABLE>
                                </TD>
                            </TR>
                            </TBODY>
                        </TABLE>
                    </TD>


            </TABLE>
            <script type="text/javascript">
                function setMenu(_id) {
                    if (document.getElementById(_id).style.display == "none")
                        document.getElementById(_id).style.display = "block";
                    else
                        document.getElementById(_id).style.display = "none";
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
            <img src="/jsp/index/images/down.gif" width="910" height="42">
        </td>
    </tr>
</table>

</body>
</html>







