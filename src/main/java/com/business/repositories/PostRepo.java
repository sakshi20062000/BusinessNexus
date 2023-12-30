package com.business.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.business.entities.Post;
import com.business.entities.User;

public interface PostRepo extends JpaRepository<Post,Long>{
	
	/* List<Post> findByUser(User user); */
	
	/*
	 * @Query(
	 * value="select * from post join accept on post.id=accept.post_id where accept.user_id_user_id=:a"
	 * ,nativeQuery = true) public List<Post> getPost(@Param("a")long s);
	 */

	
	// List<Post> findByUserIn(List<User> users);
	
	 @Query("SELECT p FROM Post p WHERE p.user.id IN :userIds")
	    List<Post> findByUserIds(@Param("userIds") List<Long> userIds);
}
