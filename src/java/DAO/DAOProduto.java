
package DAO;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
import MODEL.Produto;

/**
 * @author Pedro Fuschino
 */
public class DAOProduto {
    
    private Connection connection;
    private PreparedStatement pstm;
    private Statement stmt;
    private ResultSet rst;
    private ArrayList<Produto> listaProduto = new ArrayList<>();
    
   public DAOProduto() {
       connection = new Conexao().getConexao();
   }
   
   public void inserirProduto(Produto produto){
       
       String sql = "INSERT INTO tb_produto (nome_produto, qtd_produto) VALUES (?,?)";
       
       try{
           pstm = connection.prepareStatement(sql);
           pstm.setString(1, produto.getNomeProduto());
           pstm.setInt(2, produto.getQtdProduto());
           
           pstm.execute();
           pstm.close();
           
       } catch(Exception e){
           throw new RuntimeException("Falha ao inserir produto: " + e);
       }
   }
   
   
   public ArrayList<Produto> listarProdutos(){
       
       String sql = "SELECT * FROM tb_produto";
       
       try{
           stmt = connection.createStatement();
           rst = stmt.executeQuery(sql);
           
           while(rst.next()){
               if(rst.getBoolean("ativo") == true){
                   Produto produto = new Produto();
                   produto.setIdProduto(rst.getInt("id_produto"));
                   produto.setNomeProduto(rst.getString("nome_produto"));
                   produto.setQtdProduto(rst.getInt("qtd_produto"));
                   listaProduto.add(produto);                  
               }

           }
           
       } catch(Exception e){
           throw new RuntimeException("Falha ao listar todos os produtos" + e);
       }
       
       return listaProduto;
   }
   
   public ArrayList<Produto> listarProdutoPorNome(String nome){
              
       String sql = "SELECT * FROM tb_produto WHERE nome_produto LIKE '%" + nome + "%'";
       
       try{
           stmt = connection.createStatement();
           rst = stmt.executeQuery(sql);
           
           while(rst.next()){
               if(rst.getBoolean("ativo") == true){
                    Produto produto = new Produto();
                    produto.setIdProduto(rst.getInt("id_produto"));
                    produto.setNomeProduto(rst.getString("nome_produto"));
                    produto.setQtdProduto(rst.getInt("qtd_produto"));
                    listaProduto.add(produto);
               }

           }
           
       } catch(Exception e){
           throw new RuntimeException("Falha ao listar produtos por nome" + e);
       }
       
       return listaProduto;
   }
    
    public void updateNome(String nome, int id){
        
        String sql = "UPDATE tb_produto SET nome_produto = ? WHERE id_produto = ?";
        
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setString(1, nome);
            pstm.setInt(2, id);
            
            pstm.execute();
            pstm.close();            
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao atualizar nome produto: " + e);
        }
    }

    public void updateQtd(int qtd, int id){
        
        String sql = "UPDATE tb_produto SET qtd_produto = ? WHERE id_produto = ?";
        
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setInt(1, qtd);
            pstm.setInt(2, id);
            
            pstm.execute();
            pstm.close();            
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao atualizar quantidade produto: " + e);
        }
    }    
  
   
    public void updateAtivo(byte ativo, int id){
        
        String sql = "UPDATE tb_produto SET ativo = ? WHERE id_produto = ?";
        
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setByte(1, ativo);
            pstm.setInt(2, id);
            
            pstm.execute();
            pstm.close();            
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao executar exclusão lógica produto: " + e);
        }
    }      
   
}
