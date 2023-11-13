<%-- 
    Document   : addproduct
    Created on : 10-nov-2023, 15:22:50
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar productos</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        
    </head>
    <body style="margin: 0; height: 100vh; padding: 0;">

        <div class="container">
            
            
            <div class="row justify-content-center align-items-center" style="margin-top: 120px;">

            
                        <div class="card p-4" style="width: 40rem;">

                            <h3 class="text-center text-info">Nuevo Producto</h3>
                            <hr></hr>

                            <form id="add-product" action="addproduct.jsp" method="post">
                                

                                <div class="form-group">
                                    <label for="title" class="text-info">Título:</label><br>
                                    <input type="text" name="title" id="title" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="descrip" class="text-info">Descripción:</label><br>
                                    <input type="text" name="descrip" id="descrip" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="cantidad" class="text-info">Cantidad:</label><br>
                                    <input type="text" name="cantidad" id="cantidad" class="form-control">
                                </div>                                

                                <div class="form-group">
                                    <label for="precio" class="text-info">Precio:</label><br>
                                    <input type="text" name="precio" id="precio" class="form-control">
                                </div>                                

                                <div class="form-group">
                                    <label for="image" class="text-info">Imagen:</label><br>
                                    <input type="text" name="image" id="image" class="form-control">
                                </div>                                
                                
                                <div class="form-group d-flex flex-roe pt-4 justify-content-center">
                                    <input type="submit" name="submit" class="btn btn-primary btn-md" value="Guardar">     
                                     <a href="/WebApplication1/home.jsp" class="btn btn-secondary ms-2">Regresar</a>  
                                </div>
                                
                                
                            </form>            

                        </div>
                                   
                
            </div>
                
            
            
        </div>        

    </body>
</html>
