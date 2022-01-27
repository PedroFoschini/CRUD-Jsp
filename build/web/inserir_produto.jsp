<%-- 
    Document   : inserir_produto
    Created on : 22/01/2022, 11:14:04
    Author     : Pedro Fuschino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>

<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TCS Petshop</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>

<%
    Produto produto = new Produto();
    DAOProduto daoProduto = new DAOProduto();
    
    try{
        
        produto.setNomeProduto(request.getParameter("nomeProduto"));
        produto.setQtdProduto(Integer.parseInt(request.getParameter("qtdProduto")));
        
        daoProduto.inserirProduto(produto);
        
        out.print("<h1>Produto cadastrado com sucesso!</h1>");
        out.print("<br>");
        out.print("<h2>Você será redirecionado à página inicial!</h2>");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    } catch(Exception e){
        throw new RuntimeException("Erro ao inserir produto: " + e);
    }





%>

</html>