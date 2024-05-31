package com.LMS.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.LMS.Entity.Member;

@Repository
public interface MemberRepository extends JpaRepository<Member, Integer> {
	
	List<Member> findByUsername(String user_name);

	List<Member> findByUsernameAndPassword(String username, String password);

	List<Member> findByUsernameAndEmail(String username, String email);

}
