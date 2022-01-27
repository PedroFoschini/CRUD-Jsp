<%-- 
    Document   : executar_editar_cliente
    Created on : 23/01/2022, 17:53:37
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
    Cliente cliente = new Cliente();
    DAOCliente daoCliente = new DAOCliente();
    
    cliente.setIdCliente(Integer.parseInt(request.getParameter("id")));
    cliente.setNome(request.getParameter("nome"));
    cliente.setEmail(request.getParameter("email"));
    cliente.setTelefone(request.getParameter("telefone"));
    
    try{
        
        if((cliente.getNome() != null) && (!cliente.getNome().isEmpty())){
            daoCliente.updateNome(cliente.getNome(), cliente.getIdCliente());
        }
        
        if((cliente.getEmail() != null) && (!cliente.getEmail().isEmpty())){
            daoCliente.updateEmail(cliente.getEmail(), cliente.getIdCliente());
        }
        
        if((cliente.getTelefone() != null) && (!cliente.getTelefone().isEmpty())){
            daoCliente.updateTelefone(cliente.getTelefone(), cliente.getIdCliente());
        }        
        
        out.print("<h1>Cliente editado com sucesso!</h1>");
        out.print("<br>");
        out.print("<h2>Você será redirecionado à página inicial</h2>");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    } catch(Exception e){
        throw new RuntimeException("Erro ao executar editar cliente: " + e);
    }

%>

</html>