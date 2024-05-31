package com.LMS.Services;

import java.util.List;

import com.LMS.Entity.Member;

public interface MemberService {
	

	public List<Member> getAllMembers();
	
	public boolean addMember(Member member);
	List<Member> getMemberByUserName(String userName);

	
	public Member getMemberById(int memberId);
	
	public void updateMember(int memberId,Member member);
	
	public void deleteMember(int memberId);
	
	//public PaginationResult<Member> getPaginatedMembers(int currentPage, int pageSize);

}
