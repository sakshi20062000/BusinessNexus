package com.business.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.business.entities.Removed;

public interface RemovedRepo extends JpaRepository<Removed,String>{
	

}
