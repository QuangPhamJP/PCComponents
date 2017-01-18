<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
	if(Session("username_admin") = "") then
		Response.redirect("Admin_Login.asp")
	else
		Session.abandon
		Response.redirect("Admin_Login.asp")
	end if
%>