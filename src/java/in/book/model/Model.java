/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.book.model;

import Employee.dbutil.EmployeesConnection;
import in.model.pojo.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hp
 */
public class Model {
    private Connection conn;
    public List <Book> dbBooks(String bookname)throws SQLException{
        
        conn=EmployeesConnection.getDbConnection();
        
        List<Book> list=new ArrayList<>();
         PreparedStatement ps=conn.prepareStatement("select * from bookmvc where subject=?");
         ps.setString(1,bookname);
         ResultSet rs=ps.executeQuery();
         while(rs.next()){
             Book b=new Book();
             b.setBookid(rs.getInt(1));
             b.setBookname(rs.getString(2));
             b.setBookprice(rs.getDouble(3));
             b.setSubject(rs.getString(4));
             list.add(b);             
         }
         return list;
         
         
        
        
    }
    
}
