<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>


<%
String id =request.getParameter("id");
try{
	 Connection con=ConnectionProvider.getCon();
	 Statement st= con.createStatement();
	 //Statement st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
	st.executeUpdate("delete from donor where id='"+id+"'");
	response.sendRedirect("editDeleteList.jsp?msg=delted");

}catch(Exception e){
	response.sendRedirect("editDeleteList.jsp?msg=invalid");

}



%>