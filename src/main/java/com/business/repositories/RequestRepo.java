package com.business.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.business.entities.Request;
import com.business.entities.User;

public interface RequestRepo extends JpaRepository<Request,Long> {
	
	
	@Query(value = "select * from request join user on request.user_user_id=user.user_id where user_user_id =:s",nativeQuery = true)
	public List<Request> getRequestByUserId(@Param("s")long n);
	
	
     Request findByUserAndSendId(User sender, User receiver);
	
	

}
