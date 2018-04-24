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
import model.Member;
import model.MemberDao;

/**
 *
 * @author MIZAN
 */
public class MemberRequestResource {
    private Map<Integer, Member> allMemberFalse = new HashMap();
    
    public MemberRequestResource() {
        for(Member s: MemberDao.doQueryRequest()){
            allMemberFalse.put(s.getId(), s);
        }
    }
    
    public List<Member> selectAllMemberRequest() {
       return new ArrayList<Member>(allMemberFalse.values());
    }
    
    
    public Member updateSimple(Member simple){
        if(simple.getId() <= 0){
            return null;
        }
       MemberDao.doUpdate(simple);
        return simple;
    } 
    
    public void removeRequest(int id){
        Member s = new Member();
        s.setId(id);
        MemberDao.doDelete(s);
    }
    
    
    
}
