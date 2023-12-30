package com.business.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.business.entities.User;
import com.business.services.PostService;

@Controller
public class LikeController {
	
	
	 @Autowired
	    private PostService postService;

	    @PostMapping("/likePost")
	    public ResponseEntity<String> likePost(@RequestParam Long postId, HttpSession session) {
	    	
	        try {
	        	User currentUser =(User) session.getAttribute("userDetails");
	            postService.likePost(postId, currentUser);
	            return ResponseEntity.ok("Post liked!");
	        } catch (Exception e) {
	            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error liking the post.");
	        }
	    }

}
