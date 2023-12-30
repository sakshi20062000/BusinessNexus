package com.business.controller;

import java.security.Principal;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.business.entities.Accept;
import com.business.entities.Request;
import com.business.entities.User;
import com.business.repositories.AcceptRepo;
import com.business.repositories.RequestRepo;
import com.business.services.ConnectionService;
import com.business.services.ServiceUser;

@Controller
public class ConnectionController {

	/* This ServiceUser Is Used to call the User repo pridefined Mathods */
	@Autowired
	private ServiceUser serviceUser;

	/* This ServiceUser Is Used to call the connection repo pridefined Mathods */
	@Autowired
	private ConnectionService connectionService;

	/* This ServiceUser Is Used to call the Requestrepo pridefined Mathods */
	@Autowired
	private RequestRepo requestRepo;

	@Autowired
	private AcceptRepo acceptRepo;

	/*
	 * @GetMapping("/connections/{userId}") public String
	 * getConnections(@PathVariable long userId, Model model) { User user =
	 * serviceUser.getUserById(userId); if (user == null) { return "error"; //
	 * Create an error.jsp for error handling }
	 * 
	 * List<User> connections = connectionService.getConnectionsForUser(user);
	 * model.addAttribute("user", connections); return "MyConnection";/// we have to
	 * redirect to connection Page But for testing purpose I am Doing it as Find
	 * People }
	 */

	// When We Click On the Connect Button That will redirect to This Api From this
	// Api the Request Table will be inserted by Particular attribute
//	    @PostMapping("/InsertRequest")
//	    public String sendRequest(@RequestParam("profileId")long id,HttpSession session) {
//	    	User attribute =(User) session.getAttribute("userDetails");
//	    	System.out.println("User Login Id"+attribute.getUserId());
//	        User sender = serviceUser.getUserById(attribute.getUserId());
//	        System.out.println("Id "+id);
//	        User receiver = serviceUser.getUserById(id);
//
//	        if (sender != null && receiver != null) {
//	            Request request = new Request();
//	            request.setSendId(sender);
//	            request.setUser(receiver);
//	            requestRepo.save(request);
//	        }
//
//	        return "redirect:/FindPeoples";
//	    }

	@PostMapping("/InsertRequest")
	public String sendRequest(@RequestParam("profileId") long id, HttpSession session) {
		User attribute = (User) session.getAttribute("userDetails");
		System.out.println("User Login Id: " + attribute.getUserId());

		User sender = serviceUser.getUserById(attribute.getUserId());
		User receiver = serviceUser.getUserById(id);

		if (sender != null && receiver != null) {
			// Check if a request already exists from sender to receiver
			Request existingRequestSenderToReceiver = requestRepo.findByUserAndSendId(sender, receiver);

			// Check if a request already exists from receiver to sender
			Request existingRequestReceiverToSender = requestRepo.findByUserAndSendId(receiver, sender);

			if (existingRequestSenderToReceiver == null) {
				// Create a new request from sender to receiver if it doesn't already exist
				Request request1 = new Request();
				request1.setSendId(sender);
				request1.setUser(receiver);
				request1.setStatus("pending"); // Set the initial status to "pending"
				requestRepo.save(request1);
			} else {
				// Update the status of the existing request from sender to receiver
				existingRequestSenderToReceiver.setStatus("pending"); // Or any other appropriate status
				requestRepo.save(existingRequestSenderToReceiver);
			}

			if (existingRequestReceiverToSender == null) {
				// Create a new request from receiver to sender if it doesn't already exist
				Request request2 = new Request();
				request2.setSendId(receiver);
				request2.setUser(sender);
				request2.setStatus("pending"); // Set the initial status to "pending"
				requestRepo.save(request2);
			} else {
				// Update the status of the existing request from receiver to sender
				existingRequestReceiverToSender.setStatus("pending"); // Or any other appropriate status
				requestRepo.save(existingRequestReceiverToSender);
			}
		}

		return "redirect:/FindPeoples";

	}

	@GetMapping("/AcceptImage")
	public ResponseEntity<byte[]> displayAcceptImage(@RequestParam("id") long id) throws SQLException {

		Accept image = serviceUser.getImage(id);
		byte[] img = null;
		img = image.getReceiverId().getPhoto().getBytes(1, (int) image.getReceiverId().getPhoto().length());
		return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(img);
	}

	
	/*
	 * @PostMapping("/AcceptProfile") public String
	 * acceptRequest(@RequestParam("profileId")Long requestId, HttpSession session)
	 * { User attribute =(User) session.getAttribute("userDetails"); User
	 * currentUser = serviceUser.getUserById(attribute.getUserId()); Request request
	 * = requestRepo.findById(requestId).orElse(null); if (request != null &&
	 * currentUser != null) { Accept accept = new Accept();
	 * accept.setRequest(request); accept.setUserId(currentUser);
	 * acceptRepo.save(accept);
	 * 
	 * }
	 *  
	 * return "redirect:/MyConnection"; }
	 */

	@RequestMapping("/ImpConnectionPage")
	public String impConnection(HttpSession session, Model model) {
		// User attribute = (User)session.getAttribute("userId");

		User attribute = (User) session.getAttribute("userDetails");
		if (attribute == null) {
			return "login";
		}
		long id = attribute.getUserId();
		List<Request> user = serviceUser.getRequest(id); // System.out.println(all);
		model.addAttribute("users", user); // System.out.println(all);
		return "ImpConnection";

	}

	@RequestMapping("FindPeoples")
	public String findPeoples(Model model) {
		List<User> all = serviceUser.getUser();
		// System.out.println(all);
		model.addAttribute("users", all); // id,name,email,category,profile
		return "FindPeoples";
	}

	// Just For the Testing Purpose

	@RequestMapping("/MyConnectionPage")
	public String getAcceptByUsedId(HttpSession session, Model model) {
		User attribute = (User) session.getAttribute("userDetails");
		long userId = attribute.getUserId();
		List<Accept> findByUserId = connectionService.getAllAcceptByUserId(userId);
		model.addAttribute("connections", findByUserId);
		return "MyConnection";
	}

//	    @RequestMapping("/MyConnectionPage")
//	    @ResponseBody
//	    public String connections(HttpSession session,Model model)
//	    {
//			/*
//			 * User attribute =(User) session.getAttribute("userDetails"); List<Accept>
//			 * findByUserId = connectionService.findByUserId(attribute.getUserId());
//			 * 
//			 * model.addAttribute("connections", findByUserId);
//			 */
//	    	User attribute=(User)session.getAttribute("userDetails");
//	    	long userId = attribute.getUserId();
//	    	 List<Accept> findByUserId = connectionService.getAllAcceptByUserId(userId);
//	    	return findByUserId.toString();
//	    	
//	    }

	@RequestMapping("/AcceptProfile")
	public String acceptRequest(@RequestParam("profileId") Long requestId, HttpSession session) {

		User user = connectionService.getUser(requestId);
		User currentUser = (User) session.getAttribute("userDetails");

		// Check if the user has already accepted this request
		boolean hasAccepted = acceptRepo.existsByUserIdAndReceiverId(currentUser, user);

		if (!hasAccepted) {
			Accept accept = new Accept();

			accept.setReceiverId(user);
			accept.setUserId(currentUser);
			acceptRepo.save(accept);
			serviceUser.delete(requestId);

		}

		// Redirect to the "MyConnection" page
		return "ImpConnection";
	}

}
