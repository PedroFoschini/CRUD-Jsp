<%-- 
    Document   : excluir_produto
    Created on : 23/01/2022, 21:07:32
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
       
    try{
        Produto produto = new Produto();
        DAOProduto daoProduto = new DAOProduto();
        
        
        produto.setIdProduto(Integer.parseInt(request.getParameter("id")));
        produto.setAtivo((byte)0);
        
        daoProduto.updateAtivo((byte)produto.getAtivo(), produto.getIdProduto());
        
        out.print("<h1>Produto excluído com sucesso!</h1>");
        out.print("<br>");
        out.print("<h2>Você será redirecionado à página inicial!</h2>");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    } catch(Exception e){
        throw new RuntimeException("Erro ao executar excluir produto: " + e);
    }

%>

</html>