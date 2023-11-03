<%-- 
    Document   : register
    Created on : 02-nov-2023, 17:56:56
    Author     : Migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>El Tornillo - Registro de Usuario</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <link rel="stylesheet" href="./css/login.css">    
    </head>
    <body>

        <div id="register">
            <div class="container">
                <div id="register-row" class="row justify-content-center align-items-center">
                    <div id="register-column" class="col-md-4">
                        
                        <div id="register-box" class="col-md-12 p-4" style="margin-top: 120px; background: #EAEAEA;">
                            
                            <form id="register-form" class="form" action="sign.jsp" method="post">
                                <h3 class="text-center text-info">Registrase</h3>
                                <div class="form-group">
                                    <label for="firtsname" class="text-info">Nombre:</label><br>
                                    <input type="text" name="firtsname" id="firtsname" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="lastname" class="text-info">Apellidos:</label><br>
                                    <input type="text" name="lastname" id="lastname" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="phone" class="text-info">Telef.</label><br>
                                    <input type="text" name="phone" id="phone" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="email" class="text-info">Telef.</label><br>
                                    <input type="email" name="email" id="email" class="form-control">
                                </div>
                                <div class="form-group pt-2">
                                    <label for="password" class="text-info">Contrasena:</label><br>
                                    <input type="text" name="password" id="password" class="form-control">
                                </div>
                                <div class="form-group pt-2">
                                    <label for="role" class="text-info">Rol:</label><br>
                                    <select class="form-select" aria-label="Default select example">
                                      <option value="1">Comprador</option>
                                      <option value="2">Vendedor</option>
                                    </select>                                    
                                </div>


                                <div class="form-group d-flex flex-column pt-4">
                                    <input type="submit" name="submit" class="btn btn-info btn-md" value="Aceptar">                               
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
