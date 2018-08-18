<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP XiuGaiZiZhi.jsp' starting page</title>
    
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
.STYLE6 {font-size: 12px}
.STYLE8 {color: #33CCFF}
.STYLE11 {color: #FF0000}
.STYLE12 {color: #0000FF}
-->
    </style>     
</head>
  <script type="text/javascript">
  /**
  *验证用户帐号
  */
    function checkUserName()
    {
        var uname=document.getElementById("user_name").value;
        var uu=/^[\w]{4,16}$/; 
        if(uu.test(uname)){
          return true;
        }
        else{
           alert("用户帐号无效");
           return false;
        }
	}
	/**
	*验证用户密码
	*/
	function checkPassword()
	{
	   var upass=document.getElementById("password").value;
	   var p=/^[\w]{6,16}$/; 
	   if(p.test(upass)){
            return true;
       }
        else{
             alert("密码有误");
             return false;
        }
	}
	/**
	*验证邮编地址
	*/
	function isEmail(str) 
	{
	   var email=document.getElementById("email").value;
       var ee=/^[\w-]+@[\w-]+\.[a-z\.]{2,6}$/;
       if(ee.test(email)){
            return true;
        }
        else{
            alert("邮箱地址格式有误");
            return false;
        }
    }
    /**
    * 验证公司名称
    */
    function checkName()
    {
       var sname=document.all.nickname.value;
       if(sname!=null)
       {
           return true;
       }else{
          alert("公司名称不能为空！！！");
          return false;
         
       }
    }
  </script> 
  <script type="text/javascript" src="<%=path %>/js/dt.js"></script>
  <body  bgcolor="#F9F9F9">
  <form name="form1" method="post" action="#">
    <table width="100%" border="0" align="center" cellspacing="1">
      <tr>
        <td><TABLE width="80%" border="0" cellpadding="0" cellspacing="0">
          <TBODY>
            <TR>
              <TD width="9%" align="center" valign="middle"><img src="/jsp/index/images/bg_point1.gif" width="4" height="7"></TD>
              <TD width="91%" class="index-12ahuase STYLE11">资料修改</TD>
            </TR>
          </TBODY>
        </TABLE></td>
      </tr>
      <tr>
        <td><TABLE width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
          <TBODY>
            <TR>
              <TD align="center" valign="middle" bgcolor="#f2f2f2" class="index-12ahuase STYLE11" id="ZzsbMenu_0">修改资料</TD>
              <TD align="center" valign="middle" bgcolor="#f2f2f2" class="index-12dezi STYLE12" id="ZzsbMenu_1">修改密码</TD>
            </TR>
          </TBODY>
        </TABLE></td>
      </tr>
      <tr>
        <td><img src="/jsp/index/images/in56.jpg" width="410" height="24"></td>
      </tr>
      <tr>
        <td><table width="75%" align="center" 
border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td width="26%" height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">企业名称：</td>
              <td width="52%" colspan="2" align="left" valign="middle">
              <input type="hidden" name="spId" value="${ff.spId}">
              <input type="text" name=deptName value="${ff.deptName}" size="44">
              
              <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">企业类型：</td>
              <td colspan="2" align="left">
              <input name="deptType" class="aide" size="44" type="text" value="${ff.deptType }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">资源类别：</td>
              <td colspan="2" valign="middle" align="left">
                  <select name="resType" size="1" class="STYLE6">
                  <option value="渠道型"  ${ff.resType=="渠道型"?"selected":"" }>渠道型</option>
                  <option value="拓展代理型"  ${ff.resType=="拓展代理型"?"selected":"" }>拓展代理型</option>
                  <option value="支撑型"  ${ff.resType=="支撑型"?"selected":"" }>支撑型</option>
                  <option value="营销资源型"  ${ff.resType=="营销资源型"?"selected":"" }>营销资源型</option>
                  <option value="产品型"  ${ff.resType=="产品型"?"selected":"" }>产品型</option>
                </select>
                </label>
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">经营模式；</td>
              <td colspan="2" valign="middle" align="left">
              <input name="mgtMode" maxlength="30" class="aide" size="44" type="text" value="${ff.mgtMode }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">成立时间：</td>
              <td colspan="2" valign="middle" align="left">
              <% SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd"); %>
              <input name="crtDate" value="${ff.crtDate }" 
              maxlength="25" readonly="readonly" class="aide" size="44" type="text" 
              onClick="getDateString(this,oCalendarChs)">
                  <img src="/jsp/index/images/date.gif" width="13" height="20">
                  <font color="red" size="2">*</font></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">公司人数：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="peopNum" maxlength="10" class="aide" size="44" type="text" value="${ff.peopNum }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">品牌名称：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="brandName" maxlength="10" class="aide" size="44" type="text" value="${ff.brandName }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">管理体系认证：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="mngType" maxlength="10" class="aide" size="44" type="text" value="${ff.mngType }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">主要市场：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="manMkt" maxlength="30" class="aide" size="44" type="text" value="${ff.manMkt }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">公司地址：</td>
              <td colspan="2" valign="middle" align="left">
              <span class="index-12at0" style="color: red;">
                <input name="deptAddr" maxlength="30" class="aide" size="44" type="text" value="${ff.deptAddr }">
                *</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">法人：</td>
              <td colspan="2" valign="middle" align="left"><span class="index-12at0" style="color: red;">
                <input name="artPerson" maxlength="30" class="aide" size="44" type="text" value="${ff.artPerson }">
                <span class="index-12at0" style="color: red;">*</span></span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">负责人姓名：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="principalName" maxlength="10" class="aide" size="44" type="text" value="${ff.principalName }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">负责人电话：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="principalTel" maxlength="30" class="aide" size="44" type="text" value="${ff.principalTel }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">负责人手机：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="principalMtel" maxlength="25" class="aide" size="44" type="text" value="${ff.principalMtel }">
               <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">营业执照号：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="businessNo" maxlength="25" class="aide" size="44" type="text" value="${ff.businessNo }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">注册地址：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="regAddr" maxlength="25" class="aide" size="44"  type="text" value="${ff.regAddr }">
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">税务登记号：</td>
              <td colspan="2" valign="middle" align="left">
              <input name="taxRegNo" maxlength="25" class="aide" size="44" type="text" value="${ff.taxRegNo }">
                <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">企业简介：</td>
              <td colspan="2" valign="middle" align="left">
              <textarea name="deptBrief" cols="35" rows="2" class="aide" >${ff.deptBrief }</textarea>
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">合作层级：</td>
              <td colspan="2" valign="middle" align="left"><label>
                <select name="coLevel" size="1" class="STYLE6">
                  <option value="普通层" ${ff.coLevel=="普通层"?"selected":"" }>普通层</option>
                  <option value="核心层、良好级" ${ff.coLevel=="核心层、良好级"?"selected":"" }>核心层、良好级</option>
                  <option value="核心层、优秀级" ${ff.coLevel=="核心层、优秀级"?"selected":"" }>核心层、优秀级</option>
                </select>
                </label>
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td height="23" align="right" valign="middle" class="index-12at0 STYLE6 STYLE8">信用等级：</td>
              <td colspan="2" valign="middle" align="left"><label>
                <select name="creditLevel" size="1" class="STYLE6">
                  <option value="紧密层级" ${ff.creditLevel=="紧密层级"?"selected":"" }>紧密层级</option>
                  <option value="标准层级" ${ff.creditLevel=="标准层级"?"selected":"" }>标准层级</option>
                  <option value="基本层级" ${ff.creditLevel=="基本层级"?"selected":"" }>基本层级</option>
                </select>
                </label>
                  <span class="index-12at0" style="color: red;">*</span></td>
            </tr>
            <tr>
              <td colspan="3" class="index-12at0" valign="top" align="center" height="31">
              <input type="image" src="/jsp/index/images/czi-01.gif" width="61" height="26"></td>
            </tr>
          </tbody>
        </table></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </form>
  </body>
</html>
