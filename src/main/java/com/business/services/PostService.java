package com.business.services;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.business.entities.Accept;
import com.business.entities.Post;
import com.business.entities.User;
import com.business.repositories.AcceptRepo;
import com.business.repositories.PostRepo;
import com.business.repositories.UserRepo;

@Service
public class PostService  {
  
	@Autowired
	private PostRepo postRepo;
	@Autowired
	private UserRepo userRepo;
	@Autowired
	private AcceptRepo acceptRepo;
	
	public List<Post> getPost()
	{
		List<Post> findAll = postRepo.findAll();
		return findAll;
	}
	

	 public List<Post> getPostsFromConnections(User user) {
	        // Fetch the connections of the user
	        List<Accept> connections = acceptRepo.findByUserId(user.getUserId());
	        
	        // Extract the user IDs of the connections
	        List<Long> connectionUserIds = connections.stream()
	                .map(connection -> connection.getUserId().getUserId())
	                .collect(Collectors.toList());

	        connectionUserIds.add(user.getUserId());
	        // Fetch posts from the connections
	        List<Post> postsFromConnections = postRepo.findByUserIds(connectionUserIds);
	        
	        return postsFromConnections;
	    }
	 
	 
	 public List<Post> getPostsFromConnectionsProfile(User user) {
	        // Fetch the connections of the user
	        List<Accept> connections = acceptRepo.findByUserId(user.getUserId());
	        
	        // Extract the user IDs of the connections
	        List<Long> connectionUserIds = connections.stream()
	                .map(connection -> connection.getReceiverId().getUserId())
	                .collect(Collectors.toList());

	       // connectionUserIds.add(user.getUserId());
	        // Fetch posts from the connections
	        List<Post> postsFromConnections = postRepo.findByUserIds(connectionUserIds);
	        
	        return postsFromConnections;
	    }
	 
	 
	 
	 public void likePost(long postId, User user) {
	        // Retrieve the post by its ID
	        Optional<Post> postOptional = postRepo.findById(postId);

	        if (postOptional.isPresent()) {
	            Post post = postOptional.get();

	            // Check if the user has already liked the post to prevent duplicate likes
	            if (!post.getLikedBy().contains(user)) {
	                post.getLikedBy().add(user);
	                postRepo.save(post);
	            }
	        }
	    }
}
