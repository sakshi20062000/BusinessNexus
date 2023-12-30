package com.business.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.business.entities.Experience;

public interface ExperienceRepo extends JpaRepository<Experience,Long> {

}
