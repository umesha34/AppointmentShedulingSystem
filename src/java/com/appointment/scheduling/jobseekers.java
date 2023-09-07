/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.appointment.scheduling;

/**
 *
 * @author krgay
 */
public class jobseekers {
    
    int id;
    String sname;
    String semail;
    String sphone;
    String spassword;

    public jobseekers() {
    }

    public jobseekers(int id, String sname, String semail, String sphone, String spassword) {
        this.id = id;
        this.sname = sname;
        this.semail = semail;
        this.sphone = sphone;
        this.spassword = spassword;
    }

    public jobseekers(String sname, String semail, String sphone, String spassword) {
        this.sname = sname;
        this.semail = semail;
        this.sphone = sphone;
        this.spassword = spassword;
    }

    public jobseekers(String semail, String spassword) {
        this.semail = semail;
        this.spassword = spassword;
    }

    public jobseekers(int id, String sname) {
        this.id = id;
        this.sname = sname;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    public String getSpassword() {
        return spassword;
    }

    public void setSpassword(String spassword) {
        this.spassword = spassword;
    }

    @Override
    public String toString() {
        return "jobseekers{" + "id=" + id + ", sname=" + sname + ", semail=" + semail + ", sphone=" + sphone + ", spassword=" + spassword + '}';
    }

    

    
}
