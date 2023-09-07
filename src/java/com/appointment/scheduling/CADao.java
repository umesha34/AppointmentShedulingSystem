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
public class CADao {
    
    Connection con;

    public CADao(Connection con) {
        this.con = con;
    }
    
    public boolean addNewCA(consultantAvailablity consultant){
        boolean test = false;
        
        try{
            String query =  "insert into consultant_availability (cid,consultantName,email,contact,date,ftime,ttime) values(?,?,?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, consultant.getCid());
            pst.setString(2, consultant.getConsultantName());
            pst.setString(3, consultant.getEmail());
            pst.setString(4, consultant.getContact());
            pst.setString(5, consultant.getDate());
            pst.setString(6, consultant.getFtime());
            pst.setString(7, consultant.getTtime());
            pst.executeUpdate();
            test= true;

        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
    public List<consultantAvailablity> getAllAvailability(){
        List<consultantAvailablity> cavailability = new ArrayList<>();
        
        try{
            
            String query = "select * from consultant_availability";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String cid = rs.getString("cid");
                String consultantName = rs.getString("consultantName");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String date = rs.getString("date");
                String ftime = rs.getString("ftime");
                String ttime = rs.getString("ttime");
                
                consultantAvailablity row = new consultantAvailablity(id,cid,consultantName,email,contact,date,ftime,ttime);
                cavailability.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return cavailability;
    }
    
    public consultantAvailablity getAllAvailabilityById(int id){
        
        consultantAvailablity cavailability = null;
        
        try{
            
            String query = "select * from consultant_availability where id = ?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                String cid = rs.getString("cid");
                String consultantName = rs.getString("consultantName");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String date = rs.getString("date");
                String ftime = rs.getString("ftime");
                String ttime = rs.getString("ttime");
                
                cavailability = new consultantAvailablity(id,cid,consultantName,email,contact,date,ftime,ttime);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return cavailability;
    }
    
    public List<consultantAvailablity> getAllAvailabilityByCid(String cid){
        List<consultantAvailablity> cavailability = new ArrayList<>();
        
        try{
            
            String query = "select * from consultant_availability where cid = ?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, cid);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String consultantName = rs.getString("consultantName");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String date = rs.getString("date");
                String ftime = rs.getString("ftime");
                String ttime = rs.getString("ttime");
                
                consultantAvailablity row = new consultantAvailablity(id,cid,consultantName,email,contact,date,ftime,ttime);
                cavailability.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return cavailability;
    }
    

}
