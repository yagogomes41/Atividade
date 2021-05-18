<%@page import="Escola.Alunos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Google-Noto-Emoji-Travel-Places-42496-school.ico" type="image/x-icon" />
        <title>Faculdade terceiro ano</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        body {
            background-color:  #ccc;
        }

        #customizar {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: #4F4F4F;
            width: 100%;
        }

        #customizar td, #customizar th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customizar tr:nth-child(even){background-color: #4F4F4F;}

        #customizar tr:hover {background-color: #ddd;}

        #customizar th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #F0FFFF;
            color: black;
        }
    </style>
    <body>
        <h2 style="color:whitesmoke; text-align: center; ">Lista de alunos</h2>
        <h4 style="color:whitesmoke; text-align: center; ">Faculdade 2</h4>
        <a href="terceiraparte.jsp" target="_self" rel="external">Pagina 3</a>
        <a href="index.jsp" target="_self" rel="external">Inicial</a>
        <%
            List<Alunos> alunos = new ArrayList<Alunos>();
            alunos.add(new Alunos("Francisco", 1454, 10.0, 10.0, 10.0, 10.0));
              alunos.add(new Alunos("Neves guedes", 99987, 6.0, 6.0, 6.0, 6.0));
            alunos.add(new Alunos("Osvaldo ", 899456, 7.0, 7.0, 7.0, 7.0));
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
                       <td>Francisco</td>
                       <td>1454</td>
                        <td>10.0</td>
                       <td>10.0</td>
                       <td>10.0</td>
                       <td>10.0</td>
                   </tr>
                   <tr>
                       <td>Neves guedes</td>
                       <td>99987</td>
                       <td>6.0</td>
                       <td>6.0</td>
                       <td>6.0</td>
                       <td>6.0</td>
                   </tr>
                   <tr>
                       <td>Osvaldo</td>
                       <td>899456</td>
                       <td>7.0</td>
                       <td>7.0</td>
                       <td>7.0</td>
                       <td>7.0</td>
                   </tr>
               </table> -->
    </body>
</html>

