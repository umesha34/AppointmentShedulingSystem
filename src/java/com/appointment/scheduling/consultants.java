/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.appointment.scheduling;

/**
 *
 * @author krgay
 */
public class consultants {
    
    int id;
    String consultantName;
    String email;
    String password;
    String contact;

    public consultants() {
    }

    public consultants(int id, String consultantName, String email, String password, String contact) {
        this.id = id;
        this.consultantName = consultantName;
        this.email = email;
        this.password = password;
        this.contact = contact;
    }

    public consultants(String consultantName, String email, String password, String contact) {
        this.consultantName = consultantName;
        this.email = email;
        this.password = password;
        this.contact = contact;
    }

    public consultants(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public consultants(int id, String consultantName) {
        this.id = id;
        this.consultantName = consultantName;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Override
    public String toString() {
        return "consultants{" + "id=" + id + ", consultantName=" + consultantName + ", email=" + email + ", password=" + password + ", contact=" + contact + '}';
    }

}
