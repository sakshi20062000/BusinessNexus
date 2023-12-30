package com.business.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.business.entities.Business;
import com.business.entities.Education;
import com.business.entities.Experience;
import com.business.entities.Location;
import com.business.entities.User;
import com.business.repositories.ExperienceRepo;
import com.business.repositories.UserRepo;
import com.business.repositories.businessRepo;
import com.business.repositories.educationRepo;
import com.business.services.EmailService;
import com.business.services.ServiceUser;

@Controller
public class RegisterProcessController {
	
	@Autowired
	private UserRepo repo;
	
	@Autowired
	private ServiceUser serviceUser;  
	
	@Autowired
	private educationRepo educationRepo;
	
	
	 @Autowired
	private ExperienceRepo expRepo;
	@Autowired
	private businessRepo businessRepo;
	
	
	
	 @RequestMapping(path = "/login", method = RequestMethod.GET) public String
	  showLog(Model model) {
	  
	  User user = new User(); model.addAttribute(user);
	  
	  return "login"; }
	  
	 
	 
	 
		@RequestMapping(path = "/RegisterPage", method = RequestMethod.POST)
		//@ResponseBody
		public String login(@RequestParam("email") String email,@RequestParam("lastName")String lastName,@RequestParam("confirmPassword")String confirmPassword ,@RequestParam("password") String password,

				@RequestParam("firstName") String firstName,@RequestParam("doc")String doc,@RequestParam("types") String types, @RequestParam("check")String check , Model model,HttpSession session) {

			
			  System.out.println(email);
			  System.out.println(lastName);
			  System.out.println(confirmPassword);
			  System.out.println(firstName);
			//  System.out.println(category);
			  //System.out.println(about);
			  System.out.println(password);
			   session.setAttribute("email",email);
			  User user = new User();
			 
			  user.setEmail(email); user.setFirstName(firstName);
			  user.setLastName(lastName); //user.setConfirmPassword(confirmPassword);
			  user.setPassword(password); //user.setAbout(category);		 
			  User save = serviceUser.save(user);
			  EmailService.sendRegistrationEmail(email,session);
		      if (save != null) {
				model.addAttribute("userId", user);
				session.setAttribute("userDetails", save);
				return "Register1";

			}

			else {
				
				
				return "Register";
				
			}
		
		
		
			

			/*
			 * Boolean IsPasswordMatch =BCrypt.checkpw(password, dbUser.getPassword());
			 * if(IsPasswordMatch) { return "home"; }else { return "redirect:/login"; }
			 */

		}
		
		  @RequestMapping(path = "/RegisterProfile", method = RequestMethod.POST)
		  @ResponseBody 
		  public String profileAdd(@RequestParam("profilePic")
		  MultipartFile file, @RequestParam("id")long id,Model model,HttpSession session) throws IOException,
		  SerialException, SQLException 
		  { 
		   byte[] bytes = file.getBytes(); 
		  Blob blob = new SerialBlob(bytes); 
		  System.out.println(id);
		  User profile = serviceUser.getProfile(id);
		  System.out.println(blob);
		  profile.setPhoto(blob); 
		  serviceUser.save(profile);
		  if (serviceUser.save(profile) != null && blob != null)
		  {
			  //model.addAttribute("userDetails", profile);
			  session.setAttribute("registerUser", profile);
			  return "Done"; 
			  } 
		  else 
		  {
			  return "Error"; 
			  }
		  
		  }
		  
		  
		

	     @RequestMapping(path = "/LoginPage", method = RequestMethod.POST) 
		 @ResponseBody 
		 public String loginPage(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session) 
	     {
		 System.out.println("LoginPage"); 
		 User login = serviceUser.login(email,password);
		  if (login != null) { 
			  session.setAttribute("userDetails", login);
			  return "Done"; 
			  } 
		  else 
		  { 
			  return "Error"; 
			  }
		  
		  }
	     
	     
	     @RequestMapping("/Registerverify")
		 	public String verifyOtp(@RequestParam("otp")String otp, HttpSession session, Model model) {
		 	   String myOtp =(String) session.getAttribute("myotp");
		         System.out.println("Otp======"+myOtp);
		         System.out.println("OYPPPPP"+otp);
		 		/*
		 		 * if (myOtp != null) { if (otp==myOtp) { // OTP is valid String email =
		 		 * (String) session.getAttribute("email");
		 		 * System.out.println("Second If Condition "+email); // Check if the user exists
		 		 * (replace with your actual user retrieval logic) if (user(email)) { // Valid
		 		 * OTP, redirect to "Home" System.out.println("Email Check"); return
		 		 * "redirect:/Home"; // Redirect to the "Home" page } else { // User not found,
		 		 * set an error message System.out.println("Email Not Correct");
		 		 * model.addAttribute("message", "User does not exist with this email!!");
		 		 * return "Home"; // Redirect to "Register1" page } } else { // Invalid OTP, set
		 		 * an error message System.out.println("Otp  Is Not Matched");
		 		 * model.addAttribute("message", "You have entered the wrong OTP!!"); return
		 		 * "Home"; // Redirect to "Register1" page } } else { // Handle the case where
		 		 * "myotp" attribute is not set in the session model.addAttribute("message",
		 		 * "Session expired or OTP not generated."); return "Register1"; // Redirect to
		 		 * "Register1" page or show an error message }
		 		 */
		         if(myOtp.equals(otp))
		         {
		         String email=(String) session.getAttribute("email");
		         	User user1 = repo.getUserByUserName(email);
		         	session.setAttribute("userDetails", user1);
		         	System.out.println(user1);
		         	return "Home";
		         }
		         else
		         {
		         	return "Register1";
		         }
		 	}
	 	
