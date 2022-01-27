<%-- 
    Document   : excluir_cliente
    Created on : 22/01/2022, 16:34:45
    Author     : Pedro Fuschino
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>

<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TCS Petshop</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>

<%
       
    try{
        Cliente cliente = new Cliente();
        DAOCliente daoCliente = new DAOCliente();

        cliente.setIdCliente(Integer.parseInt(request.getParameter("id")));
        cliente.setAtivo((byte)0);
        
        daoCliente.updateAtivo((byte)cliente.getAtivo(), cliente.getIdCliente());
        
        out.print("<h1>Cliente excluído com sucesso!</h1>");
        out.print("<br>");
        out.print("<h2>Você será redirecionado à página inicial!</h2>");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    } catch(Exception e){
        throw new RuntimeException("Erro ao executar excluir cliente: " + e);
    }

%>

</html>