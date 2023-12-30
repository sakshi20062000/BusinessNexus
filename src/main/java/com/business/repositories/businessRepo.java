package com.business.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.business.entities.Business;

public interface businessRepo extends JpaRepository<Business, Long> {

}
