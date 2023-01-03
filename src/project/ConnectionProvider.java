/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Humaira Gulshan
 */

public class ConnectionProvider {
    public static Connection getCon()
    {
        try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?serverTimezone=UTC","root","");
        return con;
        }
        catch(Exception e)
        {
            return null;
            
        }
    }
}


/*public class ConnectionProvider{
    public Connection createConnection()
    {
    Connection connection=null;
    MysqlDataSource mds=new MysqlDataSource();
    mds.setServerName("localhost");
    mds.setPortNumber(3306);
    mds.setUser("root");
    mds.setPassword("");
    mds.setDatabaseName("hotel");
    try{
    connection =mds.getConnection();
    }
    catch(SQLException ex)
    {
    Logger.getLogger(ConnectionProvider.class.getName()).log(Level.SEVERE,null,ex);
    
    }
    return connection;
    }}
    
    
    
    
    
}
*/