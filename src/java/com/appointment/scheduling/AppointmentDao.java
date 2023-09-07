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
public class AppointmentDao {
    
    Connection con;

    public AppointmentDao(Connection con) {
        this.con = con;
    }
    
    public boolean addNewAppoinment(appointments appointment){
        boolean test = false;
        
        try{
            String query =  "insert into appointments (jsid,cid,date,fromTime,toTime,contactBy) values(?,?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, appointment.getJsid());
            pst.setString(2, appointment.getCid());
            pst.setString(3, appointment.getDate());
            pst.setString(4, appointment.getFromTime());
            pst.setString(5, appointment.getToTime());
            pst.setString(6, appointment.getContactBy());
            pst.executeUpdate();
            test= true;

        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
    public List<appointments> getAllAppoinments(){
        List<appointments> appointment = new ArrayList<>();
        
        try{
            
            String query = "select * from appointments left outer join job_seeker on appointments.jsid = job_seeker.id left outer join consultant_details on appointments.cid = consultant_details.id";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String jsid = rs.getString("jsid");
                String sname = rs.getString("sname");
                String cid = rs.getString("cid");
                String consultantName = rs.getString("consultantName");
                String semail = rs.getString("semail");
                String sphone = rs.getString("sphone");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String date = rs.getString("date");
                String fromTime = rs.getString("fromTime");
                String toTime = rs.getString("toTime");
                String contactBy = rs.getString("contactBy");
                
                appointments row = new appointments(id,cid,consultantName,jsid,sname,semail,sphone,email,contact,date,fromTime,toTime,contactBy);
                appointment.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return appointment;
    }
    
    public List<appointments> getAllAppoinmentsByJsid(String jsid){
        List<appointments> appointment = new ArrayList<>();
        
        try{
            
            String query = "select * from appointments left outer join job_seeker on appointments.jsid = job_seeker.id left outer join consultant_details on appointments.cid = consultant_details.id where appointments.jsid = ?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, jsid);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String sname = rs.getString("sname");
                String cid = rs.getString("cid");
                String consultantName = rs.getString("consultantName");
                String semail = rs.getString("semail");
                String sphone = rs.getString("sphone");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String date = rs.getString("date");
                String fromTime = rs.getString("fromTime");
                String toTime = rs.getString("toTime");
                
                appointments row = new appointments(id,cid,consultantName,jsid,sname,semail,sphone,email,contact,date,fromTime,toTime);
                appointment.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return appointment;
    }
    
    public List<appointments> getAllAppoinmentsByCid(String cid){
        List<appointments> appointment = new ArrayList<>();
        
        try{
            
            String query = "select * from appointments left outer join job_seeker on appointments.jsid = job_seeker.id left outer join consultant_details on appointments.cid = consultant_details.id where appointments.cid = ?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, cid);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String sname = rs.getString("sname");
                String jsid = rs.getString("jsid");
                String consultantName = rs.getString("consultantName");
                String semail = rs.getString("semail");
                String sphone = rs.getString("sphone");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String date = rs.getString("date");
                String fromTime = rs.getString("fromTime");
                String toTime = rs.getString("toTime");
                
                appointments row = new appointments(id,cid,consultantName,jsid,sname,semail,sphone,email,contact,date,fromTime,toTime);
                appointment.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return appointment;
    }
    
    public appointments getEmailCount(){
        
        appointments appointment = null;
        
        try{
            
            String query = "select count(contactBy) as contactBy from appointments where contactBy='email' group by contactBy";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                String contactBy = rs.getString("contactBy");
                
                appointment = new appointments(contactBy);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return appointment;
    }
    
    public appointments getPhoneCount(){
        
        appointments appointment = null;
        
        try{
            
            String query = "select count(contactBy) as contactBy from appointments where contactBy='phone' group by contactBy";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                String contactBy = rs.getString("contactBy");
                
                appointment = new appointments(contactBy);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return appointment;
    }

}
