
package DAO;

import java.sql.DriverManager;
import java.sql.Connection;

/**
 * @author Pedro Fuschino
 */
public class Conexao {
    
        public Connection getConexao(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/dbavaliacao?useSSL=false&useTimezone=true&serverTimezone=UTC", "root", "");
        }catch(Exception e){
            
            throw new RuntimeException("Erro classe conexão: " + e);            
        }
    }    
}
