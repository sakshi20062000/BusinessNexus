package com.business.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.entities.Accept;
import com.business.entities.User;
import com.business.repositories.AcceptRepo;
import com.business.repositories.RequestRepo;
import com.business.repositories.UserRepo;

@Service
public class ConnectionService {
	
	@Autowired
	private RequestRepo requestRepo;
	
	@Autowired
	private UserRepo userRepo;
	
	@Autowired
	private AcceptRepo acceptRepo;
	 
	/*
	 * public List<User> getConnectionsForUser(User user) { List<User> connections =
	 * new ArrayList<>();
	 * 
	 * List<Request> sentRequests = requestRepo.findByUserOrSendId(user, user);
	 * 
	 * for (Request request : sentRequests) { Accept accept =
	 * acceptRepo.findByRequest(request); if (accept != null) { User otherUser =
	 * (user.equals(request.getSendId())) ? request.getUser() : request.getSendId();
	 * connections.add(otherUser); } }
	 * 
	 * return connections; }
	 */
	
	
	public List<Accept> getAllAcceptByUserId(long id)
	{
		List<Accept>findByUserId = acceptRepo.findByUserId(id);
		return findByUserId;
	}
	
	
	public User getUser(long id)
	{
		User user = userRepo.findById(id).get();
		return user;
	}
	
	/*
	 * public List<Accept> findByUserId(long id) { List<Accept> find =
	 * acceptRepo.find(id); return find; }
	 */

}
