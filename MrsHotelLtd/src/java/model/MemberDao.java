/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import util.HibernateUtil;

/**
 *
 * @author MIZAN
 */
public class MemberDao {

    public static int doSave(Member m) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        int n = (Integer) session.save(m);
        session.getTransaction().commit();
        return n;
    }
    
    public static void doUpdate(Member simple){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(simple);
        session.getTransaction().commit();
    }
    
    
    public static void doDelete(Member simple){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(simple);
        session.getTransaction().commit();
    }
    
    
    public static List<Member> doQuery(){
        List<Member> list = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        list = session.createQuery("from Member where statues='true'").list();
        return list;
    }
    
    public static List<Member> doQueryRequest(){
        List<Member> list = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        list = session.createQuery("from Member where statues='false'").list();
        return list;
    }
    
    public static List<Member> doSearchByEmail(Member member){
        List<Member> list = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query q = session.createQuery("from Member where email=:a");
        q.setParameter("a", member.getEmail());
        return list;
    }
    
    
    
}
