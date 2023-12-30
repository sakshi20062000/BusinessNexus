package com.business.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.business.entities.BusinessInfo;

public interface BusinessUserInfo extends JpaRepository<BusinessInfo, Long>{

	@Query(value = "select * from business_info where user_id=:u",nativeQuery = true)
	public BusinessInfo getBusinessInfoByUserId(@Param("u")String id);
	
}
