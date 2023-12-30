package com.business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.business.entities.Accept;
import com.business.entities.Post;
import com.business.entities.User;
import com.business.services.ConnectionService;
import com.business.services.PostService;
import com.business.services.ServiceUser;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;

@Controller
public class MainController {

	@Autowired
	private ServiceUser serviceUser;
	@Autowired
	ConnectionService connectionService;
	
	@Autowired
	PostService postService;

	/*
	 * @RequestMapping("/HomePage") public String Home(HttpSession session,Model
	 * model) { System.out.println("this is index page");
	 * 
	 * User attribute = (User)session.getAttribute("userDetails");
	 * //System.out.println(attribute); if(attribute==null) { return "login"; }
	 * model.addAttribute("UserDetails",attribute);
	 * 
	 * List<Post> post2 = serviceUser.getPost();
	 * 
	 * 
	 * List<Post> acceptedPost = serviceUser.getAcceptedPost(attribute.getUserId());
	 * 
	 * 
	 * model.addAttribute("post",acceptedPost);
	 * 
	 * 
	 * 
	 * 
	 * 
	 * List<Accept> acceptedPostsForUser =
	 * serviceUser.getAcceptedPostsForUser(attribute.getId());
	 * model.addAttribute("posts", acceptedPostsForUser);
	 * System.out.println(acceptedPostsForUser);
	 * 
	 * 
	 * 
	 * 
	 * 
	 * System.out.println(email); System.out.println(password);
	 * 
	 * return "Home"; }
	 */
	@RequestMapping("/Home")
	public String home() {
		return "Home";
	}

	@RequestMapping("/index")
	public String index() {
		System.out.println("this is index page");
		return "index";
	}

	@RequestMapping(path = "/login", headers = "Cache-Control=no-cache, no-store, must-revalidate")
	public String login() {
		System.out.println("this is office page");
		return "login";
	}

	@RequestMapping("/Register")
	public String register() {
		System.out.println("This Is Register Page");
		return "Register";
	}

	/*
	 * @RequestMapping("/ForgetPassword") public String forget() {
	 * System.out.println("This Is Register Page"); return "ForgetPassword"; }
	 */
	/*
	 * @RequestMapping("/EnterOpt") public String enterOtp() { return"EnterOpt"; }
	 */
	@RequestMapping("/Verification")
	public String verify() {
		System.out.println("This Is Verification Page");
		return "Verification";
	}

	@RequestMapping("/AddEmail")
	public String addEmail() {
		System.out.println("Email  Page");
		return "AddEmail";

	}

	@RequestMapping("/NewPassword")
	public String newPassword() {
		System.out.println("Get New Password");
		return "NewPassword";
	}

	@RequestMapping("/Visibility")
	public String visibility() {
		System.out.println("Visibility Page");
		return "Visibility";
	}

	@RequestMapping("/ProfileViewing")
	public String profileViewing() {
		System.out.println("Profile View Page");
		return "ProfileViewing";
	}

	@RequestMapping("/EditProfile")
	public String editProfile() {
		System.out.println("Edit Profile View Page");
		return "EditProfile";
	}

	@RequestMapping("/Connections")
	public String connections() {
		System.out.println("This Is Connections  View Page");
		return "Connections";
	}

	@RequestMapping("/Advertising")
	public String advertising() {
		System.out.println("This Is Advertising  View Page");
		return "Advertising";
	}

	@RequestMapping("/Locations")
	public String locations() {
		System.out.println("This Is Locations  View Page");
		return "Locations";
	}

	@RequestMapping("/Demographics")
	public String demographic() {
		System.out.println("This Is Demographics  View Page");
		return "Demographics";
	}

	@RequestMapping("/Communities")
	public String communities() {
		System.out.println("This Is Demographics  View Page");
		return "Communities";
	}

	@RequestMapping("/BusinessInformation")
	public String businessInfo() {
		System.out.println("This Is BusinessInfo  View Page");
		return "BusinessInformation";
	}

	@RequestMapping("/InteractWithBusiness")
	public String interactBusiness() {
		return "InteractWithBusiness";

	}

	@RequestMapping("/Followers")
	public String followers() {
		System.out.println("Followers Page");
		return "Followers";
	}

	@RequestMapping("/Share_Profile_Updates")
	public String shareProfileUpdates() {
		return "Share_Profile_Updates";
	}

	@RequestMapping("/Notifications")
	public String notification() {
		return "Notifications";
	}

	@RequestMapping("/Messaging")
	public String message() {
		return "Messaging";
	}

	@RequestMapping("/Community")
	public String community() {
		return "Community";
	}

	@RequestMapping("/Updating_Profile")
	public String updateProfile() {
		return "Updating_Profile";
	}

	@RequestMapping("/notify1")
	public String notify1() {
		System.out.println("This Is notify1 Page");
		return "notify1";

	}

