<%-- 
    Document   : executar_editar_produto
    Created on : 23/01/2022, 21:17:56
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
    
    produto.setIdProduto(Integer.parseInt(request.getParameter("id")));
    produto.setNomeProduto(request.getParameter("nome"));
      
    
    try{
        
        if(produto.getNomeProduto() != null && produto.getNomeProduto() != ""){
            daoProduto.updateNome(produto.getNomeProduto(), produto.getIdProduto());
        }
        
            
    try{
        produto.setQtdProduto(Integer.parseInt(request.getParameter("qtd")));
        
        daoProduto.updateQtd(produto.getQtdProduto(), produto.getIdProduto());
        
        
    } catch(NumberFormatException e){
        System.out.print("Quantidade vazia");
    }              
        
        out.print("<h1>Produto editado com sucesso!</h1>");
        out.print("<br>");
        out.print("<h2>Você será redirecionado à página inicial</h2>");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    } catch(Exception e){
        throw new RuntimeException("Erro ao executar editar produto: " + e);
    }

%>

</html>