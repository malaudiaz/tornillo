<%@ page language="java" import="java.util.*, sys.*" errorPage="error.jsp" %>

<jsp:useBean id="register" scope="page" class="sys.Register">
 <jsp:setProperty name="register" property="*" />
</jsp:useBean>

<%=register.valor() %>