	@RequestMapping("/setting")
	public String setting() {
		System.out.println("This Is setting Page");
		return "setting";
	}

	@RequestMapping("/Sign_Security")
	public String signSecurity() {
		return "Sign_Security";
	}

	@RequestMapping("Email_Address")
	public String emailAddress() {
		return "Email_Address";
	}

	@RequestMapping("Phone_Numbers")
	public String phoneNumbers() {
		return "Phone_Numbers";
	}

	@RequestMapping("AccountPreferance")
	public String accountPreferance() {
		return "AccountPreferance";
	}

	@RequestMapping("People_Viewed")
	public String peopleViewed() {
		return "People_Viewed";

	}

	@RequestMapping("People_Unfollowed")
	public String peopleUnfollowed() {
		return "People_Unfollowed";

	}

	@RequestMapping("/Language")
	public String language() {
		return "Language";
	}

	@RequestMapping("/DarkMode")
	public String darkMode() {
		return "DarkMode";
	}

	@RequestMapping("/DataPrivacy")
	public String dataprivacy() {
		System.out.println("This Is dataprivacy Page");
		return "DataPrivacy";
	}

	@RequestMapping("/InvitationToConnect")
	public String invitationTOConnect() {
		System.out.println("This Is  Invitation Connection");
		return "InvitationToConnect";
	}

	@RequestMapping("/Messages_You_Recevied")
	public String Messages_You_Recevied() {
		return "Messages_You_Recevied";
	}

	@RequestMapping("/ExportYourData")
	public String exportYourData() {
		return "ExportYourData";
	}

	@RequestMapping("/NetworkInvite")
	public String networkInvite() {
		return "NetworkInvite";
	}

	@RequestMapping("/Navbar")
	public String Navbar() {
		System.out.println("this is Navbar page");
		return "Navbar";
	}

	@RequestMapping("/HomeNavbar")
	public String homenavbar() {
		System.out.println("This Is homenavbar Page");
		return "HomeNavbar";
	}

	@RequestMapping("/Message")
	public String messages() {
		return "Message";
	}

	@RequestMapping("/Groups")
	public String groups() {
		return "Groups";
	}

	@RequestMapping("/Connectionpage")
	public String Connectionpage() {
		return "Connectionpage";
	}

	@RequestMapping("/Product")
	public String Product() {
		return "Product";
	}

	@RequestMapping("/Events")
	public String event() {
		return "Events";
	}

	@RequestMapping("/ThisWeek")
	public String thisWeek() {
		return "ThisWeek";
	}

	@RequestMapping("/AllReminder")
	public String allReminder() {
		return "AllReminder";
	}

	@RequestMapping("/MyConnection")
	public String MyConnections() {
		System.out.println("This Is Connections  View Page");
		return "MyConnection";
	}

	@RequestMapping("/HomeSidebar")
	public String HomeSidebar() {
		System.out.println("This Is Connections  View Page");
		return "HomeSidebar";
	}

	@RequestMapping("/AllProducts")
	public String allProducts() {
		return "AllProducts";
	}

	@RequestMapping("/ImpConnection")
	public String impConnection() {
		System.out.println("IMP Cpnnection");
		return "ImpConnection";
	}

	@RequestMapping("/Groups1")
	public String group1() {
		return "Groups1";
	}

	@RequestMapping("/Events1")
	public String event1() {
		return "Events1";
	}

	@RequestMapping("/mePage")
	public String updateProfileUser(@RequestParam("id") long id, @RequestParam("profile_picture") MultipartFile file)
			throws IOException, SerialException, SQLException {
		System.out.println(id);
		byte[] bytes = file.getBytes();
		Blob blob = new SerialBlob(bytes);
		User profile = serviceUser.getProfile(id);
		profile.setPhoto(blob);
		serviceUser.save(profile);
		return "Home";
	}

	@RequestMapping("DeleteProfile")
	public String deleteProfile(@RequestParam("id") long id) {
		System.out.println(id);
		User profile = serviceUser.getProfile(id);
		profile.setPhoto(null);
		serviceUser.save(profile);
		return "Home";
	}

	@RequestMapping("/ProfilePage")
	public String profile(Model model,HttpSession session) {
		
		User attribute = (User)session.getAttribute("userDetails");
		//System.out.println(attribute);
		if(attribute==null)
		{
			return "login";
		}
		model.addAttribute("UserDetails",attribute);
		List<Post> postsFromConnections = postService.getPostsFromConnectionsProfile(attribute);
        model.addAttribute("posts", postsFromConnections);
		return "ProfilePage";
	}

	@RequestMapping("/LikePage")
	public String like() {

		return "Home";
	}

	@RequestMapping("/DislikePage")
	public String disLike() {
		return "Home";
	}

}