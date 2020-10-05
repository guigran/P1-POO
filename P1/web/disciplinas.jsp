<%@page import="javapkg.Disciplina" %>
<%@page import="java.util.Set" %>
<%@page import= "java.util.ArrayList" %>


<%
    Disciplina disciplina = null;


        disciplina = (Disciplina) application.getAttribute("disciplinas");
   

    if (disciplina != null) {
        ArrayList<Disciplina> listD = disciplina.getList();
        ArrayList<Disciplina> newList = new ArrayList();
        int count = 0;
        for (int i = 0; i < disciplina.getList().size(); i++) {
            try {

                Float nota = Float.parseFloat(request.getParameter("nota" + i));

                Disciplina disci = listD.get(i);

                disci.setNota(nota);

                newList.add(disci);
                count++;

            } catch (Exception e) {

                continue;
            }
        }
        if (count == disciplina.getList().size()) {
            disciplina.setList(newList);
        }

        application.setAttribute("disciplinas", disciplina);

    }

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P1 POO DISCIPLINAS</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>
        <%@include file="menu.jspf" %>


        <form>
            <table class="table">
                <tr>
                    <th>Nome</th>
                    <th>Ementa</th>
                    <th>Ciclo</th>
                    <th>Nota</th>
                    <th>Nova Nota</th>

                </tr>

                <%                  
                    for (int i = 0; i < disciplina.getList().size(); i++) {
                %>
                <tr>                   
                    <td> <% out.println(disciplina.getList().get(i).getNome()); %>   </td>
                    <td> <% out.println(disciplina.getList().get(i).getEmenta()); %> </td>
                    <td>  <% out.println(disciplina.getList().get(i).getCiclo()); %>  </td>
                    <td>  <% out.println(disciplina.getList().get(i).getNota()); %>  </td>
                    <td> <input type="text" name="<% out.print("nota" + i); %>" value="<%out.println(disciplina.getList().get(i).getNota()); %>"></td>
                </tr>
                <%
                    }
                %>




            </table>
            <input  type="submit" name="" value = "REGISTRAR" class="btn btn-primary ml-2"  style="border-color: rgb(43, 204, 107); background-color: rgb(46, 204, 107)" >
        </form>

 <footer class="text-muted">
        <div class="container">

            <p>
                Guilherme Grandino Alves Teodoro - ADS Noturno - FATECPG - P1 Programação Orientada a Objetos<br>IDE: Netbeans 11.3 - Tomcat 9.0;
            </p>

        </div>
    </footer>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
