package com.business.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.entities.Comment;
import com.business.entities.Post;
import com.business.entities.User;
import com.business.repositories.CommentRepository;
import com.business.repositories.PostRepo;

@Service
public class CommentService {
	
	@Autowired
	private PostRepo postRepo;
	@Autowired
    private CommentRepository commentRepository;

    public List<Comment> getCommentsForPost(Long postId) {
        return commentRepository.findByPostId(postId);
    }

    public Comment postComment(Long postId, String commentText) {
        Comment comment = new Comment();
        Post post = postRepo.findById(postId).get();
        
        comment.setPost(post); // Assuming postRepository is injected
        comment.setText(commentText);
        comment.setUser(post.getUser());
        return commentRepository.save(comment);
    }

}
