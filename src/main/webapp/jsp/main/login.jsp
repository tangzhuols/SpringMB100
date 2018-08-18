<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>管理中心登陆</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<LINK href="css/admin.css" type="text/css" rel="stylesheet">

	</head>

	<BODY onload=document.form1.username.focus();>

		<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%"
			bgColor=#002779 border=0>
			<TR>
				<TD align=center>
					<TABLE cellSpacing=0 cellPadding=0 width=468 border=0>
						<TR>
							<TD>
								<IMG height=23 src="images/login_1.jpg" width=468></TD>
						</TR>
						<TR>
							<TD>
								<IMG height=147 src="images/login_2.jpg" width=468></TD>
						</TR>
					</TABLE>
					<table width="468" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="16" bgcolor="#FFFFFF"><img src="images/login_3.jpg" width="16" height="122"></td>
                        <td width="436" align="center" bgcolor="#FFFFFF">
                        
      <form name="form1" method="post" action="/mb100/main/MainDengLu.action">
                          <table width="200" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="50">用户名：</td>
                              <td width="150"><input type="text" name="adminName"
							  style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP:  
#000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER- 
BOTTOM: #000000 1px solid"></td>
                            </tr>
                            <tr>
                              <td>口 &nbsp;&nbsp;令：</td>
                              <td><input type="password" name="adminPwd"
							  style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP:  
#000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER- 
BOTTOM: #000000 1px solid"></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td><input type="image" name="imageField" src="images/bt_login.gif"></td>
                            </tr>
                          </table>
               </form>

                        </td>
                        <td width="16" bgcolor="#FFFFFF">
                        <img src="images/login_4.jpg" width="16" height="122"></td>
                      </tr>
                    </table>
					<table width="200" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<img src="images/login_5.jpg" width="468" height="16"></td>
						</tr>
					</table>
			</TR>

		</TABLE>


	</BODY>
</html>
