/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.appointment.scheduling;

//import com.sun.jdi.connect.spi.Connection;
//import java.sql.PreparedStatement;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author krgay
 */
public class UserDao {
    
    Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean addNewUser(users user){
        boolean test = false;
        
        try{
            String query =  "insert into user (aname,aemail,apassword) values(?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, user.getAname());
            pst.setString(2, user.getAemail());
            pst.setString(3, user.getApassword());
            pst.executeUpdate();
            test= true;

        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
    public List<users> getAllUsers(){
        List<users> user = new ArrayList<>();
        
        try{
            
            String query = "select * from user";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String aname = rs.getString("aname");
                String aemail = rs.getString("aemail");
                String apassword = rs.getString("apassword");
                
                users row = new users(id,aname,aemail,apassword);
                user.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
        return user;
    }
    
    public void editUser(users user){
        
        try{
            String query = "update user set aname=?, aemail=?, apassword=? where id=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, user.getAname());
            pst.setString(2, user.getAemail());
            pst.setString(3, user.getApassword());
            
            pst.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();;
        }
    }
    
     public users getUser(int id){
        users userr = null;
        
        try{
            String query = "select * from user where id=? ";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            ResultSet rs= pt.executeQuery();
            
            while(rs.next()){
                int uid = rs.getInt("id");
                String aname = rs.getString("aname");
                String aemail = rs.getString("aemail");
                String apassword = rs.getString("apassword");
                userr = new users(uid,aname,aemail,apassword);
            }
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        return userr;
        
        
    }
    
     public void deleteUser(int id){
        try{
            
           String query= "delete from user where id=?";
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setInt(1, id);
           pt.execute();
            
        }catch(Exception ex){
            ex.printStackTrace();;
        }
    }
     
     public users logUser(String aemail, String apassword){
        users user=null;
        try{
            String query ="select * from user where aemail=? and apassword=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, aemail);
            pst.setString(2, apassword);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                user = new users();
                user.setId(rs.getInt("id"));
                user.setAname(rs.getString("aname"));
                user.setAemail(rs.getString("aemail"));
                user.setApassword(rs.getString("apassword"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
    
    
}
