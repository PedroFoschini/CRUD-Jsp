<%-- 
    Document   : consultar_produto
    Created on : 21/01/2022, 14:22:52
    Author     : Pedro Fuschino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProduto"%>
<%@page import="MODEL.Produto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="pt-br"> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de produto - TCS Petshop</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Consulta de produto</h1>
        <form>
            <label>Informe o nome do produto que deseja buscar:</label><br>
            <input type='text' name='nomeProduto' id="campoNome">
            <input type="submit" value='Buscar' id="botaoSubmit"> <button onclick="zerar()">
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
                out.print("<th>Nome Produto</th>");
                out.print("<th>Quantidade</th>");
                out.print("<th>Editar</th>");
                out.print("<th>Excluir</th>");
            out.print("</tr>");
            DAOProduto daoProduto = new DAOProduto();
            
            if(request.getParameter("nomeProduto") == "" || request.getParameter("nomeProduto") == null){
                
                ArrayList<Produto> listaProduto = daoProduto.listarProdutos();
            
                for(int i = 0; i < listaProduto.size(); i++){
                    out.print("<tr><form method='post' action='editar_produto.jsp'>");
                        out.print("<input type='hidden' name='id' value='" + listaProduto.get(i).getIdProduto() + "'><td>" + listaProduto.get(i).getIdProduto() + "</td>");
                        out.print("<input type='hidden' name='nome' value='" + listaProduto.get(i).getNomeProduto() + "'><td>" + listaProduto.get(i).getNomeProduto() + "</td>");
                        out.print("<input type='hidden' name='qtd' value='" + listaProduto.get(i).getQtdProduto() + "'><td>" + listaProduto.get(i).getQtdProduto() + "</td>");
                        out.print("<td><input type='submit' name='editar' value='Editar'></form></td>");
                        out.print("<td><form method='post' action='excluir_produto.jsp'><input type='hidden' name='id' value='" + listaProduto.get(i).getIdProduto() + "'><input type='submit' name='Excluir' value='Excluir'></form></td>");
                    out.print("</tr>");
                }
            } else{
                
                ArrayList<Produto> listaProduto = daoProduto.listarProdutoPorNome(request.getParameter("nomeProduto"));
            
                for(int i = 0; i < listaProduto.size(); i++){
                    out.print("<tr>");
                        out.print("<td>" + listaProduto.get(i).getIdProduto() + "</td>");
                        out.print("<td>" + listaProduto.get(i).getNomeProduto() + "</td>");
                        out.print("<td>" + listaProduto.get(i).getQtdProduto() + "</td>");
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