	 	private boolean user(String email) {
	 		// TODO Auto-generated method stub
	 		return false;
	 	}

	 	@RequestMapping("/Register1")
	 	public String Register1() {
	 		System.out.println("this is Register1 page");
	 		return "Register1";
	 	}
	     
	  @RequestMapping("/Edit")
	  public String insertBusiness(@RequestParam("userId")long userId,@RequestParam("firstName")String additionalName,
			  @RequestParam("headLine")String headLine,@RequestParam("industry")String industry,
			  @RequestParam("phoneNumber")String phnNo,@RequestParam("birthDate")String bithDate,
			  @RequestParam("message-text")String about,@RequestParam("interest_In")String[] interest,
			  @RequestParam("photo")MultipartFile file,@RequestParam("banner")MultipartFile banner,
			  @RequestParam("street1")String  street,@RequestParam("street2")String street2,@RequestParam("country")String country,
			  @RequestParam("state")String state,@RequestParam("city")String city,@RequestParam("pinCode")String pincode) throws IOException, SerialException, SQLException
	  {
		  
		  Location location=new Location();
		  location.setStreet1(street);
		  location.setStreet2(street2);
		  location.setCity(city);
		  location.setPinCode(pincode);
		  location.setState(state);
		  location.setCountry(country);
		  
		  System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
		   User user = serviceUser.getUserById(userId);
		   user.setAdditionlName(additionalName);
		   user.setHeadLine(headLine);
		   user.setIndustry(industry);
		   user.setPhoneNumber(phnNo);
		   user.setBirthDate(bithDate);
		   user.setInterest_In(interest);
		   user.setUserLocation(location);
		      
		   
		   
		   byte[] bytes = file.getBytes(); 
		   Blob blob =new SerialBlob(bytes); 
		   byte[] bytes2 = banner.getBytes();
		   Blob ban=new SerialBlob(bytes2);
		   user.setBanner(ban);
		   user.setPhoto(blob); 
					  if (serviceUser.save(user) != null && blob !=null) 
					  { 
						  return "ProfilePage"; 
						  } 
					  else
					  { 
						  return "Home";
								  
						  }
					  
		   
		   
	  }
	  
	  @RequestMapping(path="/addExperience",method = RequestMethod.POST)
	  public String addExperience(@RequestParam("userId")long userId,
			  @RequestParam("employmentType")String employementType,
			  @RequestParam("companyName")String companyName,
			  @RequestParam("experienceLocation")String experienceLocation,
			  @RequestParam("startDate")String startDate,
			  @RequestParam("endDate")String endDate,
			  @RequestParam("description")String description,
			  @RequestParam("skillsUsed")String[] skills)
	  {
		  Experience experience=new Experience();
		  experience.setEmploymentType(employementType);
		  experience.setCompanyName(companyName);
		//  experience.setStartDate(startDate);
		// experience.setEndDate(endDate);
		  experience.setSkillsUsed(skills);
		  experience.setExperiencDescription(description);
		  experience.setUser(serviceUser.getUserById(userId));
		  List<Experience> exp=new ArrayList<>();
		  exp.add(experience);
		  
		  User user = serviceUser.getUserById(userId);
		  user.setExperience(exp);
		  serviceUser.save(user);
		   expRepo.save(experience); 
		   return"ProfilePage";
	  }
	  
