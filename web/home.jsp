<%-- 
    Document   : home
    Created on : Nov 1, 2023, 5:03:36 PM
    Author     : Miguel David
--%>
<%@ page language="java" import="sys.*, almacen.*, java.util.*" session="true" errorPage="error.jsp" pageEncoding="UTF-8" contentType="text/html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>El Tornillo</title>
        <link rel="stylesheet" href="./css/bootstrap.css">    
    </head>
    <body>
        
<%
    

    User user = (User)session.getValue("user");
    Almacen al = new Almacen();
    List<Producto> list = al.list();
    
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
    

    if  (user instanceof Customer) { %>    
        <div class="container pt-4 pb-4">
            
            <div class='d-flex justify-content-between pt-4'>
                <h3>Tienda El Tornillo</h3>
                
                <button type="button" class="btn btn-primary">
                    <svg width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                      <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                    </svg>                

                    Carro de Compra <span class="badge bg-danger">4</span>
                </button>
            </div>
                      
            
            <div class="container pt-4">

                <div class='row pb-2'>
              
                    <%
                        for (int i = 0; i < list.size(); i++) {
                    %>
                    
                    <div class='col-md-3 pb-4'>
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="Imagenes/<%= list.get(i).getImage() %>" width="15rem" height="150rem">
                          <div class="card-body d-flex flex-column">
                            <h5 class="card-title"><%= list.get(i).getTitle() %></h5>
                            <p class="card-text"><%= list.get(i).getDescrip() %></p>
                            
                            <strong class="w-100 text-center p-4">$ <%= list.get(i).getPrecio() %> </strong>
                            
                            <a href="#" class="btn btn-primary">
                                <svg width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                                </svg>                                              
                                Agregar al Carrito
                            </a>
                          </div>
                        </div>
                    </div>
                          
                    <% } %>


                </div>

                          


            </div>                               
        </div>
    <%}

    if (user instanceof Vendor) {  %> 
    
        <div class="container">
            <div class='d-flex justify-content-between pt-4'>
                <h3>Almacen de Productos</h3>
                <a href="/WebApplication1/frmAddProduct.jsp" class="btn btn-primary">Adicionar Producto</a>
            </div>

            <table class="table table-hover">
              <thead>
                <tr>
                  <th scope="col">ID</th>
                  <th scope="col">Nombre</th>
                  <th scope="col">Descripcion</th>
                  <th scope="col">Cantidad</th>
                  <th scope="col">Precio</th>
                  <th scope="col">Imagen</th>
                  <th colspan="2" scope="col">Acciones</th>
                </tr>
              </thead>
              <tbody>

                    <%
                        for (int i = 0; i < list.size(); i++) {
                    %>
                            <tr style="vertical-align: middle">
                                <td><%= list.get(i).getId() %></td> 
                                <td><%= list.get(i).getTitle() %></td> 
                                <td><%= list.get(i).getDescrip() %></td> 
                                <td style="text-align: center"><%= list.get(i).getCantidad() %></td> 
                                <td style="text-align: right"><%= list.get(i).getPrecio() %></td> 
                                <td style="text-align: center"><img border="0" src="Imagenes/<%= list.get(i).getImage() %>"  width="40" height="40"></td> 
                               <td class="d-flex pt-3 pb-3">
                                    <a href="#" class="btn btn-success">Editar</a>
                                    <a href="#" class="btn btn-danger ms-2">Eliminar</a>
                               </td>
                            </tr>      
                    <%  }

        } %>        

                </tbody>
            </table> 
        
        <div style="text-align: center">
            <a href="/WebApplication1/index.jsp" class="btn btn-secondary">Regresar</a>            
        </div>
        

        
        </div>
        
        
    </body>
</html>
