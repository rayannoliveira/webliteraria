<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%


String email= request.getParameter("email");

Usuario obju= new Usuario();
obju.setEmail(email);
DAOUsuario objdao= new DAOUsuario();
	objdao.apagarUsuario(obju);
	response.sendRedirect("index.jsp");


%>

</body>
</html>