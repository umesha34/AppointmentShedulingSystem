/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.appointment.scheduling;

/**
 *
 * @author krgay
 */
public class users {
    
    int id;
    String aname;
    String aemail;
    String apassword;

    public users() {
    }

    public users(int id, String aname, String aemail, String apassword) {
        this.id = id;
        this.aname = aname;
        this.aemail = aemail;
        this.apassword = apassword;
    }

    public users(String aname, String aemail, String apassword) {
        this.aname = aname;
        this.aemail = aemail;
        this.apassword = apassword;
    }

    public users(String aemail, String apassword) {
        this.aemail = aemail;
        this.apassword = apassword;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAemail() {
        return aemail;
    }

    public void setAemail(String aemail) {
        this.aemail = aemail;
    }

    public String getApassword() {
        return apassword;
    }

    public void setApassword(String apassword) {
        this.apassword = apassword;
    }

    
    

}
