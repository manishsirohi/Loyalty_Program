<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String ltel=request.getParameter("ltel");
String amount=request.getParameter("amount3");
String id =(String)session.getAttribute("id_no");




try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/loyal", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into landline(id_no,Landline_No,LL_amount,Date)values("+id+","+ltel+","+amount+",current_timestamp)");

RequestDispatcher dis= request.getRequestDispatcher("/pay.jsp");
dis.forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
