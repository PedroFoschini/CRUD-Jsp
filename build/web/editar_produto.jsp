<%-- 
    Document   : editar_produto
    Created on : 23/01/2022, 21:12:41
    Author     : Pedro Fuschino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar produto</title>
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
                <th>Nome Produto</th>    
                <th>Quantidade</th>                   
            </tr>
            <tr>
                <td><% out.print(request.getParameter("id")); %></td>
                <td><% out.print(request.getParameter("nome")); %></td>
                <td><% out.print(request.getParameter("qtd")); %></td>                
            </tr>
        </table> <br>
        
        <form action="executar_editar_produto.jsp" method="post">
            <% 
                out.print("<input type='hidden' name='id' value='" + (int)id + "'>"); 
            %>
            <label>Nome Produto</label>
            <input type="text" name="nome">
            <input type="submit">
        </form>
        <form action="executar_editar_produto.jsp" method="post">
            <% 
                out.print("<input type='hidden' name='id' value='" + (int)id + "'>"); 
            %>
            <label>Quantidade</label>
            <input type="number" name="qtd" min='0'>
            <input type="submit">
        </form>

        
        <br>
        
        <a href="consultar_produto.jsp">Voltar</a>      
        
    </body>
</html>
