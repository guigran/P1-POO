<%@page import="javapkg.Disciplina" %>
<%@page import="java.util.Set" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>P1 POO INICIO</title>

    <!-- Bootstrap core CSS -->
    <link href="../../css/editor.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="album.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>

<body>

    <%@include file="menu.jspf" %>

    <main role="main">

        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading">Guilherme G. A Teodoro</h1>
                <p class="lead text-muted">RA:&nbsp;<span style="white-space:pre">	</span>1290481913050</p>
                <p class="lead text-muted">MATÉRIAS EM CURSO:&nbsp;<span style="white-space:pre">	</span><%
if (Disciplina.getList() !=null) 
{
out.print(Disciplina.getList().size());

}
%></p>
                <p>


                </p>
            </div>
        </section>

        <div class="album py-5 bg-light">
            <div class="container">

                <div class="row" >
                    <div class="col-md-4" style="text-align: center;">
                        <div  class="card mb-4 box-shadow">
                            <a href="https://github.com/guigran" target="_blank"><img style="height: 225px; width: 100%; display: block" src="https://www.flaticon.com/svg/static/icons/svg/25/25231.svg"></a>
                            <div class="card-body a">
                                <p class="card-text">Clique aqui e confira meu Github.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>










                </div>
            </div>
        </div>

    </main>

    <footer class="text-muted">
        <div class="container">

            <p>
                Guilherme Grandino Alves Teodoro - ADS Noturno - FATECPG - P1 Programação Orientada a Objetos<br>IDE: Netbeans 11.3 - Tomcat 9.0;
            </p>

        </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="../../js/vendor/popper.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/holderjs@2.9.4/holder.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    <svg xmlns="http://www.w3.org/2000/svg" width="348" height="225" viewBox="0 0 348 225" preserveAspectRatio="none" style="display: none; visibility: hidden; position: absolute; top: -100%; left: -100%;"><defs><style type="text/css"></style></defs><text x="0" y="17" style="font-weight:bold;font-size:17pt;font-family:Arial, Helvetica, Open Sans, sans-serif">Thumbnail</text></svg>

</body>
</html>