	   @RequestMapping("/insertExperience")
	  public String insertExperience(@RequestParam("userId")long userId,
			  @RequestParam("employmentType")String employementType,
			  @RequestParam("companyName")String companyName,
			  @RequestParam("experienceLocation")String experienceLocation,
			  @RequestParam("startDate")String startDate,
			  @RequestParam("endDate")String endDate,
			  @RequestParam("description")String description,
			  @RequestParam("skillsUsed")String[] skills)
	  {
		   
		   
		   return  null;
	  }
	   @RequestMapping(path="InsertBusiness",method=RequestMethod.POST)
	     public String insertBusiness(@RequestParam("userId")long userId,
	    		 @RequestParam("firstName")String firstName,
	    		 @RequestParam("lastName")String lastName,
	    		 @RequestParam("companyName")String companyName,
	    		 @RequestParam("tagline")String tagline,
	    		 @RequestParam("websiteUrl")String websiteUrl,
	    		 @RequestParam("industry")String industry,
	    		 @RequestParam("companySize")String companySize,
	    		 @RequestParam("companyType")String companyType,
	    		 @RequestParam("phoneNo")long phnNo,
	    		 @RequestParam("yearFounded")int yearFounded,
	    		 @RequestParam("description")String description,
	    		 @RequestParam("companyPan")String pan,
	    		 @RequestParam("companyGst")String companyGst,
	    		 @RequestParam("companyRegistration")String companyRegistration,
				 @RequestParam("panImage") MultipartFile panImage,
				 @RequestParam("gstImage") MultipartFile gstImage,
				 @RequestParam("logo") MultipartFile logo,
	    		 @RequestParam("companyRegistrationImage")MultipartFile registerImage,
	    		 @RequestParam("facebookLink")String facebookLink,
	    		 @RequestParam("instagramLink")String instagramLink,
	    		 @RequestParam("twitterLink")String twitterLink,
	    		 @RequestParam("linkedinLink")String linkedinLink) throws IOException, SerialException, SQLException
	     {
	    	 Business business=new Business();
	    	 business.setCompanyGst(companyGst);
	    	 business.setCompanyName(companyName);
	    	 business.setCompanyPan(pan);
	    	 business.setCompanyRegistration(companyRegistration);
	    	 business.setCompanySize(companySize);
	    	 business.setCompanyType(companyType);
	    	 business.setDescription(description);
	    	 business.setFacebookLink(facebookLink);
	    	 business.setIndustry(industry);
	    	 business.setYearFounded(yearFounded);
	    	 business.setWebsiteUrl(websiteUrl);
	    	 business.setTwitterLink(twitterLink);
	    	 business.setTagLine(tagline);
	    	 business.setPhoneNo(phnNo);
	    	 business.setLinkedinLink(linkedinLink);
	    	 business.setInstagramLink(instagramLink);
	    	 business.setUser(serviceUser.getUserById(userId));
	    	 
	    	 System.out.println(panImage);
	    	 System.out.println(gstImage);
	    	 System.out.println(logo);
	    	 System.out.println(registerImage);
	    	 byte[] bytes = panImage.getBytes();
	         Blob panPic=new SerialBlob(bytes);
	         business.setPanImage(panPic);
	         
	         byte[] bytes2 = gstImage.getBytes();
	         Blob gstPic=new SerialBlob(bytes2);
	         business.setGstImage(gstPic);	     
	         
     
	         byte[] bytes3 = logo.getBytes();
	         Blob logo1=new SerialBlob(bytes3);
	         business.setLogo(logo1);
    
	         
	         byte[] bytes4 = registerImage.getBytes();
	         Blob registerCompanyImage=new SerialBlob(bytes4);
	         business.setCompanyRegistrationImage(registerCompanyImage);
	         
	         
	         List<Business> businessList=new ArrayList<>();
	         businessList.add(business);
	    	 User user= serviceUser.getUserById(userId);
	    	 
	    	 user.setBusiness(businessList);
	    	 
	    	 businessRepo.save(business);
	    	 serviceUser.save(user);
	    	 return "ProfilePage";
	     }
	     
	     
	     @RequestMapping(path="addEducation",method = RequestMethod.POST)
	     public String addEducation(@RequestParam("firstName")String firstName,
	    		 @RequestParam("lastName")String lastName,
	    		 @RequestParam("userId")long userId,
	    		 @RequestParam("school")String school,
	    		 @RequestParam("degree")String degree,
	    		 @RequestParam("fieldOfStudy")String fieldOfStudy,
	    		 @RequestParam("startDate")String startDate,
	    		 @RequestParam("endDate")String endDate,
	    		 @RequestParam("grade")String grade,
	    		 @RequestParam("activities")String activities,
	    		 @RequestParam("description")String description,
	    		 @RequestParam("skills")String[] skills
	    		 ) {
	    	      Education education=new Education();
	    	      education.setActivities(activities);
	    	      education.setDegree(degree);
	    	      education.setDescription(description);
	    	      //education.setEndDate(endDate);
	    	    //  education.setStartDate(startDate);
	    	      education.setSchool(school);
	    	      education.setFieldOfStudy(fieldOfStudy);
	    	      education.setGrade(grade);
	    	      education.setSkills(skills);
	    	      education.setUser(serviceUser.getUserById(userId));
	    	     
	    	    User user = serviceUser.getUserById(userId);
	    	       List<Education> educationList=new ArrayList<>();
	    	       educationList.add(education);
	    	       user.setEducationId(educationList);
	    	       
	    	       serviceUser.save(user);
	    	       
	    	       educationRepo.save(education);
	    	 return "ProfilePage";
	    	 
	     }

}
