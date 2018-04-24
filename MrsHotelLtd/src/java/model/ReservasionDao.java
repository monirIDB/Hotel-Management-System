/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import org.hibernate.Session;
import util.HibernateUtil;

/**
 *
 * @author MIZAN
 */
public class ReservasionDao {
    
    public static int doSaveR(Reservation r) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        int n = (Integer) session.save(r);
        session.getTransaction().commit();
        return n;
    }
    
    public static void doUpdateR(Reservation r){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(r);
        session.getTransaction().commit();
    }
    
    
    public static void doDeleteR(Reservation r){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(r);
        session.getTransaction().commit();
    }
    
    
    public static List<Reservation> doQueryR(){
        List<Reservation> list = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        list = session.createQuery("from Reservation where statues='false'").list();
        return list;
    }
    
    
    public static List<Reservation> doQueryRtrue(){
        List<Reservation> list = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        list = session.createQuery("from Reservation where statues='true'").list();
        return list;
    }
    
 
    
}
