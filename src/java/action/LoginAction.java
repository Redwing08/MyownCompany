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
public class LoginAction extends ActionSupport {
    private String email;
    private String pass;

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
    
    
    
  
    
    
    public String execute() throws Exception {
     SaveDao savedao = new SaveDao();
        
        person Person =  savedao.validateLogin(email, pass);
        
        
        if(Person != null){
            addActionMessage("Login Successful");
            return SUCCESS;
        }else{
            addActionError("Error Wrong 0");
            return ERROR;
        }
        
    }
    
}
