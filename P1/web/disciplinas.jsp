<%@page import="javapkg.Disciplina" %>
<%@page import="java.util.Set" %>
<%@page import= "java.util.ArrayList" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   String exceptionMsg = null;
   if (request.getParameter("cancelar") != null) {
      response.sendRedirect(request.getRequestURI());
   }

   if (request.getParameter("formUpdate") != null) {
      try {
         String nome = request.getParameter("nome");
         String nomeAntigo = request.getParameter("nomeAntigo");
         String ementa = request.getParameter("ementa");
         int ciclo = Integer.parseInt(request.getParameter("ciclo"));
         Float nota = Float.parseFloat(request.getParameter("nota"));
         if (nota >= 0 && nota <= 10) {
            Disciplina.update(nomeAntigo, nome, ementa, ciclo, nota);
            response.sendRedirect(request.getRequestURI());
         } else {
            exceptionMsg = "Nota inválida";
         }
      } catch (Exception e) {
         exceptionMsg = e.getLocalizedMessage();
      }
   }
   if (request.getParameter("formDelete") != null) {
      try {
         String nome = request.getParameter("nome");

         Disciplina.delete(nome);
         response.sendRedirect(request.getRequestURI());
      } catch (Exception e) {
         exceptionMsg = e.getLocalizedMessage();
      }
   }

%>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>P1 POO DISCIPLINAS</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
   </head>
   <body>
      <%@include file="menu.jspf" %>

   <% if(request.getParameter("prepareUpdate") !=null ){ %>
      <h3>Alterar registros</h3>
      <form>
         <% String nome = request.getParameter("nome");
            String ementa = request.getParameter("ementa");
            int ciclo = Integer.parseInt(request.getParameter("ciclo"));
            Float nota = Float.parseFloat(request.getParameter("nota"));
         %>
         <input type="hidden" name="nomeAntigo" value="<%= nome%>"/>
         Nome: <input type="text" name="nome" value="<%= nome%>"/>
         Ementa: <input type="text" name="ementa" value="<%= ementa%>" />
         Ciclo: <input type="text" name="ciclo" id="ciclo" value="<%= ciclo%>"/>
         Nota: <input type="text" name="nota" id="nota" value="<%= nota%>" />
         <input type="submit" name="formUpdate" value="inserir">
         <input type="submit" name="cancelar" value="Cancelar">
      </form>
      <%}else if(request.getParameter("prepareDelete") !=null ){ %>
      <form>
         <% String nome = request.getParameter("nome");%>
         <input type="hidden" name="nome" value="<%= nome%>"/>
         Excluir o registro <b><%= nome%></b>?
         <input type="submit" name="formDelete" value="excluir">
         <input type="submit" name="cancelar" value="Cancelar">
      </form>else{%>
      <form method="post">
         <input type="submit" name="prepareInsert" value="inserir"/> 
      </form>
      <%}%>


      <form>
         <table class="table">
            <tr>
               <th>Nome</th>
               <th>Ementa</th>
               <th>Ciclo</th>
               <th>Nota</th>
               <th>Nova Nota</th>

            </tr>

            <%                   for (int i = 0;

               i< Disciplina.getList ()
               .size(); i

               
                  ++) {
            %>
            <tr>                   
               <td> <% out.println(Disciplina.getList().get(i).getNome()); %>   </td>
               <td> <% out.println(Disciplina.getList().get(i).getEmenta()); %> </td>
               <td>  <% out.println(Disciplina.getList().get(i).getCiclo()); %>  </td>
               <td>  <% out.println(Disciplina.getList().get(i).getNota());%>  </td>
            <input type="hidden" name="nome" value="<%= Disciplina.getList().get(i).getNome()%>"/>
            <input type="hidden" name="ementa" value="<%= Disciplina.getList().get(i).getEmenta()%>"/>
            <input type="hidden" name="ciclo" value="<%= Disciplina.getList().get(i).getCiclo()%>"/>
            <input type="hidden" name="nota" value="<%= Disciplina.getList().get(i).getNota()%>"/>
            <td>  <button class="alterar" name="prepareUpdate">Alterar</button>
               <button class="deletar" name="prepareDelete">Deletar</button></td>
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
