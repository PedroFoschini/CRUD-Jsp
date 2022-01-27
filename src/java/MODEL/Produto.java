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
public class Produto {
    
    private int idProduto;
    private String nomeProduto;
    private int qtdProduto;
    private byte ativo = 1;
    
    public int getIdProduto(){
        return idProduto;
    };
    
    public void setIdProduto(int id){
        this.idProduto = id;
    }
    
    public String getNomeProduto(){
        return nomeProduto;
    };
    
    public void setNomeProduto(String nomeProduto){
        this.nomeProduto = nomeProduto;
    };
    
    public int getQtdProduto(){
        return qtdProduto;
    };
    
    public void setQtdProduto(int qtdProduto){
        this.qtdProduto = qtdProduto;
    };
    
    public int getAtivo(){
        return ativo;
    };
    
    public void setAtivo(byte ativo){
        this.ativo = ativo;        
    }
}
