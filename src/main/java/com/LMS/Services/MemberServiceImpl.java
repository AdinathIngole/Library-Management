package com.LMS.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LMS.Entity.Book;
import com.LMS.Entity.Member;
import com.LMS.Repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberRepository memberRepo;
	
	public MemberServiceImpl(MemberRepository memberRepo) {
		super();
		this.memberRepo = memberRepo;
	}

	@Override
	public List<Member> getAllMembers() {
		
		return this.memberRepo.findAll();
	}

	@Override
	public boolean addMember(Member member) {
	Optional<Member> oldmember = this.memberRepo.findById(member.getMemberId());	
		if(oldmember.isEmpty()) {
			
			this.memberRepo.save(member);
			return true;
		}
		
		return false;
	}

	@Override
	public Member getMemberById(int memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMember(int memberId, Member member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(int memberId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Member> getMemberByUserName(String userName) {
		// TODO Auto-generated method stub
		
		return memberRepo.findByUsername(userName);
	}

}
