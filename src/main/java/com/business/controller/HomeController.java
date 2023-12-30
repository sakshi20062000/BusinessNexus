package com.business.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.business.entities.Accept;
import com.business.entities.Post;
import com.business.entities.Request;
import com.business.entities.User;
import com.business.services.ConnectionService;
import com.business.services.PostService;
import com.business.services.ServiceUser;

@Controller
public class HomeController {
	
	@Autowired
	ServiceUser serviceUser;
	
	@Autowired
	ConnectionService connectionService;
	
	@Autowired
	PostService postService;
	
	
//	@RequestMapping("/Logout")
//	public String logout()
//	{
//		return"Login";
//	}

	//This Api IS Used to FEtch Profile On THe Home Page With the User id it is call by Home Page 
	 @GetMapping("/profilePage")
	 public ResponseEntity<byte[]> profileDisplay(@RequestParam("id") long id) throws SQLException { 
		 User profile = serviceUser.getProfile(id); byte[] imageByte = null;
		 imageByte = profile.getPhoto().getBytes(1, (int) profile.getPhoto().length()); 
		 return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageByte); }
	 
	 
	     @GetMapping("/requestImage")
	     public ResponseEntity<byte[]>getImageRequest(@RequestParam("id") long id) throws SQLException {
		 Request image = serviceUser.getImageRequest(id); 
		 byte[] img = null;
	     img =image.getUser().getPhoto().getBytes(1, (int) image.getUser().getPhoto().length()); 
	     return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(img); 
	     }
	 
	 //this Api is Used to Clear the Session id once   we press the logout button from the home page
	  @GetMapping(path = "/Logout")
	  public String logout(HttpSession session) {

		  System.out.println(session);
		  // Get the session without creating a new one if it doesn't exist
		  if (session != null) { session.invalidate();// Invalidatethe ses sion System.out.println(session); 
		  return "index"; 
		  }
		  return   "redirect:/login"; // Redirect to the login page }
		  }
	  
	  
	  @RequestMapping("/AddPost") public String
	     insert(@RequestParam("pdescription") String caption, @RequestParam("file")
		  MultipartFile file, Model model, HttpSession session) throws IOException,
		 SerialException, SQLException { 
		  Post post = new Post(); 
		  byte[] bytes =file.getBytes(); 
		  SerialBlob blob = new SerialBlob(bytes);
		  System.out.println(caption);
		  post.setImage(blob);
		  post.setDescription(caption); 
		  User attribute = (User)session.getAttribute("userDetails");
		  if (attribute == null) 
		  { return "login";
		  
		   } 
		  post.setUser(attribute); // post.setFilename(file);
		  List<Accept> findByUserId = connectionService.getAllAcceptByUserId(attribute.getUserId());
		 
		  Post save = serviceUser.savePost(post);
		  
		  return "redirect:/HomePage";

		  }
		
	  @RequestMapping("/demo")
	  @ResponseBody
	  public String getPost()
	  {
		  List<Post> post = postService.getPost();
		  return post.toString();
	  }

	  
		@RequestMapping("/HomePage")
		public String Home(HttpSession session,Model model) {
			System.out.println("this is index page");
		   
			User attribute = (User)session.getAttribute("userDetails");
			//User attribute2 =(User) session.getAttribute("registerUser");
			//System.out.println(attribute);
			if(attribute==null )
			{
				return "login";
			}
			
			model.addAttribute("UserDetails",attribute);
			
			
			List<Post> postsFromConnections = postService.getPostsFromConnections(attribute);
	        model.addAttribute("posts", postsFromConnections);
			  
				/*
				 * List<Post> acceptedPost = serviceUser.getAcceptedPost(attribute.getUserId());
				 * 
				 * 
				 * model.addAttribute("post",acceptedPost);
				 */
			  
			
			 
			/*
			 * List<Accept> acceptedPostsForUser =
			 * serviceUser.getAcceptedPostsForUser(attribute.getId());
			 * model.addAttribute("posts", acceptedPostsForUser);
			 * System.out.println(acceptedPostsForUser);
			 */
				
				 
			 
			/*
			 * System.out.println(email); System.out.println(password);
			 */
			return "Home";
		}
		
		@GetMapping("/ImagePage") public ResponseEntity<byte[]>
		 imageDisplay(@RequestParam("id") long id) throws SQLException { Post image
		 = serviceUser.getById(id); byte[] img = null;
		 img = image.getImage().getBytes(1, (int) image.getImage().length()); return
		 ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(img);
		 }
		}

