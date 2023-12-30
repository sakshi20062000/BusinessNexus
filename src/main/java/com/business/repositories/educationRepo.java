package com.business.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.business.entities.Education;

public interface educationRepo extends JpaRepository<Education, Long> {

}

