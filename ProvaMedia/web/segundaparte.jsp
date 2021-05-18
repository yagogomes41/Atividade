<%@page import="Escola.Alunos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
        <title>Faculdade alunos</title>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>


        <h2 style="color:#fff; text-align: center; ">Todos alunos</h2>
          <h4 style="color:#fff; text-align: center; ">Faculdade Classe</h4>
        <a href="terceiraparte.jsp" target="_self" rel="external">Parte 3</a>
          <a href="index.jsp" target="_self" rel="external">Inicial</a>
       <%
            List<Alunos> alunos = new ArrayList<Alunos>();

            alunos.add(new Alunos("Silvio", 11122, 10.0, 10.0, 10.0, 10.0));
              alunos.add(new Alunos("Claudio Santos", 323223, 8.0, 8.0, 8.0, 8.0));

            out.println("<table id='mod'>");
            out.println("<tr>"
                    + "<th>Nome do Aluno</th>"
                    + "<th>RA</th>"
                    + "<th>Nota 1</th>"
                    + "<th>Nota 2</th>"
                    + "<th>Nota 3</th>"
                    + "<th>Nota 4</th>"
                    + "<th>Média</th>"
                    + "</tr>");
            for (Alunos aluno : alunos) {
                aluno.setMedia(aluno.getNota1(), aluno.getNota2(), aluno.getNota3(), aluno.getNota4());
                out.println("<tr>"
                        + "<td>" + aluno.getNome() + "</td>"
                        + "<td>" + aluno.getRA() + "</td>"
                        + "<td>" + aluno.getNota1() + "</td>"
                        + "<td>" + aluno.getNota2() + "</td>"
                        + "<td>" + aluno.getNota3() + "</td>"
                        + "<td>" + aluno.getNota4() + "</td>"
                        + "<td>" + aluno.getMedia() + "</td"
                        + "</tr>");
            }
            out.println("</table>");

        %>
        <!--       <table id="mod">
                   <tr>
                       <th>Nome do Aluno</th>
                       <th>RA</th>
                       <th>Nota 1</th>
                       <th>Nota 2</th>
                       <th>Nota 3</th>
                       <th>Nota 4</th>
                   </tr>
                   <tr>
                        <td>Claudio Santos</td>
                           <td>323223</td>
                       <td>8.0</td>
                       <td>8.0</td>
                       <td>8.0</td>
                        <td>8.0</td>
                   </tr>
                   <tr>
                       <td>Silvio</td>
                       <td>11122</td>
                       <td>10.0</td>
                       <td>10.0</td>
                       <td>10.0</td>
                       <td>10.0</td>
                   </tr>
               </table> -->


    <style>
        body {
            background-color:  #ccc;
        }



        #mod {
            border-collapse: #17166e;
            width: 100%;
        }

        #mod td, #mod th {
            border: 1px solid #ddd;
            padding: 8px;
        }



          #mod tr:nth-child(even){background-color: #17166e;}

        #mod tr:hover {background-color: #626262;}

        #mod th {

            text-align: center;
            background-color: #F0FFFF;
            color: #000;
            padding-top: 6px;
            padding-bottom: 6px;
        }
    </style>
    </body>
</html>

