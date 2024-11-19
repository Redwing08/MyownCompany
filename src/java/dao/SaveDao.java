/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.person;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author itcrc
 */
public class SaveDao {
    
    //this is to to db
    
    public void saveData(person Person){
        Session s  = HibernateUtil.getSessionFactory().openSession();
        Transaction tr = s.beginTransaction();
        
        

        s.save(Person);
        tr.commit();
        s.close();
        
    
       
    }
    //This is to Login the Data 
    
    public person validateLogin(String email , String pass){
        Session s  = HibernateUtil.getSessionFactory().openSession();
        person Person = null;
        

       String hql = "FROM person p WHERE p.email = :email AND p.pass = :pass";
       Query query = s.createQuery(hql);
       query.setParameter("email", email);
       query.setParameter("pass", pass);
       
      
       
       Person = (person) query.uniqueResult();
       
       s.close();
       
       
       
       
       return Person; 
    }
    
    
    
    public person  getUser(String emailSearch){
        Session s = HibernateUtil.getSessionFactory().openSession();
        person Person = null;
        
        String hql  = "FROM person p WHERE p.email = :email";
        
        Query query = s.createQuery(hql);
        query.setParameter("email", emailSearch);
        Person = (person) query.uniqueResult();
        
        
        
        s.close();
        
        
        
        return Person;


    }
    
     public List<person> getAllUsers() {
        Session s = HibernateUtil.getSessionFactory().openSession();  // Get the current session
        Transaction tr = null;
        List<person> Person = null;

        try {
            tr = s.beginTransaction();  // Start a transaction
            
            // Use HQL to fetch all users from the User class (NOT the table)
              Query query = s.createQuery("FROM person");  // This assumes User is the entity class

          Person = query.list();
            
            
            tr.commit(); // Commit the transaction
        } catch (Exception e) {
            if (tr != null) {
                tr.rollback();  // Rollback if there is an error
            }
            e.printStackTrace();
        } finally {
            s.close(); // Close the session
        }

        return Person; // Return the list of users
    }
    
    
}
