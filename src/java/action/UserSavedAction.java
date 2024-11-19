/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.SaveDao;
import model.person;

/**
 *
 * @author itcrc
 */
public class UserSavedAction extends ActionSupport {
    person Person  = new person();
    private String fullname;
    private String email;
    private String pass;
    private int age;
    private String hint;
    private String sex;

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
    
    
    
    
    public UserSavedAction() {
    }
    
    public String execute() throws Exception {
        Person.setFullname(fullname);
        Person.setEmail(email);
        
        Person.setHint(hint);
        Person.setPass(pass);
        Person.setAge(age);
        Person.setSex(sex);
        
        
        //execute the action going to dao to save
        SaveDao savedao = new SaveDao();
                if(Person.getFullname() != null && Person.getEmail() != null && Person.getPass() != null && Person.getHint() != null && Person.getAge() != 0 && Person.getSex() != null){
        savedao.saveData(Person);
        addActionMessage("Successfully Registered!");
            return SUCCESS;
        } else {
            addActionError("Registration Failed. Please try again.");
            return ERROR;
    }
    }
    
}
