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
import model.Room;
import model.RoomDao;

/**
 *
 * @author MIZAN
 */
public class RoomResource {
    
    private Map<Integer, Room> allRoomfalse = new HashMap();
    

    public RoomResource() {
        for(Room r: RoomDao.doQueryRoom()){
            allRoomfalse.put(r.getId(), r);
        }
        
     
    }
    
    public List<Room> selectAllRoomFalse() {
       return new ArrayList<Room>(allRoomfalse.values());
    }
    
    
    public Room updateRoom(Room room){
        if(room.getId() <= 0){
            return null;
        }
       RoomDao.doUpdateRoom(room);
        return room;
    } 
    
}
