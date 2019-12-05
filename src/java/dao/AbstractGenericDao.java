/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

public class AbstractGenericDao {

    private static Session session;
    private static Transaction transaction;
    
    public AbstractGenericDao(){

    }
   
    protected static void beginTransaction(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        transaction = session.beginTransaction();
    }
    
    protected static void save(Object entity){
        session.save(entity);
    }
    
    protected static Transaction Transaction(){
        return transaction;
    }
    
    protected static String execQueryReturnOneValue(String query){
        Query q= session.createQuery(query);
        return (q.list().size() > 0)? q.list().get(0).toString(): null; 
    }
    
    protected static Session Session(){
        return session;
    }
    protected static void commitTransaction(){
        session.getTransaction().commit();
    }  
}
