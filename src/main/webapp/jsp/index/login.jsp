<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";

%>
<script type="text/javascript">
    //用来退出的
    function End() {

        document.location.href = "/ExctUser.action";
    }
</script>
<c:choose>
    <c:when test="${empty coComUser}">
        <!-- 用户名空 -->
        <form name="form1" method="post" action="/EnterAdmin" th:action="@{/EnterAdmin}" th:object="${coComUser}">
            <script type="text/javascript">
                function register() {
                    document.location.href = '/jsp/index/zhuce.jsp';
                }

                function aaa() {
                    var user = document.getElementById("usrId_a").value;
                    if (user == 0) {
                        return false;
                    }
                }

            </script>
            <table width="100%" height="172" border="0" cellpadding="0"
                   cellspacing="2" class="context">
                <tr>
                    <td height="40" colspan="2" align="center">
                        游客
                        <br>
                            <%--<input type="hidden" name="userId_a" id="usrId_a" value="0"/>--%>
                        <hr align="center" width="90%"
                            style="border: 1px  dashed   #CCCCFF;">
                    </td>
                </tr>
                <tr>
                    <td width="40%" height="27" align="center">
                        账&nbsp;&nbsp;&nbsp;&nbsp;号 :
                    </td>
                    <td width="60%" align="left">
                        <input name="userName" type="text" size="15" class="input1" th:field="*{userName}"
                               onmouseover="  hg(this,true) ;" onmouseout="  hg(this,false) ; ">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="center">
                        密&nbsp;&nbsp;&nbsp;&nbsp;码 :
                    </td>
                    <td align="left">
                        <input name="userPwd" type="password" size="15" th:field="*{userPwd}"
                               onmouseover="  hg(this,true) ;" onmouseout="  hg(this,false) ; "
                               class="input1">
                    </td>
                </tr>
                    <%--<tr>--%>
                    <%--<td height="27" align="center">--%>
                    <%--验证码 :--%>
                    <%--</td>--%>
                    <%--<td align="left" valign="middle"> <input name="checkcode" type="text" size="5" maxlength="4"--%>
                    <%--onmouseover="  hg(this,true) ;" onmouseout="  hg(this,false) ; "--%>
                    <%--class="input2">--%>
                    <%--<img name="checkcode" src="<%=path %>/checkcode.jpg"width="60"height="25"alt="点击刷新"onmouseover="this.style.cursor='hand'  ;  "onmouseout="this.style.cursor='default' "alt="点击更换验证码"onclick="this.src='<%=path%>/checkcode.jpg?e='+new Date().getTime() "/>--%>
                    <%--</td>--%>
                    <%--</tr>--%>
                <tr>
                    <td height="40" colspan="2" align="center">
                        <input type="submit" name="Submit" value="登录" class="/jsp/images/loginbt"
                               onmouseover="this.style.cursor='hand' ; hg(this,true) ;"
                               onmouseout="this.style.cursor='default'; hg(this,false) ; ">
                        <input type="button" name="Submit2" value="注册" class="zhucebt"
                               onmouseover="this.style.cursor='hand';hg(this,true) ;"
                               onmouseout="this.style.cursor='default';hg(this,false) ;"
                               onclick="register()">
                    </td>
                </tr>
            </table>
        </form>
    </c:when>
    <c:otherwise>
        <form name="form1" method="post" action="">
            <table width="100%" height="150" border="0" cellpadding="0"
                   cellspacing="2" class="context">
                <tr>
                    <td height="40" colspan="2" align="center">
                        企业名称：
                        <c:forEach items="${coComUser.coPtnrInfs}" var="infos" varStatus="status">
                            ${infos.deptName }
                        </c:forEach>
                    </td>
                </tr>
                <tr>

                    <td height="40" colspan="2" align="center">
                        登陆账号： ${coComUser.userName }
                        <input type="hidden" name="userId_a" id="usrId_a" value=" ${comUser.userId }"/>
                    </td>
                </tr>
                <tr>
                    <td height="40" colspan="2" align="center">
                        <input type="button" name="Submit2" value="退出" class="down"

                               onclick="End()">
                    </td>
                </tr>
            </table>
        </form>
    </c:otherwise>
</c:choose>

