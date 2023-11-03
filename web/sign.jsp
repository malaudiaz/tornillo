<%@ page language="java" import="java.util.*, sys.*" errorPage="error.jsp" %>

<jsp:useBean id="register" scope="page" class="sys.Login">
 <jsp:setProperty name="register" property="*" />
</jsp:useBean>

<jsp:useBean id="monitor" scope="application" class="java.util.HashMap" />


<%    
    String display = "index.jsp";


%>

<jsp:forward page="<%= display %>" />  
