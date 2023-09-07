/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.appointment.scheduling;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author krgay
 */
public class JobSeekerDao {
    
    Connection con;

    public JobSeekerDao(Connection con) {
        this.con = con;
    }

    public boolean addNewJobSeeker(jobseekers jobseeker){
        boolean test = false;
        
        try{
            String query =  "insert into job_seeker (sname,semail,spassword,sphone) values(?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, jobseeker.getSname());
            pst.setString(2, jobseeker.getSemail());
            pst.setString(3, jobseeker.getSpassword());
            pst.setString(4, jobseeker.getSphone());
            pst.executeUpdate();
            test= true;

        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
    public List<jobseekers> getAllJobSeekers(){
        List<jobseekers> jobseeker = new ArrayList<>();
        
        try{
            
            String query = "select * from job_seeker";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String sname = rs.getString("sname");
                String semail = rs.getString("semail");
                String spassword = rs.getString("spassword");
                String sphone = rs.getString("sphone");
                
                jobseekers row = new jobseekers(id,sname,semail,sphone,spassword);
                jobseeker.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
        return jobseeker;
    }
    
    public List<jobseekers> getJobSeekersDropdown(){
        List<jobseekers> jobseeker = new ArrayList<>();
        
        try{
            
            String query = "select * from job_seeker";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String sname = rs.getString("sname");
                
                jobseekers row = new jobseekers(id,sname);
                jobseeker.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
        return jobseeker;
    }
    
    
    public jobseekers logJobseeker(String semail, String spassword){
        jobseekers jobseeker=null;
        try{
            String query ="select * from job_seeker where semail=? and spassword=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, semail);
            pst.setString(2, spassword);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                jobseeker = new jobseekers();
                jobseeker.setId(rs.getInt("id"));
                jobseeker.setSname(rs.getString("sname"));
                jobseeker.setSemail(rs.getString("semail"));
                jobseeker.setSpassword(rs.getString("spassword"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return jobseeker;
    }

}
