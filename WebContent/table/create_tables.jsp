<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String ql="create table users(name varchar(100),email varchar(100)primary key,mobilenumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500),city varchar(100), state varchar(100), country varchar(100))";
	System.out.print(ql);
	st.execute(ql);
	System.out.print("Table created");
	con.close();
}
catch(Exception e)
{
	System.out.print(e);	
}
%>