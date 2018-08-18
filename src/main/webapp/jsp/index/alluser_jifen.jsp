<%@ page language="java" import="java.util.*" pageEncoding="GB18030" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="page" uri="http://jpager.com/taglibs/page" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'alluser_jifen.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style>
        .STYLE3 {
            font-family: "华文行楷";
            font-size: 38px;
        }

        .STYLE1 {
            color: #9900FF;
            font-size: 24px;
            font-weight: bold;
        }

        .aaa {
            font-size: 18px;
        }

        a:link {
            color: #00ff00;
            text-decoration: none;
        }

        a:visited {
            text-decoration: none;
            color: #0FF;
        }

        a:hover {
            text-decoration: underline;
            color: #F0F;
        }

        a:active {
            text-decoration: none;
            color: #60F;
        }

        .STYLE4 {
            font-size: 36px
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body>
<table width="429" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#B1C7E2"
       style="background-image: url(images/bg.JPG)">
    <c:if test="${alljifen != null}">
        <tr>
            <td height="35" colspan="2" align="center" valign="middle">
                <p class="STYLE1 STYLE3 STYLE4">所有有积分的用户</p>
                <a href="<%=path %>/main/index.action" class="aaa"><strong>返回</strong></a></td>
        </tr>
        <tr>
            <td width="15%">排序</td>
            <td width="324" height="29" align="center" width="65%"><strong>合作伙伴名称</strong></td>
            <td width="102" align="center" width="20%"><strong>积 分</strong></td>
        </tr>

        <c:forEach items="${alljifen}" var="all" varStatus="status">
            <tr>
                <td align="center">${status.count}</td>
                <td height="29" align="center"><strong> <a
                        href="/mb100/main/selectAGongGaoOne.action?iq=${all.cpf.spId}&xinxi=B">${all.cpf.deptName }</a></strong>
                </td>
                <td align="center"><strong>${all.score }</strong></td>
            </tr>
        </c:forEach>
    </c:if>


    <%--所有最新政策信息 --%>
    <c:if test="${zxzc !=null}">
        <tr>
            <td height="35" colspan="2" align="center" valign="middle">
                <p class="STYLE1 STYLE3 STYLE4">所有最新政策信息</p>
                <a href="<%=path %>/main/index.action" class="aaa"><strong>返回</strong></a></td>
        </tr>
        <tr>
            <td width="324" height="29" align="center" width="65%"><strong>标题</strong></td>
            <td width="102" align="center" width="20%"><strong>创建时间</strong></td>
        </tr>
        <c:forEach items="${zxzc}" var="all">
            <tr>
                <td width="70%" height="10px" align="center"><a
                        href="/mb100/main/selectAGongGaoOne.action?iq=${all.infoId}&xinxi=A">${all.title }</a></td>
                <td width="30%" height="10px">${fn:substring(all.createDate,0,10)}</td>
            </tr>
        </c:forEach>

    </c:if>

    <%--下载信息 --%>
    <%--  <c:if test="${info !=null}">
          <tr>
          <td height="35" colspan="2" align="center" valign="middle">
          <p class="STYLE1 STYLE3 STYLE4">所有下载信息信息</p>
          <a href="<%=path %>/main/index.action" class="aaa"><strong>返回</strong></a></td>
         </tr>
        <tr>
          <td width="324" height="29" align="center" colspan="2"><strong>下载列表</strong></td>
        </tr>
        <c:forEach items="${info}" var="ss">
        <tr><td colspan="2"  align="center">
        <a href="/mb100/main/xzT.action?number=${ss.key }">${fn:substring(ss.value,78,-1) }</a>
        </td></tr>
        </c:forEach>

     </c:if> --%>
    <%--所有招募信息 --%>
    <c:if test="${zhaomu!=null}">
        <tr>
            <td height="35" colspan="2" align="center" valign="middle">
                <p class="STYLE1 STYLE3 STYLE4">所有招募信息</p>
                <a href="<%=path %>/main/index.action" class="aaa"><strong>返回</strong></a></td>
        </tr>
        <tr>
            <td width="324" height="29" align="center" width="65%"><strong>招募主题</strong></td>
            <td width="102" align="center" width="20%"><strong>招募时间</strong></td>
        </tr>
        <c:forEach items="${zhaomu}" var="ss" varStatus="status">
            <tr height="10px">
                <td width="70%" align="center"><span class="STYLE5">&nbsp;<a
                        href="/mb100/main/selectAGongGaoOne.action?iq=${ss.invtId}&xinxi=C">${ss.rcSubject}</a></span>
                </td>
                <td width="30%" height="10px">${fn:substring(ss.rcTime,0,10)}</td>
            </tr>
        </c:forEach>
    </c:if>

    <%--所有业务动态信息 --%>
    <c:if test="${ywdt != null}">
        <tr>
            <td height="35" colspan="2" align="center" valign="middle">
                <p class="STYLE1 STYLE3 STYLE4">所有业务动态信息</p>
                <a href="<%=path %>/main/index.action" class="aaa"><strong>返回</strong></a></td>
        </tr>
        <tr>
            <td width="324" height="29" align="center" width="65%"><strong>标题</strong></td>
            <td width="102" align="center" width="20%"><strong>创建时间</strong></td>
        </tr>
        <c:forEach items="${ywdt}" var="all">
            <tr>
                <td width="70%" height="10px" align="center"><a
                        href="/mb100/main/selectAGongGaoOne.action?iq=${all.infoId}&xinxi=A">${all.title }</a></td>
                <td width="30%" height="10px">${fn:substring(all.createDate,0,10)}</td>
            </tr>
        </c:forEach>
    </c:if>
    <%--所有公告信息 --%>
    <c:if test="${zixun != null}">
        <tr>
            <td height="35" colspan="2" align="center" valign="middle">
                <p class="STYLE1 STYLE3 STYLE4">所有公告信息</p>
                <a href="<%=path %>/main/index.action" class="aaa"><strong>返回</strong></a></td>
        </tr>
        <tr>
            <td width="324" height="29" align="center" width="65%"><strong>主题</strong></td>
            <td width="102" align="center" width="20%"><strong>时间</strong></td>
        </tr>
        <c:forEach items="${zixun}" var="all">
            <tr>
                <td width="100%" height="10px" align="center"><a
                        href="/mb100/main/selectAGongGaoOne.action?iq=${all.infoId}&xinxi=A">${all.title }</a></td>
                <td width="30%" height="10px">${fn:substring(all.createDate,0,10)}</td>
            </tr>
        </c:forEach>
    </c:if>
</table>
</body>
</html>
