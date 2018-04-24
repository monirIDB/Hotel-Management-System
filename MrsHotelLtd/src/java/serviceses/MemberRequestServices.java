/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serviceses;

import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import model.Member;
import resourceses.MemberRequestResource;

/**
 *
 * @author MIZAN
 */
@Path("/memberrequest")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class MemberRequestServices {
    
    MemberRequestResource memberRequestResource = new MemberRequestResource();
    
    @GET
    public List<Member> selectAllRequest() {
        return memberRequestResource.selectAllMemberRequest();
    }
    
    @PUT
    @Path("/{id}")
    public Member updateMemberRequest(@PathParam("id") int id, Member simple){
        simple.setId(id);
        return memberRequestResource.updateSimple(simple);
    }
  
    @DELETE
    @Path("/{id}")
    public void deleteSimple(@PathParam("id") int id){
        memberRequestResource.removeRequest(id);
        
    }
}
