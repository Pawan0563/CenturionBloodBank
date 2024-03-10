<%
String username= request.getParameter("username");
String password =request.getParameter("password");
if("Pawan".equals(username)&&"Pawan".equals(password)){
	response.sendRedirect("home.jsp");
}
else{
	response.sendRedirect("adminLogin.jsp?msg=invalid");
}

%>