package com.business.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.business.entities.User;

public interface UserRepo extends JpaRepository<User,Long>{
	
	
	@Query(value = "Select * from User Where email=:u and password=:p",nativeQuery=true)
	User findByEmailAndPassword(@Param("u")String name,@Param("p")String password);	
	//User findByEmailAddress(String EmailAddress);
	
	/*
	 * @Query(value = "delete Profile from User where id=:i") User
	 * deleteProfileById(@Param("i")String id);
	 */
	
	// User findByUserId(String userId); 
	
	@Query("Select u from User u WHERE u.email=:email")
	User getUserByUserName(@Param("email") String email);

	
}   