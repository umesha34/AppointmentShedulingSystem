/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.appointment.scheduling;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author krgay
 */
public class ConsultantDao {
    
    Connection con;

    public ConsultantDao(Connection con) {
        this.con = con;
    }

    public boolean addNewConsultant(consultants consultant){
        boolean test = false;
        
        try{
            String query =  "insert into consultant_details (consultantName,email,password,contact) values(?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, consultant.getConsultantName());
            pst.setString(2, consultant.getEmail());
            pst.setString(3, consultant.getPassword());
            pst.setString(4, consultant.getContact());
            pst.executeUpdate();
            test= true;

        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
    public List<consultants> getAllConsultants(){
        List<consultants> consultant = new ArrayList<>();
        
        try{
            
            String query = "select * from consultant_details";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String consultantName = rs.getString("consultantName");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String contact = rs.getString("contact");
                
                consultants row = new consultants(id,consultantName,email,password,contact);
                consultant.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
        return consultant;
    }
    
    public List<consultants> getConsultantsDropdown(){
        List<consultants> consultant = new ArrayList<>();
        
        try{
            
            String query = "select * from consultant_details";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String consultantName = rs.getString("consultantName");
                
                consultants row = new consultants(id,consultantName);
                consultant.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
        return consultant;
    }
    
    public consultants logConsultant(String email, String password){
        consultants consultant=null;
        try{
            String query ="select * from consultant_details where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                consultant = new consultants();
                consultant.setId(rs.getInt("id"));
                consultant.setConsultantName(rs.getString("consultantName"));
                consultant.setEmail(rs.getString("email"));
                consultant.setPassword(rs.getString("password"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return consultant;
    }
    
}
