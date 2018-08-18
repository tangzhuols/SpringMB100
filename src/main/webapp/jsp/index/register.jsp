<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
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

    <title>My JSP 'register.jsp' starting page</title>

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
        .STYLE2 {
            font-size: 16px
        }

        .STYLE5 {
            color: #FF0000
        }

        .STYLE6 {
            font-size: 12px
        }

        .STYLE8 {
            color: #33CCFF
        }

        -->
    </style>
</head>
<script type="text/javascript">

    function check() {
        if (checkUserName() && checkPassword() && isEmail() && checkName() && checkall()) {
            return true;
        } else {
            return false;
        }
    }
    /**
     *验证用户帐号
     */
    function checkUserName() {
        var uname = document.getElementById("user_name").value;
        var uu = /^[\w]{3,12}$/;
        if (uu.test(uname)) {
            return true;
        }
        else {
            alert("用户帐号无效，长度为3---12位！！！");
            return false;
        }
    }
    /**
     *验证用户密码
     */
    function checkPassword() {
        var upass = document.getElementById("pass").value;
        var p = /^[\w]{3,12}$/;
        if (p.test(upass)) {
            return true;
        }
        else {
            alert("密码的长度为3---12位！！！");
            return false;
        }
    }
    /**
     *验证邮编地址
     */
    function isEmail() {
        var email = document.getElementById("email").value;
        var ee = /^[\w-]+@[\w-]+\.[a-z\.]{2,6}$/;
        if (ee.test(email)) {
            return true;
        }
        else {
            alert("邮箱地址格式有误！！！");
            return false;
        }
    }
    /**
     * 验证公司名称
     */
    function checkName() {
        var sname = document.all.nickname.value;
        if (sname != null) {
            return true;
        } else {
            alert("公司名称不能为空！！！");
            return false;

        }
    }

    /**
     *验证所有
     */
    function checkall() {
        var leixing = document.all.leixing.value;
        if (leixing != null) {
            return true;
        } else {
            alert("企业类型不能为空！！！");
            return false;
        }

        var leibie = document.all.leibie.value;
        if (leibie != null) {
            return true;
        } else {
            alert("资源类别不能为空！！！");
            return false;
        }

        var type = document.all.type.value;
        if (type != null) {
            return true;
        } else {
            alert("经营模式不能为空！！！");
            return false;
        }

        var datetime = document.all.datetime.value;
        if (datetime != null) {
            return true;
        } else {
            alert("成立时间不能为空！！！");
            return false;
        }

        var number = document.getElementById("number").value;
        var ee = /^\d{1,}$/;
        if (ee.test(number)) {
            return true;
        }
        else {
            alert("公司人数不能为空！！！");
            return false;
        }

        var reg_money = document.all.reg_money.value;
        if (reg_money != null) {
            return true;
        } else {
            alert("品牌名称不能为空！！！");
            return false;
        }

        var guanli = document.all.guanli.value;
        if (guanli != null) {
            return true;
        } else {
            alert("管理体系认证不能为空！！！");
            return false;
        }

        var shichang = document.all.shichang.value;
        if (shichang != null) {
            return true;
        } else {
            alert("主要市场不能为空！！！");
            return false;
        }

        var tel = document.getElementById("tel").value;
        var tt = /^\d{3,7}$/;
        if (tt.test(tel)) {
            return true;
        }
        else {
            alert("负责人电话至少3位，最多7位数！！！");
            return false;
        }

        var phone = document.getElementById("phone").value;
        var mm = /^\d{3,11}$/;
        if (mm.test(tel)) {
            return true;
        }
        else {
            alert("负责人手机至少3位，最多11位数！！！");
            return false;
        }
    }
</script>
<script type="text/javascript" src="/jsp/index/js/dt.js"></script>
<body bgcolor="#F9F9F9">

<form name="form1" method="post" action="/IndexEnroll" th:th:action="@{/IndexEnroll}" th:object="${coPtnrInf}"
      onSubmit="return check()">

    <img src="/jsp/index/images/1.gif" width="14" height="11">
    <span class="STYLE2">用户注册</span>
    <hr align="center" width="100%"
        style="border: 1px  dashed   #CCCCFF;">
    <table width="75%" align="center" border="0" cellpadding="0"
           cellspacing="0">
        <tbody>

        <tr>
            <td height="20" colspan="3" align="center" valign="middle"
                class="index-12at0 STYLE5 STYLE6">
                注意：带*的为必填部分
            </td>
        </tr>
        <tr>
            <td width="27%" height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                用户帐号：
            </td>
            <td width="26%">
                <input id="userName" name="userName" maxlength="16" th:field="*{username}"
                       class="aide" size="25" type="text"></td>
            <td class="index-12at0">
                <span id="SHOW_INF" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                用户密码：
            </td>
            <td><input id="userPwd" name="userPwd" class="aide" maxlength="16" th:field="*{userpwd}"
                       size="27" type="password"></td>
            <td class="index-12at0">
                <span style="color: red;">*</span></td>
        </tr>

        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                企业名称：
            </td>
            <td colspan="2" valign="middle" align="left"><input id="nickname" name="deptName" maxlength="50"
                                                                th:field="*{deptName}"
                                                                class="aide"
                                                                size="44" type="text">
                <span id="SHOW_INF_1" style="color:
