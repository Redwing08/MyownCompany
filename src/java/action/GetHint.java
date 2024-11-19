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
public class GetHint extends ActionSupport {
    private String emailSearch;
    private String hint;
    
    
    
    
    public String getEmailSearch() {
        return emailSearch;
    }

    public void setEmailSearch(String emailSearch) {
        this.emailSearch = emailSearch;
    }

    public String getHint() {
        return hint;
    }

    public void setHint(String hint) {
        this.hint = hint;
    }
    
    
    
    public GetHint() {
    }
    
    
    
    public String execute() throws Exception {
        SaveDao savedao = new SaveDao();
        
        person exist = savedao.getUser(emailSearch);
        
        if(exist != null){
            hint = exist.getHint();
            return SUCCESS;
        }
        
       return ERROR; 
    }
    
}
