package com.business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.function.ServerRequest.Headers;

import com.business.entities.Accept;
import com.business.entities.BusinessInfo;
import com.business.entities.Post;
import com.business.entities.Removed;
import com.business.entities.Request;
import com.business.entities.User;
import com.business.repositories.BusinessUserInfo;
import com.business.repositories.UserRepo;
import com.business.services.ServiceUser;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

@Controller
public class logincontroller {

	@Autowired
	ServiceUser serviceUser;


	/*
	 * 
	  @RequestMapping(path = "/Register", method = RequestMethod.GET) public String
	  showForm(Model model) {
	  
	  System.out.println("Kishor");
	  
	  return "Register"; }
	  
	  
	  @RequestMapping(path = "/Register", method = RequestMethod.POST) 
	  public String handleForm(@ModelAttribute User user) { 
			/*
			 * hashedPassword =BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12));
			 * user.setPassword(hashedPassword); System.out.println("Register Page"); //
			 */	 
	  
	 
	  
	  
	  
	
	
	
	  
	/*
	 * 
	 * 
	 * 
	 * @RequestMapping("") public String homeUser(@RequestParam("email")String
	 * email,@RequestParam("password")String password) { User user =
	 * serviceUser.login(email, password); return null; }
	 * 
	 * 
	 * 
	 * @RequestMapping("/AcceptProfile") public String
	 * profilePage(@RequestParam("profileId") String id, HttpSession session) {
	 * 
	 * Request ans = serviceUser.getRequestById(id); System.out.println(ans); User
	 * attribute = (User) session.getAttribute("userDetails"); if (attribute ==
	 * null) { return "login"; } Accept accept = new Accept();
	 * accept.setSendId(ans.getUserId()); accept.setUserId(attribute.getId());
	 * accept.setName(attribute.getName());
	 * accept.setCategory(attribute.getCategory());
	 * accept.setEmail(attribute.getEmail());
	 * accept.setProfile(attribute.getProfile()); Accept insert =
	 * serviceUser.insert(accept); serviceUser.delete(id);
	 * 
	 * 
	 * List<Request> all = serviceUser.getAll(); System.out.println(all); Accept
	 * accept=new Accept(); System.out.println(
	 * "-----------sdf---------------------------------------------------------------------------------------"
	 * ); for(Request u:all) { accept.setId(u.getId()); accept.setName(u.getName());
	 * accept.setCategory(u.getCategory()); accept.setEmail(u.getEmail()); }
	 * serviceUser.insert(accept);
	 * 
	 * return "MyConnection"; }
	 * 
	 * 
	 * @RequestMapping("/removeProfile") public String
	 * profileRemove(@RequestParam("profileId") int id) { System.out.println(id);
	 * return"removeProfile"; }
	 * 
	 * 
	 * @RequestMapping("/MyConnectionPage") public String myConnectionPage(Model
	 * model, HttpSession session) {
	 * 
	 * List<User> all = serviceUser.getAll(); System.out.println(all);
	 * model.addAttribute("users",all);
	 * 
	 * User user = (User) session.getAttribute("userDetails"); if (user == null) {
	 * return "login"; } List<Accept> allUser = serviceUser.accepted(user.getId());
	 * model.addAttribute("user", allUser); // session.setAttribute("accept",
	 * allUser); System.out.println(allUser); return "MyConnection"; }
	 * 
	 *
	 * 
	 * @RequestMapping(path = "InsertRequest", method = RequestMethod.POST) public
	 * String insertRequest(@RequestParam("profileId") long
	 * pid, @RequestParam("name") String name,
	 * 
	 * @RequestParam("category") String category, @RequestParam("about") String
	 * about,
	 * 
	 * @RequestParam("email") String email, HttpSession session) {
	 * 
	 * User attribute = (User) session.getAttribute("userDetails"); if (attribute ==
	 * null) { return "login"; } Request request=new Request();
	 * request.setSendId(pid); request.setUser(attribute);
	 * serviceUser.insertRequest(request); return "FindPeoples";
	 * 
	 * User attribute =(User) session.getAttribute("userDetails"); Request
	 * request=new Request(); request.setUser(attribute); request.setSendId(pid);
	 * serviceUser.insertRequest(request);
	 * 
	 * return "FindPeople"; }
	 * 
	 * 
	 * 
	 * @RequestMapping("/removeProfile") public String
	 * insertRemoved(@RequestParam("profileId") String id) { Request ans =
	 * serviceUser.getRequestById(id); System.out.println(ans); Removed removed =
	 * new Removed(); removed.setId(id); removed.setName(ans.getName());
	 * removed.setCategory(ans.getCategory()); removed.setEmail(ans.getEmail());
	 * serviceUser.insertRemove(removed); serviceUser.delete(id); return
	 * "MyConnection"; }
	 * 
	 * @RequestMapping("/Register1") public String register1() { return "Register1";
	 * }
	 * 
	 * @RequestMapping(path = "/RegisterProfile", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public String profileAdd(@RequestParam("profilePic")
	 * MultipartFile file, @RequestParam("id") String id) throws IOException,
	 * SerialException, SQLException { byte[] bytes = file.getBytes(); Blob blob =
	 * new SerialBlob(bytes); User profile = serviceUser.getProfile(id);
	 * 
	 * profile.setProfile(blob); if (serviceUser.save(profile) != null && blob !=
	 * null) { return "Done"; } else { return "Error"; }
	 * 
	 * }
	 * 
	 *
	 * 
	 * @GetMapping("/ImagePage") public ResponseEntity<byte[]>
	 * imageDisplay(@RequestParam("id") String id) throws SQLException { Post image
	 * = serviceUser.getById(id); byte[] img = null; img =
	 * image.getImage().getBytes(1, (int) image.getImage().length()); return
	 * ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(img); }
	 * 
	 * @GetMapping("/AcceptImage") public ResponseEntity<byte[]>
	 * displayAcceptImage(@RequestParam("id") String id) throws SQLException {
	 * 
	 * Accept image = serviceUser.getImage(id); byte[] img = null; img =
	 * image.getProfile().getBytes(1, (int) image.getProfile().length()); return
	 * ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(img); }
	 * 
	 * @RequestMapping("/AddPost") public String
	 * insert(@RequestParam("pdescription") String caption, @RequestParam("file")
	 * MultipartFile file, Model model, HttpSession session) throws IOException,
	 * SerialException, SQLException { Post post = new Post(); byte[] bytes =
	 * file.getBytes(); SerialBlob blob = new SerialBlob(bytes);
	 * System.out.println(caption); post.setImage(blob);
	 * post.setDescription(caption); User attribute = (User)
	 * session.getAttribute("userDetails"); if (attribute == null) { return "login";
	 * } post.setUserId(attribute.getId()); // post.setFilename(file);
	 * 
	 * Post save = serviceUser.savePost(post);
	 * 
	 * return "Home";
	 * 
	 * }
	 * 
	 * @RequestMapping("/UserInfoPage") public String infoUser() {
	 * 
	 * return "UserInfoPage"; }
	 * 
	 * @RequestMapping("/insertUserInfo") public String
	 * insertUserInfo(@RequestParam("contactNo") long
	 * contactNo, @RequestParam("email") String email,
	 * 
	 * @RequestParam("gender") String gender, @RequestParam("address") String
	 * address,
	 * 
	 * @RequestParam("aadharNo") long aadhar_no, @RequestParam("panNo") String
	 * pan_No,
	 * 
	 * @RequestParam("businessName") String
	 * businessName, @RequestParam("businessType") String businessType,
	 * 
	 * @RequestParam("gstNo") String gst_No, @RequestParam("businessAddress") String
	 * businessAddress,
	 * 
	 * @RequestParam("businessContactNo") long business_Contact, HttpSession
	 * session) { BusinessInfo user = new BusinessInfo();
	 * user.setContactNo(contactNo); user.setEmailId(email); user.setGender(gender);
	 * user.setPersonal_Address(address); user.setAadhar_Number(aadhar_no);
	 * user.setPan_No(pan_No); user.setBusiness_Name(businessName);
	 * user.setBusiness_Address(businessAddress);
	 * user.setBusiness_type(businessType); user.setGstNo(gst_No);
	 * user.setBusiness_contact(business_Contact); User attribute = (User)
	 * session.getAttribute("userDetails"); if (attribute == null) { return "login";
	 * } user.setUserId(attribute.getId()); serviceUser.insertBusiness(user); return
	 * "ProfilePage"; }
	 * 
	 * @RequestMapping("/Details") public String getAllBusiness(HttpSession session,
	 * Model model) { User attribute = (User) session.getAttribute("userDetails");
	 * if (attribute == null) { return "login"; } BusinessInfo allBusiness =
	 * serviceUser.getAllBusiness(attribute.getId()); model.addAttribute("business",
	 * allBusiness); return "ProfilePage"; }
	 */
}
