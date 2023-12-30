package com.business.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.business.entities.Accept;
import com.business.entities.Request;
import com.business.entities.User;

public interface AcceptRepo extends JpaRepository<Accept,Long> {
	
	/*
	 * @Query(value =
	 * "INSERT INTO accept (id, name, email, category) SELECT id, name, email, category FROM user WHERE id =:i"
	 * ,nativeQuery = true) public Accept insert(@Param("i")int id);
	 */
	
	
	@Query(value = "select * from accept where send_id=:s",nativeQuery = true)
	public List<Accept> accepted(@Param("s")String s);
	
	//List<Accept> findByPostUserId(String id);
	@Query(value = "select * from accept,user on accept.user=user.userId where user_id=:s",nativeQuery = true)
	public List<Accept> acceptedUser(@Param("s")String s);

	
	//Accept findByRequest(Request request);
	
//	List<Accept> findByUserId(long id);
	
	
	@Query(value = "select * from  accept where receiver_id_user_id  = :s", nativeQuery = true)
	List<Accept> findByUserId(@Param("s") long userId);
	
	
	
	boolean existsByUserIdAndReceiverId(User userId,User receiverId);

}

