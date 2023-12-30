package com.business.services;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.entities.Accept;
import com.business.entities.BusinessInfo;
import com.business.entities.Post;
import com.business.entities.Removed;
import com.business.entities.Request;
import com.business.entities.User;
import com.business.repositories.AcceptRepo;
import com.business.repositories.BusinessUserInfo;
import com.business.repositories.PostRepo;
import com.business.repositories.RemovedRepo;
import com.business.repositories.RequestRepo;
import com.business.repositories.UserRepo;



@Service
public class ServiceUser implements BusinessService{
	
	@Autowired
	private BusinessUserInfo businessRepo;
	
	@Autowired
	private UserRepo userRepo;
	
	@Autowired
	private AcceptRepo acceptRepo;
	
	@Autowired
	private RequestRepo requestRepo;
	
	@Autowired
	private RemovedRepo removedRepo;
	
	@Autowired
	private PostRepo postRepo;
	public User save(User user1)
	{
	 User save = userRepo.save(user1);
	  return save;
		
	}
	
	public User login(String email,String password)
	{
		User user = userRepo.findByEmailAndPassword(email,password);
		return user;
	}
	
	public List<Request> getAll()
	{
		List<Request> all = requestRepo.findAll();
		return all;
	}
	
	public List<Accept> getAllUser()
	{
		List<Accept> all = acceptRepo.findAll();
		return all;
	}
	
	
	public Accept insert(Accept accept)
	{
		Accept save = acceptRepo.save(accept);
		return save;
	}
	
	public Request insertRequest(Request request)
	{
		Request save = requestRepo.save(request);
		return save;
	}
	public List<User> getUser()
	{
		List<User> all = userRepo.findAll();
		return all;
	}
	
	public Request getRequestById(long id)
	{
	     	
		return  requestRepo.findById(id).get();
		
				
	}
	
	public void  delete(long id)
	{
		requestRepo.deleteById(id);
	}

	
	public Removed insertRemove(Removed removed)
	{
		return removedRepo.save(removed);
	}
	
	
	public User getProfile(long id)
	{
		
		User user = userRepo.findById(id).get();
		
		return user;
			
	}
	
	public Post savePost(Post post)
	{
		return postRepo.save(post);
	} 
	
	
	/*
	 * public List<Post> getAcceptedPost(long s) { List<Post> post =
	 * postRepo.getPost(s); return post; }
	 */
	public List<Post> getPost()
	{
		return postRepo.findAll();
	}
	
	public Post getById(long id)
	{
		return postRepo.findById(id).get();
	}
	
	public List<Request> getRequest(long s)
	{
		return requestRepo.getRequestByUserId(s); 
	}
	
	public List<Accept> accepted(User user)
	{
		return acceptRepo.accepted(null);
	}
	
	
	public List<Accept> aaa(String s)
	{
		return acceptRepo.acceptedUser(s);
	}
	
	
	public Accept getImage(long id)
	{
		return acceptRepo.findById(id).get();
	}
	
	public Request getImageRequest(long id)
	{
		return requestRepo.findById(id).get();
	}
	
	
	public BusinessInfo insertBusiness(BusinessInfo business)
	{
		return businessRepo.save(business);
	}
	
	public BusinessInfo getAllBusiness(String user_Id)
	{
		
		return businessRepo.getBusinessInfoByUserId(user_Id);
	}
	
	/*
	 * public List<Accept> getAcceptedPostsForUser(String userId) { User user =
	 * userRepo.findById(userId).get(); System.out.println(user); if (user != null)
	 * { return acceptRepo.findByPostUser(user); } return Collections.emptyList(); }
	 */
	/*
	 * public User deleteProfile(String id) { return userRepo.deleteProfileById(id);
	 * }
	 */
	
     public User getUserById(long id)
     {
    	 User user = userRepo.findById(id).get();
        return user;
        		
     }
	
}
