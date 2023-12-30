package com.transport.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.transport.entites.user;

public interface UserRepo extends JpaRepository<user, Integer>{
	
	user findByEmailAddress(String EmailAddress);

}
