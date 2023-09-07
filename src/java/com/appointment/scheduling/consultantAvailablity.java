/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.appointment.scheduling;

/**
 *
 * @author krgay
 */
public class consultantAvailablity {
    
    int id;
    String cid;
    String consultantName;
    String email;
    String contact;
    String date;
    String ftime;
    String ttime;

    public consultantAvailablity() {
    }

    public consultantAvailablity(int id, String cid, String consultantName, String email, String contact, String date, String ftime, String ttime) {
        this.id = id;
        this.cid = cid;
        this.consultantName = consultantName;
        this.email = email;
        this.contact = contact;
        this.date = date;
        this.ftime = ftime;
        this.ttime = ttime;
    }

    public consultantAvailablity(String cid, String consultantName, String email, String contact, String date, String ftime, String ttime) {
        this.cid = cid;
        this.consultantName = consultantName;
        this.email = email;
        this.contact = contact;
        this.date = date;
        this.ftime = ftime;
        this.ttime = ttime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getConsultantName() {
        return consultantName;
    }

    public void setConsultantName(String consultantName) {
        this.consultantName = consultantName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFtime() {
        return ftime;
    }

    public void setFtime(String ftime) {
        this.ftime = ftime;
    }

    public String getTtime() {
        return ttime;
    }

    public void setTtime(String ttime) {
        this.ttime = ttime;
    }

    @Override
    public String toString() {
        return "consultantAvailablity{" + "id=" + id + ", cid=" + cid + ", consultantName=" + consultantName + ", email=" + email + ", contact=" + contact + ", date=" + date + ", ftime=" + ftime + ", ttime=" + ttime + '}';
    }

    
    
}
