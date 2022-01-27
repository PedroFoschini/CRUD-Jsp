<%-- 
    Document   : novo_produto
    Created on : 21/01/2022, 14:22:37
    Author     : Pedro Fuschino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de produto - TCS Petshop</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Cadastro de produto</h1>
        
        <form method='post' action='inserir_produto.jsp'>
            <label for='nomeProduto'>Nome</label>
            <input type='text' name='nomeProduto' placeholder='Ex: Petisco para gatos'>
            <label for='qtdProduto'>Quantidade</label>
            <input type='number' name='qtdProduto' placeholder='Ex: 10' min='0'>
            <input type='submit' value='Cadastrar'>           
        </form>
        <br>
        
        <a href="index.jsp">Voltar à página inicial</a>
    </body>
</html>
