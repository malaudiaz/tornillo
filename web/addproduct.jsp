<%-- 
    Document   : addproduct
    Created on : 10-nov-2023, 15:55:24
    Author     : migue
--%>

<%@ page language="java" import="java.util.*, almacen.*" errorPage="error.jsp" %>

<jsp:useBean id="producto" scope="page" class="almacen.Producto">
 <jsp:setProperty name="producto" property="*" />
</jsp:useBean>

<%=producto.valor()%>

<% 
        
//    String display = "home.jsp";
//    
//    if (!producto.add()) {
//         display = "frmAddProduct.jsp?m=0";   
//    }     
//
//    response.sendRedirect(display);

%>
