package com.business.controller;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.business.entities.User;
import com.business.repositories.UserRepo;
import com.business.services.EmailService;


@Controller
public class ForgetController {

	
	/*
	 * @RequestMapping("/forget") public String openEmailForm() {
	 * 
	 * return "ForgetPassword"; }
	 * 
	 * 
	 * @RequestMapping("/send-Otp") public String
	 * sendOTP(@RequestParam("email")String email) { System.out.println(email);
	 * 
	 * 
	 * Random random = new Random(1000);
	 * 
	 * int otp = random.nextInt(999999);
	 * 
	 * System.out.println("OTP="+otp); return "EnterOpt"; }
	 * 
	 * 
	 * @RequestMapping("/EnterOpt") public String
	 * enterOtp(@RequestParam("email")String email) { System.out.println(email);
	 * return"EnterOpt"; }
	 */
	


		@Autowired
		private EmailService emailService;

		@Autowired
		private UserRepo userRepsitory;

//		@Autowired
//		private BCryptPasswordEncoder bcrypt;

		@RequestMapping("/forget")
		public String openEmailForm() {

			return "ForgetPassword";
		}

//		 @RequestMapping("/forget1") 
//		 public String openEmail() {
//			 
//			 return "EnterOpt"; 
//			 }
//		 @RequestMapping("/forget2") 
//		 public String openForm() {
//			 
//			 return "Enterotp"; 
//			 }

		@PostMapping("/EnterOtp")
		public String sendOTP(@RequestParam("email") String email, HttpSession session) {
			System.out.println("EMAIL " + email);

			// generating otp of 4 digit

			Random random = new Random();
			int otp = random.nextInt(999999);

			System.out.println("OTP " + otp);

			// write code for send otp to email...

			String subject = "OTP From Business Nexus Team";
			String message = "" + "<div style='border:1px solid #e2e2e2; padding:20px'>" + "<h1>" + "Dear User," + "</h1>"
					+ "<p>" + "Thank you for using our services. We have generated an OTP for you:" + "</p>" + "<p>"
					+ "This OTP is essential for secure access to your account." + "</p>" + "<p>"
					+ "We would also like to provide you with some information about our business nexus:" + "</p>" + "<h2>"
					+ "OTP: <b>" + otp + "</b>" + "</h2>" + "<p>"
					+ "At Business Nexus, we are dedicated to delivering high-quality products and services to our valued customers. "
					+ "Our business nexus is built on a foundation of trust, reliability, and customer satisfaction. "
					+ "We strive to exceed your expectations and ensure a seamless experience." + "</p>" + "<p>"
					+ "If you have any questions or need further assistance, please don't hesitate to contact our customer support."
					+ "</p>" + "<p>" + "Thank you for choosing us as your business partner." + "</p>" + "</div>";

			String to = email;

			boolean flag = this.emailService.sendEmail(subject, message, to);

			if (flag) {

				session.setAttribute("myotp", otp);
				session.setAttribute("email", email);
				return "EnterOtp";

			} else {

				session.setAttribute("message", "Check your email id !!");

				return "ForgetPassword";
			}

		}

		// verify otp
		@PostMapping("/verify-otp")
		public String verifyOtp(@RequestParam("otp") int otp, HttpSession session) {
			int myOtp = (int) session.getAttribute("myotp");

			System.out.println("User OTP " + otp);
			System.out.println("Our OTP " + myOtp);

			String email = (String) session.getAttribute("email");
			if (myOtp == otp) {
				// password change form
				User user = this.userRepsitory.getUserByUserName(email);

				if (user == null) {
					// send error message
					session.setAttribute("message", "User does not exits with this email !!");

					return "ForgetPassword";
				} else {
					//
					// send change password form

				}

				return "NewPassword";
			} else {
				session.setAttribute("message", "You have entered wrong otp !!");
				return "EnterOtp";
			}
		}

		@PostMapping("/change-password")
		public String changePassword(@RequestParam("password") String newpassword, HttpSession session) {
			String email = (String) session.getAttribute("email");
			User user = this.userRepsitory.getUserByUserName(email);
			user.setPassword(newpassword);
			this.userRepsitory.save(user);
			return "redirect:/login";

		}

	//	
	//
//		@RequestMapping("/send-Otp")
//		public String sendOTP(@RequestParam("email")String email) {
//			System.out.println(email);
//	         
//			
//			Random random = new Random(1000);
//			
//			int otp = random.nextInt(999999);
//			
//			System.out.println("OTP="+otp);
//			return "EnterOpt";
//		}
	//	
	//	

	
	
}
