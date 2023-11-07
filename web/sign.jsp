<%@ page language="java" import="sys.*, java.util.*" session="true" errorPage="error.jsp" pageEncoding="UTF-8" contentType="text/html" %>

<jsp:useBean id="register" scope="page" class="sys.Register">
 <jsp:setProperty name="register" property="*" />
</jsp:useBean>

<%=register.register() %>

