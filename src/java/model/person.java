/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.*;

/**
 *
 * @author itcrc
 */

@Entity
@Table(name = "personalinfo")
public class person {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    
 @Column(name = "fullname", nullable = false)
    private String fullname;
    
 @Column(name  = "email", nullable = false)
 private String email;
 
 
  @Column(name  = "pass", nullable = false)
 private String pass;
    
  
   @Column(name  = "age", nullable = false)
 private int age;
   
    @Column(name  = "hint", nullable = false)
 private String hint;
    
    
    
     @Column(name  = "sex", nullable = false)
 private String sex;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getHint() {
        return hint;
    }

    public void setHint(String hint) {
        this.hint = hint;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
     
     
     
     
     
}
