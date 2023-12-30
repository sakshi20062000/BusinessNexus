package com.transport.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transport.entites.user;
import com.transport.repositories.UserRepo;

@Service
public class ServiceUser {
	
	@Autowired
	private UserRepo userRepo;
	
	
	public user save(user user1)
	{
	  user u=userRepo.save(user1);
	  return u;
		
	}
	
	
	

}
