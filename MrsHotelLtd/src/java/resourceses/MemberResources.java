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
public class MemberResources {

    private Map<Integer, Member> allMemberTrue = new HashMap();
    //private Map<Integer, Member> memberStatues = new HashMap();

    public MemberResources() {
        Member member = new Member();
        for(Member s: MemberDao.doQuery()){
            allMemberTrue.put(s.getId(), s);
        }
        
//        for(Member s: MemberDao.doSearchByEmail(member)){
//            memberStatues.put(s.getId(), s);
//        }
    }
    
    public List<Member> selectAllMemberTrue() {
       return new ArrayList<Member>(allMemberTrue.values());
    }
    
//    public List<Member> selectMemberStatues() {
//       return new ArrayList<Member>(memberStatues.values());
//    }
    
    
    public Member addAllMember(Member m) {
        MemberDao.doSave(m);
        return m;
    }
    
    public Member updateSimple(Member simple){
        if(simple.getId() <= 0){
            return null;
        }
       MemberDao.doUpdate(simple);
        return simple;
    } 
    
    
    public void removeSimple(int id){
        Member s = new Member();
        s.setId(id);
        MemberDao.doDelete(s);
    }
    
    
}
