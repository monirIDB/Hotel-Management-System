/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serviceses;

import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import model.Room;
import resourceses.RoomResource;

/**
 *
 * @author MIZAN
 */
@Path("/room")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class RoomServices {
    
    RoomResource roomResource = new RoomResource();
   
    @GET
    public List<Room> allReservation() {
        return roomResource.selectAllRoomFalse();
    }
    
    @PUT
    @Path("/{id}")
    public Room updateSimple(@PathParam("id") int id, Room room){
        room.setId(id);
        return roomResource.updateRoom(room);
    }
    
}
