package com.business.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.business.entities.Comment;
import com.business.entities.User;
import com.business.services.CommentService;

@Controller
public class CommentController {
	
	
    
	 @Autowired
	    private CommentService commentService;

	    @GetMapping("/getComments")
	    public List<Comment> getComments(@RequestParam Long postId) {
	        return commentService.getCommentsForPost(postId);
	    }

	    @PostMapping("/postComment")
	    public String postComment(@RequestParam Long postId, @RequestParam String commentText) {
	       
	      commentService.postComment(postId, commentText);
	      return"Home";
	    }

}
