<%-- 
    Document   : consultar_cliente
    Created on : 21/01/2022, 14:22:19
    Author     : Pedro Fuschino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOCliente"%>
<%@page import="MODEL.Cliente"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de cliente - TCS Petshop</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Consulta de cliente</h1>
        
        <form>
            <label>Informe o nome do cliente que deseja buscar:</label><br>
            <input type='text' name='nomeCliente' id="campoNome">
            <input type='submit' value='Buscar' id="botaoSubmit"><button onclick="zerar()">
                <script>
                    function zerar(){
                        let campo = document.getElementById(campoNome);
                        campo.value = "";
                        
                        let botao = document.getElementById(botaoSubmit);
                        botao.click();
                    }
                </script>Buscar todos</button>
            <br><br>
        </form>
        
<%        
        out.print("<table border='1'>");
        out.print("<tr>");
            out.print("<th>ID</th>");    
            out.print("<th>Nome Cliente</th>");    
            out.print("<th>Email</th>");    
            out.print("<th>Telefone</th>");    
            out.print("<th>Editar</th>");
            out.print("<th>Excluir</th>");
        out.print("</tr>");
        DAOCliente daoCliente = new DAOCliente();
        
        if(request.getParameter("nomeCliente") == "" || request.getParameter("nomeCliente") == null){
            
            ArrayList<Cliente> listaClientes = daoCliente.listarClientes();
        
            for(int i = 0; i < listaClientes.size(); i++){
                out.print("<tr><form method='post' action='editar_cliente.jsp'>");
                out.print("<input type='hidden' name='id' value='" + listaClientes.get(i).getIdCliente() + "'><td>" + listaClientes.get(i).getIdCliente() + "</td>");
                out.print("<input type='hidden' name='nome' value='" + listaClientes.get(i).getNome() + "'><td>" + listaClientes.get(i).getNome() + "</td>");
                out.print("<input type='hidden' name='email' value='" + listaClientes.get(i).getEmail() + "'><td>" + listaClientes.get(i).getEmail() + "</td>");
                out.print("<input type='hidden' name='telefone' value='" + listaClientes.get(i).getTelefone() + "'><td>" + listaClientes.get(i).getTelefone() + "</td>");
                out.print("<td><input type='submit' name='editar' value='Editar'></form></td>");                
                out.print("<td><form method='post' action='excluir_cliente.jsp'><input type='hidden' name='id' value='" + listaClientes.get(i).getIdCliente() + "'><input type='submit' name='Excluir' value='Excluir'></form></td>");
            out.print("</tr>");
            }
        } else{
            
            ArrayList<Cliente> listaClientes = daoCliente.listarClientesPorNome(request.getParameter("nomeCliente"));
        
            for(int i = 0; i < listaClientes.size(); i++){
                out.print("<tr>");
                out.print("<td>" + listaClientes.get(i).getIdCliente() + "</td>");
                out.print("<td>" + listaClientes.get(i).getNome() + "</td>");
                out.print("<td>" + listaClientes.get(i).getEmail() + "</td>");
                out.print("<td>" + listaClientes.get(i).getTelefone() + "</td>");
                out.print("<td><button> Editar </button></td>");
                out.print("<td><button> Excluir </button></td>");
            out.print("</tr>");
            }
        }

        out.print("</table>");                      

%>                        
        <br>
        <a href="index.jsp">Voltar à página inicial</a>
    </body>
</html>
