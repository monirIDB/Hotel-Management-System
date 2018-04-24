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
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import model.Member;
import resourceses.MemberResources;

/**
 *
 * @author MIZAN
 */
@Path("/memberservice")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class MemberServices {
    
    MemberResources memberResource = new MemberResources();
    
    @GET
    public List<Member> getSimple() {
        return memberResource.selectAllMemberTrue();
    }
    
    
    @POST
    public Member addMember(Member m){
        return memberResource.addAllMember(m);
        
    }
    
    @PUT
    @Path("/{id}")
    public Member updateSimple(@PathParam("id") int id, Member simple){
        simple.setId(id);
        return memberResource.updateSimple(simple);
    }
    
    @DELETE
    @Path("/{id}")
    public void deleteSimple(@PathParam("id") int id){
        memberResource.removeSimple(id);
    }
    
    
//    @GET
//    @Path("/statues")
//    public List<Member> selectAllRequest() {
//        return memberResource.selectMemberStatues();
//    }
    
//    
//    @DELETE
//    @Path("/request/{rid}")
//    public void deleteRequest(@PathParam("rid") int id){
//        memberResource.removeSimple(id);
//    }
//    
    
}
