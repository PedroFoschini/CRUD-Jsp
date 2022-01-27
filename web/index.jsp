<%-- 
    Document   : index
    Created on : 21/01/2022, 14:03:05
    Author     : Pedro Fuschino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TCS Petshop</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Bem-vindo ao TCS Petshop!</h1>
        
        <div id="divCliente">
        <h2>Clientes:</h2>
        <a href="consultar_cliente.jsp" class="aIndex">Consultar cliente</a>
        <a href="novo_cliente.jsp" class="aIndex">Cadastrar cliente</a>
        
        </div>
        <div id="divProduto">
        <h2>Produtos:</h2>
        <a href="consultar_produto.jsp" class="aIndex">Consultar produto</a>
        <a href="novo_produto.jsp" class="aIndex">Cadastrar produto</a>
        
        </div>
    </body>
</html>