red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                企业类型：
            </td>
            <td colspan="2" align="left">
                <input name="deptType" class="aide" size="44" type="text" th:field="*{deptType}">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                资源类别：
            </td>
            <td colspan="2" valign="middle" align="left"><span class="index-12at0" style="color: red;">
					      <label><span class="index-12at0" style="color: red;"><span class="index-12at0"
                                                                                     style="color: red;">
					      <select name="resType" class="STYLE6" id="leibie" th:field="*{resType}">
                            <option>渠道型</option>
                            <option>拓展代理型</option>
                            <option>支撑型</option>
                            <option>营销资源型</option>
                            <option>产品型</option>
                          </select>
					      </span></span></label>
				        *</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                经营模式：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="mgtMode" maxlength="30" class="aide" size="44" th:field="*{mgtMode}"
                       type=" text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                成立时间：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="crtDate" maxlength="25" readonly="readonly" th:field="*{crtDate}"
                       class=" aide" size="44" type="text"
                onClick="getDateString(this,oCalendarChs)">
                <img src="/jsp/index/images/date.gif" width="13" height="20">
                <font color="red" size="2">*</font></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                公司人数：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="peopNum" maxlength="10" class="aide" size="44" th:field="*{peopNum}"
                       type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                品牌名称：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="brandName" maxlength="10" class="aide" size="44" th:field="*{brandName}"
                       type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                管理体系认证：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="mngType" maxlength="10" class="aide" size="44" th:field="*{mngType}"
                       type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                主要市场：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="manMkt" maxlength="30" class="aide" size="44"  th:field="*{manMkt}"
                       type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                公司地址：
            </td>
            <td colspan="2" valign="middle" align="left">
							<span class="index-12at0" style="color: red;"> <input
                                    name="deptAddr" maxlength="30" class="aide" size="44"  th:field="*{deptAddr}"
                                    type="text"> *</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                法人：
            </td>
            <td colspan="2" valign="middle" align="left">
							<span class="index-12at0" style="color: red;"> <input  th:field="*{artPerson}"
                                    name="artPerson" maxlength="30" class="aide" size="44" type="text">
								<span class="index-12at0"
                                      style="color: red;">*</span>							</span></td>
        </tr>

        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                负责人姓名：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="principalName" maxlength="10" class="aide" size="44"  th:field="*{principalName}"
                       type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                负责人电话：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="principalTel" maxlength="30" class="aide" size="44"   th:field="*{principalTel}"
                       id="tel" type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                负责人手机：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="principalMtel" maxlength="25" class="aide" size="44"   th:field="*{principalMtel}"
                       id="phone" type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                营业执照号：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="businessNo" maxlength="25" class="aide" size="44"  th:field="*{businessNo}"
                       type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                注册地址：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="regAddr" maxlength="25" class="aide"  th:field="*{regAddr}"
                       size="44" type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                税务登记号：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="taxRegNo" maxlength="25" class="aide" size="44" th:field="*{taxRegNo}"
                       type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                企业简介：
            </td>
            <td colspan="2" valign="middle" align="left">
                <textarea name="deptBrief" cols="35" rows="2" class="aide" th:field="*{deptBrief}"></textarea>
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                信用等级：
            </td>
            <td colspan="2" valign="middle" align="left">
                <label>
                    <select name="creditLevel" size="1" class="STYLE6" th:field="*{creditLevel}">
                        <option> 紧密层级</option>
                        <option> 标准层级</option>
                        <option selected='selected'> 基本层级</option>
                    </select>
                </label>
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td height="23" align="right" valign="middle"
                class="index-12at0 STYLE6 STYLE8">
                邮件地址：
            </td>
            <td colspan="2" valign="middle" align="left">
                <input name="email1" id="email" maxlength="30" class="aide"  th:field="*{email}"
                       size="44" type="text">
                <span class="index-12at0" style="color: red;">*</span></td>
        </tr>
        <tr>
            <td colspan="3" class="index-12at0" valign="top" align="center"
                height="31">
                <table width="45%" align="center" border="0" cellpadding="0"
                       cellspacing="0">
                    <tbody>
                    <tr>
                        <td valign="middle" align="center">
                            <input type="image" src="/jsp/index/images/ti-01.gif"
                                   width="61" height="26"></td>
                        <td valign="middle" align="center">
                            <input type="image" src="/jsp/index/images/ti-02.gif"
                                   width="61" height="26"></td>
                    </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        </tbody>
    </table>
</form>
</body>
</html>
