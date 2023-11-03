<html>
<head>
    <title>El Tornillo</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/login.css">

</head>

<body>
    
    <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-4">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="login.jsp" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Usuario:</label><br>
                                <input type="text" name="username" id="username" class="form-control">
                            </div>
                            <div class="form-group pt-2">
                                <label for="password" class="text-info">Contrasena:</label><br>
                                <input type="text" name="password" id="password" class="form-control">
                            </div>

                           
                            <div class="form-group d-flex flex-column pt-4">
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Aceptar">                               
                            </div>
                            
                            <div class="d-flex flex-row-reverse pt-4 ">
                                <a class="ms-4" href="/WebApplication1/register.jsp" class="text-info">Registrase</a>

                                <div>
                                    <%
                                        String letra = request.getParameter("m");
                                        if (letra != null) { 
                                            %>
                                            <strong class="text-danger">Usuario o contraseña incorrecta</strong>
                                            <%
                                        }
                                    %>                                 
                                </div>
                                
                            </div>                                                           

                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>