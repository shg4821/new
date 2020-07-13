<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="jdbc.connection.ConnectionProvider"%>
<%@page import="com.mysql.cj.conf.ConnectionPropertiesTransform"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dbConnectTest.jsp</title>
</head>
<body>
<%
	try(Connection conn = ConnectionProvider.getConnection()){
		out.println("연결성공");
	} catch(Exception e){
		out.println("커넥션연결실패 : "+ e.getMessage());
	}
%>
</body>
</html>