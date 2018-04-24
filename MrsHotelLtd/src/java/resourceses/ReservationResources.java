/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package resourceses;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.ReservasionDao;
import model.Reservation;

/**
 *
 * @author MIZAN
 */
public class ReservationResources {
    
    private Map<Integer, Reservation> allReservation = new HashMap();
    private Map<Integer, Reservation> allReservationTrue = new HashMap();
    

    public ReservationResources() {
        for(Reservation r: ReservasionDao.doQueryR()){
            allReservation.put(r.getId(), r);
        }
        for(Reservation r: ReservasionDao.doQueryRtrue()){
            allReservationTrue.put(r.getId(), r);
        }
        
      
    }
    
    public List<Reservation> selectAllReservation() {
       return new ArrayList<Reservation>(allReservation.values());
    }
    public List<Reservation> selectAllReservationTrue() {
       return new ArrayList<Reservation>(allReservationTrue.values());
    }
    
//    public List<Member> selectAllMemberRequest() {
//       return new ArrayList<Member>(allMemberFalse.values());
//    }
    
    public Reservation addAllReservation(Reservation r) {
        ReservasionDao.doSaveR(r);
        return r;
    }
    
    
     public Reservation updateReservation(Reservation r){
        if(r.getId() <= 0){
            return null;
        }
       ReservasionDao.doUpdateR(r);
        return r;
    } 
    
    
    public void removeReservation(int id){
        Reservation s = new Reservation();
        s.setId(id);
        ReservasionDao.doDeleteR(s);
        
    }
    
}
