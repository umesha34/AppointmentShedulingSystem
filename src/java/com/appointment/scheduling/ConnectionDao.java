/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.appointment.scheduling;

import com.sun.jdi.connect.spi.Connection;
import java.sql.*;

/**
 *
 * @author krgay
 */
public class ConnectionDao {
    
    private static java.sql.Connection con;
    
    public static java.sql.Connection getConnection(){
        try{
//            Class.forName("com.mysql.cj.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/global_consult_ease","root","");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }

}
