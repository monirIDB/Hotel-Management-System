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
public class RoomDao {
    
    public static List<Room> doQueryRoom(){
        List<Room> list = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        list = session.createQuery("from Room where statues='false'").list();
        return list;
    }
    
    
    public static void doUpdateRoom(Room room){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(room);
        session.getTransaction().commit();
    }
    
}
