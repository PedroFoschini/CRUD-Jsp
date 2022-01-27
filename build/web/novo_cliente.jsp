<%-- 
    Document   : novo_cliente
    Created on : 21/01/2022, 14:22:05
    Author     : Pedro Fuschino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de cliente - TCS Petshop</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Cadastro de cliente</h1>
        
        <form method="post" action="inserir_cliente.jsp">
            <label for="nomeCliente">Nome</label>
            <input type="text" name="nomeCliente" placeholder="Ex: Fulano da Silva">
            <label for="emailCliente">Email</label>
            <input type="email" name="emailCliente" placeholder="exemplo@tcs.com">
            <label for="telefone">Telefone</label>
            <input type="text" name="telefoneCliente" placeholder="(99) 9999-9999">
            <input type="submit" value="Cadastrar">
        </form>
        <br>
        
        <a href="index.jsp">Voltar à página inicial</a>
    </body>
</html>
