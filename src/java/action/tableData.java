/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.SaveDao;
import java.util.List;
import model.person;

/**
 *
 * @author itcrc
 */
public class tableData extends ActionSupport {
     private List<person> person;
    public tableData() {
    }
    
    public String execute() throws Exception {
        SaveDao savedao = new SaveDao();
         person = savedao.getAllUsers();  // Call the DAO method to get users
        return SUCCESS;
        
        
    }

    public List<person> getPerson() {
        return person;
    }

    public void setPerson(List<person> person) {
        this.person = person;
    }
    
   
}
