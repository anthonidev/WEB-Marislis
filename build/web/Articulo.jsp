<%-- 
    Document   : Articulo
    Created on : Jul 13, 2021, 8:56:14 PM
    Author     : toni
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="c" %>


<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/estilos.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
        </script>
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet">
        <title>Articulo</title>

    </head>

    <body class=" ">
        <main class="container-fluid p-0">
            <jsp:include page="nav.jsp" />  
            <div class="row">
                <div class="col-12 my-5">
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-3 ">
                            <div class="accordion accordion-flush shadow  bg-body rounded border-1" id="accordionFlushExample">
                                <h1 class="text-primary my-5 text-center ">Articulo</h1>
                                <div class="accordion-item  ">
                                    <h2 class="accordion-header " id="flush-headingOne">
                                        <button class="accordion-button collapsed  " type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">Registrar Articulo</button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse   collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body bg-light ">
                                            <c:form action="ArticuloControl">

                                                <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                    <div class="col-12 col-md-7   ">
                                                        <label for="exampleInputEmail1" class="form-label text-dark">Codigo: </label>
                                                        <c:text property="cod" styleClass="form-control"/>

                                                    </div>
                                                    <div class="col-12 col-md-7 ">
                                                        <label for="exampleInputEmail1" class="form-label text-dark">Nombre: </label>
                                                        <c:text property="nom" styleClass="form-control"/>

                                                    </div>
                                                    <div class="col-12 col-md-7 ">
                                                        <label for="exampleInputEmail1" class="form-label text-dark">Precio: </label>
                                                        <c:text property="pre" styleClass="form-control"/>

                                                    </div>
                                                    <div class="col-12 col-md-7 ">
                                                        <label for="exampleInputEmail1" class="form-label text-dark">Cantidad: </label>
                                                        <c:text property="sto" styleClass="form-control"/>

                                                    </div>
                                                    <c:submit value="Grabar" property="acc" styleClass="btn btn btn-secondary w-75 m-3 btn-lg"/>

                                                </div>
                                            </c:form>

                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">Actualizar Articulo</button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body bg-light">
                                            <c:form action="ArticuloControl">

                                                <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                    <div class="col-12 col-md-7   ">
                                                        <label for="exampleInputEmail1" class="form-label text-dark">Codigo: </label>
                                                        <c:text property="cod" styleClass="form-control"/>

                                                    </div>

                                                    <div class="col-12 col-md-7 ">
                                                        <label for="exampleInputEmail1" class="form-label text-dark">Precio: </label>
                                                        <input name="pre" type="number" step="any" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required min="1">
                                                    </div>

                                                    <div class="col-12 col-md-7 ">
                                                        <label for="exampleInputEmail1" class="form-label text-dark">Cantidad: </label>
                                                        <input name="sto" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required min="1">
                                                    </div>

                                                    <input type="submit" class="btn btn btn-secondary w-75 m-3 btn-lg" name="acc" value="Actualizar">
                                                </div>
                                            </c:form>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">Eliminar Articulo</button>
                                    </h2>
                                    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body bg-light">
                                            <c:form action="ArticuloControl">
                                                <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                    <div class="col-12 col-md-7   ">
                                                        <label for="exampleInputEmail1" class="form-label text-dark">Codigo: </label>
                                                        <c:text property="cod" styleClass="form-control"/>
                                                    </div>
                                                    <c:submit value="Eliminar" property="acc" styleClass="btn btn btn-secondary w-75 m-3 btn-lg"/>
                                                </div>
                                            </c:form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-7">
                            <div class="container">
                                <h1 class="text-primary fw-bold text-center">Lista de Articulo</h1>
                                <div class="input-group mb-3">
                                    <form action="../ArticuloControl" method="post" class=" d-flex w-100">
                                        <div class="row w-100">
                                            <div class="col-6 ">
                                                <input type="text" class="form-control" required placeholder="Buscar articulo por codigo" name="cod" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                <input class="btn btn-secondary w-100" type="submit" id="button-addon2" name="acc" value="Buscar">
                                            </div>

                                            <div class="col-6" id="mostrar">
                                                <%    /*
                                                <table class="table table-light table-striped shadow  bg-body rounded border-1">
                                                    <% Object[] busA = (Object[]) session.getAttribute("busA");
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Codigo</th>
                                                            <th scope="col">Nombre</th>
                                                            <th scope="col">Precio</th>
                                                            <th scope="col">Cantidad</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <th scope="row">
                                                                <%=busA[0]
                                                            </th>
                                                            <td>
                                                                <%=busA[1]
                                                            </td>
                                                            <td>
                                                                <%=busA[2]
                                                            </td>
                                                            <td>
                                                                <%=busA[3]
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                     */%>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <% List lisA = (List) session.getAttribute("lisA");%>
                            <table class="table table-light table-striped shadow  bg-body rounded border-1">
                                <thead>
                                    <tr>
                                        <th scope="col">Codigo</th>
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Precio</th>
                                        <th scope="col">Cantidad</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < lisA.size(); i++) { %>
                                    <% Object[] f = (Object[]) lisA.get(i);%>
                                    <tr>
                                        <th scope="row">
                                            <%= f[0]%>
                                        </th>
                                        <td>
                                            <%= f[1]%>
                                        </td>
                                        <td>
                                            <%= f[2]%>
                                        </td>
                                        <td>
                                            <%= f[3]%>
                                        </td>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-dark text-white text-center text-lg-start ">
                <div class="container p-4">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                            <h5 class="text-uppercase"><img src="../img/logo.png" alt="" style="height: 80px;"></h5>
                            <p>
                                Nuestras tortas, son elaboradas bajo estrictas normas sanitarias y sobre todo con insumos calificados que permiten otorgarle a nuestro cliente lo mejor
                            </p>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase">Redes</h5>
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#!" class="text-white">facebook</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">instagram</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">youtube</a>
                                </li>
                                <li>
                                    <a href="#!" class="text-white">twiter</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                            <h5 class="text-uppercase mb-0">Contacto</h5>
                            <ul class="list-unstyled">
                                <li>
                                    <p>hello@maralis.pe</p>
                                </li>
                                <li>
                                    <p>+91 98765 43210</p>
                                </li>
                                <li>
                                    <p>Av. General Garzón 1611, Jesús María, Lima, Perú</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                    © 2021 maralis todos los derechos reservados
                </div>
            </footer>
        </main>
    </body>
</html>