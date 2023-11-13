<%@ page language="java" import="java.util.*, sys.*" errorPage="error.jsp" %>

<jsp:useBean id="register" scope="page" class="sys.Register">
 <jsp:setProperty name="register" property="*" />
</jsp:useBean>


<% 
    
    
    String display = "register.jsp?m=1";
    
    if (!register.save()) {
         display = "register.jsp?m=0";   
    } else {
         display = "login.jsp?m=1";           
    }     

    response.sendRedirect(display);
%>