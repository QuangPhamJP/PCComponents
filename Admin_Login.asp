<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="cache-control" content="no-cache">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" href="css/style.css"/>
<script>
		var check = 0;
		function redirect_Back()
		{
			window.location = "http://localhost/PCComponents";
		}
		function check_cookie(){
				check++;
				if(!document.cookie){
					if(check == 1){
						$('.wrap').append("<div id=turn_off_cookie><p>Yêu cầu bật cookie</p></div>");
						$('#turn_off_cookie').css({"background-color":"#ffdb99", "text-align":"center"
							, "margin-top":"10px"});
					}	
					return false;
				}
				else
					return true;
		}
		history.forward();
		$(document).ready(function(){
			$('#no_login').css({"background-color":"#ffdb99", "text-align":"center"
				, "margin-top":"10px"});	
			check_cookie();
		});
</script>
<title>Admin Login</title>
</head>
<body>
	<div class="wrap">
		<h1>Login Admin</h1>
		<form action="check_Admin.asp" method="post">
			<table>
				<tr>
					<td><input type="text" name="user_admin" placeholder="Username" autocomplete="off"></td>
				</tr>
				<tr>
					<td><input type="password" name="pass_admin" placeholder="Password"></td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Login" onclick="return check_cookie();">
						<input type="button" value="Back" onClick="redirect_Back();">
					</td>
				</tr>
			</table>
		</form>      
	</div>
	<%
		if(Session("state_login_fail") = true) then
			Response.write("<script>$('.wrap').append('<div id=no_login><p>Bạn đăng nhập chưa đúng</p></div>')</script>")
			Session("state_login_fail") = ""
		elseif(Session("username_admin") <> "") then
			Response.redirect("admin.asp")
		end if
	%>
</body>
</html>
