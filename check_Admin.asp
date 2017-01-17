<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!doctype html>
<html>
	<head>
    	<meta charset="utf-8">
 	</head>
</html>
<%
	if(Session("username_admin") = "") then
		dim check_account, role, username
		check_account = 0
		set cnn = Server.CreateObject("ADODB.Connection")
		cnn.open "PROVIDER=SQLOLEDB;DATA SOURCE=DESKTOP-N1S9BSF\HIKARU;DATABASE=PCComponents; INTEGRATED SECURITY = SSPI;"
		set recordSet_ = Server.CreateObject("ADODB.Recordset")
		recordSet_.open "select * from admin_", cnn
		do while recordSet_.EOF <> true
			for each x in recordSet_.fields
				if ((x.name = "username" and x.value = Request.Form("user_admin")) or (x.name = "password_" and x.value = Request.Form("pass_admin"))) then 
					check_account = check_account + 1
				end if
				if x.name = "username" then username = x.value end if
				if x.name = "role_" then role = x.value end if
			next
			if check_account = 2 then 
				Session("username_admin") = username
				recordSet_.close()
				cnn.close()
				Response.Redirect("admin.asp")
				exit do
			else 
				check_account = 0
				recordSet_.movenext
			end if

		loop
		if check_account = 0 then 
			recordSet_.close()
			cnn.close()
			Session("state_login_fail")= true
			Response.Redirect("admin_login.asp")
		end if
	else Response.Redirect("admin.asp")
	end if
%>

