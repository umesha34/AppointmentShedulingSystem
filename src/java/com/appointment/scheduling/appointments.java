/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.appointment.scheduling;

/**
 *
 * @author krgay
 */
public class appointments {
    
    int id;
    String cid;
    String consultantName;
    String jsid;
    String sname;
    String semail;
    String sphone;
    String email;
    String contact;
    String date;
    String fromTime;
    String toTime;
    String contactBy;

    public appointments() {
    }

    public appointments(int id, String cid, String consultantName, String jsid, String sname, String semail, String sphone, String email, String contact, String date, String fromTime, String toTime) {
        this.id = id;
        this.cid = cid;
        this.consultantName = consultantName;
        this.jsid = jsid;
        this.sname = sname;
        this.semail = semail;
        this.sphone = sphone;
        this.email = email;
        this.contact = contact;
        this.date = date;
        this.fromTime = fromTime;
        this.toTime = toTime;
    }

    public appointments(String cid, String jsid, String date, String fromTime, String toTime) {
        this.cid = cid;
        this.jsid = jsid;
        this.date = date;
        this.fromTime = fromTime;
        this.toTime = toTime;
    }

    public appointments(int id, String cid, String consultantName, String jsid, String sname, String semail, String sphone, String email, String contact, String date, String fromTime, String toTime, String contactBy) {
        this.id = id;
        this.cid = cid;
        this.consultantName = consultantName;
        this.jsid = jsid;
        this.sname = sname;
        this.semail = semail;
        this.sphone = sphone;
        this.email = email;
        this.contact = contact;
        this.date = date;
        this.fromTime = fromTime;
        this.toTime = toTime;
        this.contactBy = contactBy;
    }

    public appointments(String cid, String jsid, String date, String fromTime, String toTime, String contactBy) {
        this.cid = cid;
        this.jsid = jsid;
        this.date = date;
        this.fromTime = fromTime;
        this.toTime = toTime;
        this.contactBy = contactBy;
    }

    public appointments(String contactBy) {
        this.contactBy = contactBy;
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

    public String getJsid() {
        return jsid;
    }

    public void setJsid(String jsid) {
        this.jsid = jsid;
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

    public String getFromTime() {
        return fromTime;
    }

    public void setFromTime(String fromTime) {
        this.fromTime = fromTime;
    }

    public String getToTime() {
        return toTime;
    }

    public void setToTime(String toTime) {
        this.toTime = toTime;
    }

    public String getContactBy() {
        return contactBy;
    }

    public void setContactBy(String contactBy) {
        this.contactBy = contactBy;
    }

    @Override
    public String toString() {
        return "appointments{" + "id=" + id + ", cid=" + cid + ", consultantName=" + consultantName + ", jsid=" + jsid + ", sname=" + sname + ", semail=" + semail + ", sphone=" + sphone + ", email=" + email + ", contact=" + contact + ", date=" + date + ", fromTime=" + fromTime + ", toTime=" + toTime + ", contactBy=" + contactBy + '}';
    }
    
    

}
