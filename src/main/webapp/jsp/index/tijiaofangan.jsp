<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'tijiaofangan.jsp' starting page</title>

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
            color: #9900FF;
            font-size: 24px;
            font-weight: bold;
        }

        .aaaa {
            border: 1px solid #6699FF;
            width: 250px;
            height: 22px;
        }

        .STYLE2 {
            font-family: "华文楷体";
            color: #FF0000;
            font-weight: bold;
            font-size: 18px;
        }

        .STYLE3 {
            font-family: "华文行楷";
            font-size: 36px;
        }

        a:link {
            color: #FF00FF;
            text-decoration: none;
        }

        a:visited {
            text-decoration: none;
            color: #9900FF;
        }

        a:hover {
            text-decoration: underline;
            color: #FF9900;
        }

        a:active {
            text-decoration: none;
            color: #00FFFF;
        }

        -->
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<form action="/submitplan" th:action="@{/submitplan}"
      method="post" name="form1" enctype="multipart/form-data">
    <table width="600" height="33" cellpadding="0" cellspacing="1" border="0"
           bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG);">
        <tr>
            <td width="600" height="30">&nbsp;&nbsp; <span class="STYLE2">&nbsp; 选验申请</span></td>
        </tr>
    </table>
    <table width="600" border="0" align="left" cellpadding="0" cellspacing="1"
           bordercolor="#B1C7E2" style="background-image: url(images/bg.JPG);">
        <tr>
            <td height="35" colspan="2" align="center"><p class="STYLE1 STYLE3">提交方案</p></td>
        </tr>
        <tr>
            <td width="203" height="30" align="right"><strong>方案名称：</strong></td>
            <td width="554" align="left"><label for="schemaName"></label>
                <input name="schemaName" type="text" class="aaaa" id="schemaName"></td>
        </tr>
        <tr>
            <td height="57" align="right"><strong>方案描述：</strong></td>
            <td align="left">
                <label for="schemaDesc"></label>
                <textarea name="schemaDesc" id="schemaDesc" cols="30" rows="3"></textarea></td>
        </tr>
        <tr>
            <td height="30" align="right"><strong>选验类型：</strong></td>
            <td align="left">
                <select name="slctType" class="aaaa" id="slctType">
                    <option value="--请选择--" selected>--请选择--</option>
                    <option value="运营支持型">运营支持型</option>
                    <option value="技术支持型">技术支持型</option>
                    <option value="传统渠道型">传统渠道型</option>
                    <option value="网络渠道型">网络渠道型</option>
                    <option value="业务代理型">业务代理型</option>
                    <option value="渠道代理型">渠道代理型</option>
                    <option value="营销资源型">营销资源型</option>
                    <option value="产品型">产品型</option>
                </select>
            </td>
        </tr>
        <tr>
            <td height="30" align="right"><strong>方案附件：</strong></td>
            <td align="left">
                <%--<input name="attachment" type="file" id="attachment">--%>

                <a href="/mb100/plan/toDownload2.action"><strong>文件下载</strong></a></td>
        </tr>
        <c:forEach items="${coComUser.coPtnrInfs}" var="infos"
                   varStatus="status">
            <input type="hidden" name="ptnrIdSlct" value="${infos.spId}">
        </c:forEach>
        <tr>
            <td height="35" colspan="2" align="center">
                <input type="submit" name="button" id="button" value="提   交">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
                <c:forEach items="${coComUser.coPtnrInfs}" var="infos"
                           varStatus="status">
                    <a href="/xuanyanapply.action?schemaId=${infos.spId}"> 选验申请列表</a>
                </c:forEach></strong></td>
        </tr>
    </table>
    <p>&nbsp;</p>
</form>
<label></label>
</body>
</html>
