
package DAO;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
import MODEL.Cliente;

/**
 * @author Pedro Fuschino
 */
public class DAOCliente {
    
    private Connection connection;
    private PreparedStatement pstm;
    private Statement stmt;
    private ResultSet rst;
    private ArrayList<Cliente> listaCliente = new ArrayList<>();
    
    public DAOCliente(){
        connection = new Conexao().getConexao();
    }
    
    public void inserirCliente(Cliente cliente){
        
        String sql = "INSERT INTO tb_cliente (nome_cliente, email_cliente, telefone_cliente) VALUES (?, ?, ?)"; 
                
        
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setString(1, cliente.getNome());
            pstm.setString(2, cliente.getEmail());
            pstm.setString(3, cliente.getTelefone());
            
            pstm.execute();
            
            pstm.close();
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao inserir cliente: " + e);
        }
        
    }
    
    public ArrayList<Cliente> listarClientes(){
        
        String sql = "SELECT * FROM tb_cliente";
        
        try{
            stmt = connection.createStatement();
            rst = stmt.executeQuery(sql);
            
            while(rst.next()){
                if(rst.getBoolean("ativo") == true){
                    Cliente cliente = new Cliente();
                    cliente.setIdCliente(rst.getInt("id_cliente"));
                    cliente.setNome(rst.getString("nome_cliente"));
                    cliente.setEmail(rst.getString("email_cliente"));
                    cliente.setTelefone(rst.getString("telefone_cliente"));
                    listaCliente.add(cliente);
                }
            }
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao listar todos os clientes: " + e);
        }
        
        return listaCliente;
    }

    public ArrayList<Cliente> listarClientesPorNome(String nome){
        
        String sql = "SELECT * FROM tb_cliente WHERE nome_cliente LIKE '%" + nome + "%'";
        
        try{
            stmt = connection.createStatement();
            rst = stmt.executeQuery(sql);
            
            while(rst.next()){
                if(rst.getBoolean("ativo") == true){
                    Cliente cliente = new Cliente();
                    cliente.setIdCliente(rst.getInt("id_cliente"));
                    cliente.setNome(rst.getString("nome_cliente"));
                    cliente.setEmail(rst.getString("email_cliente"));
                    cliente.setTelefone(rst.getString("telefone_cliente"));
                    listaCliente.add(cliente);
                }
            }
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao listar clientes por nome: " + e);
        }
        
        return listaCliente;
    }
    
    public void updateNome(String nome, int id){
        
        String sql = "UPDATE tb_cliente SET nome_cliente = ? WHERE id_cliente = ?";
        
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setString(1, nome);
            pstm.setInt(2, id);
            
            pstm.execute();
            pstm.close();            
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao atualizar nome cliente: " + e);
        }
    }

    public void updateEmail(String email, int id){
        
        String sql = "UPDATE tb_cliente SET email_cliente = ? WHERE id_cliente = ?";
        
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setString(1, email);
            pstm.setInt(2, id);
            
            pstm.execute();
            pstm.close();            
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao atualizar email cliente: " + e);
        }
    }

    public void updateTelefone(String telefone, int id){
        
        String sql = "UPDATE tb_cliente SET telefone_cliente = ? WHERE id_cliente = ?";
        
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setString(1, telefone);
            pstm.setInt(2, id);
            
            pstm.execute();
            pstm.close();            
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao atualizar telefone cliente: " + e);
        }
    }
    
    public void updateAtivo(byte ativo, int id){
        
        String sql = "UPDATE tb_cliente SET ativo = ? WHERE id_cliente = ?";
        
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setByte(1, ativo);
            pstm.setInt(2, id);
            
            pstm.execute();
            pstm.close();            
            
        } catch(Exception e){
            throw new RuntimeException("Falha ao executar exclusão lógica cliente: " + e);
        }
    }      
    
}


