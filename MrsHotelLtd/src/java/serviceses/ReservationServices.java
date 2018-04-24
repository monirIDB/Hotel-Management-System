
package serviceses;

import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import model.Reservation;
import resourceses.ReservationResources;

@Path("/reservation")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ReservationServices {
    
    ReservationResources reservationResources = new ReservationResources();
   
    @GET
    public List<Reservation> allReservation() {
        return reservationResources.selectAllReservation();
    }
    
    @POST
    public Reservation addMember(Reservation r){
        return reservationResources.addAllReservation(r);
        
    }
    
    @PUT
    @Path("/{id}")
    public Reservation updateReserv(@PathParam("id") int id, Reservation r){
        r.setId(id);
        return reservationResources.updateReservation(r);
    }
    
    @DELETE
    @Path("/{id}")
    public void deleteReserv(@PathParam("id") int id){
        reservationResources.removeReservation(id);
        
    }
    
    @GET
    @Path("/true")
    public List<Reservation> allReservationTrue() {
        return reservationResources.selectAllReservationTrue();
    }
    
    
    
}
