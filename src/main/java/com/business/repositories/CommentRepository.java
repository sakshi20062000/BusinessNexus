package com.business.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.business.entities.Comment;

public interface CommentRepository extends JpaRepository<Comment,Long>{
	
	List<Comment> findByPostId(Long postId);
	
	

}
