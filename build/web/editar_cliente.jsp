<%-- 
    Document   : editar_cliente
    Created on : 23/01/2022, 17:32:00
    Author     : Pedro Fuschino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        
    </head>
    
    <% 
      int id = Integer.parseInt(request.getParameter("id"));  
    %>
    <body>
        <h1>O que você gostaria de editar?</h1>
       
        <table border='1'>
            <tr>
                <th>ID</th>   
                <th>Nome Cliente</th>    
                <th>Email</th>   
                <th>Telefone</th>
            </tr>
            <tr>
                <td><% out.print(request.getParameter("id")); %></td>
                <td id="nomeTabela"><% out.print(request.getParameter("nome")); %></td>
                <td id="emailTabela"><% out.print(request.getParameter("email")); %></td>
                <td id="telefoneTabela"><% out.print(request.getParameter("telefone")); %></td>
            </tr>
        </table> <br>
        
        <form action="executar_editar_cliente.jsp" method="post">
            <% 
                out.print("<input type='hidden' name='id' value='" + (int)id + "'>"); 
            %>
            <label>Nome Cliente</label>
            <input type="text" name="nome">
            
            <label>Email</label> 
            <input type="email" name="email">
            
            <label>Telefone</label>
            <input type="text" name="telefone">
            <input type="submit">
        </form> 

        
        <br>
        
        <a href="consultar_cliente.jsp">Voltar</a>

    </body>
</html>
