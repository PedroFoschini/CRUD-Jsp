/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;

/**
 *
 * @author Micro
 */
public class Cliente {
    
    private int idCliente;
    private String nome;
    private String email;
    private String telefone;
    private byte ativo = 1;
    
    public int getIdCliente(){
        return idCliente;
    };
    
    public void setIdCliente(int id){
        this.idCliente = id;        
    }
    
    public String getNome(){
        return nome;
    };
    
    public void setNome(String nome){
        this.nome = nome;
    };
    
    public String getEmail(){
        return email;
    };
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public String getTelefone(){
        return telefone;
    };
    
    public void setTelefone(String telefone){
        this.telefone = telefone;
    };
    
    public int getAtivo(){
        return ativo;
    };
    
    public void setAtivo(byte ativo){
        this.ativo = ativo;        
    }
    
}
