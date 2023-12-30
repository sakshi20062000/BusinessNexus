package com.business.services;

import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service
public class EmailService {
	
	 public static boolean sendEmail(String subject, String message, String to) {
	        //rest of the code..

	        boolean f = false;

	        String from = "info.businessnexus@gmail.com";

	        //Variable for gmail
	        String host = "smtp.gmail.com";

	        //get the system properties
	        Properties properties = System.getProperties();
	        System.out.println("PROPERTIES " + properties);

	        //setting important information to properties object

	        //host set
	        properties.put("mail.smtp.auth", true);
	        properties.put("mail.smtp.starttls.enable", true);
	        properties.put("mail.smtp.port", "587");
	        properties.put("mail.smtp.host", "smtp.gmail.com");

	        //Step 1: to get the session object..
	        Session session = Session.getInstance(properties, new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("info.businessnexus@gmail.com", "cezlqzavcmfagumc");
	            }


	        });

	        session.setDebug(true);

	        //Step 2 : compose the message [text,multi media]
	        MimeMessage m = new MimeMessage(session);

	        try {

	            //from email
	            m.setFrom(from);

	            //adding recipient to message
	            m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

	            //adding subject to message
	            m.setSubject(subject);


	            //adding text to message
	            //m.setText(message);
	            m.setContent(message,"text/html");
	            
	            //send

	            //Step 3 : send the message using Transport class
	            Transport.send(m);

	            System.out.println("Sent success...................");
	            f = true;

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return f;
	    }

	private void String(String string) {
		// TODO Auto-generated method stub
		
	}
	
		private static String generateOTP() {
			Random random = new Random();
			int otp = 100000 + random.nextInt(900000);
			return Integer.toString(otp);
		}

		public static boolean sendRegistrationEmail(String to,HttpSession session) {
			// Generate an OTP
			String otp = generateOTP();
			session.setAttribute("myotp", otp);
			System.out.println(otp);
			
			
			String subject = "Welcome to Our Service";
			String message = "Thank you for registering with us. Your OTP is: " + otp								;
			/*
			 * String subject = "Welcome to Our Service"; String message =
			 * "<div style='border:1px solid #e2e2e2; padding:20px'>"+
			 * "Thank you for registering with Business Nexus, your trusted partner for all your needs. \n"
			 * + "We are excited to have you on board and look forward to serving you.\n\n"
			 * + "<h1>" + "Dear User," + "</h1>" + "<p>" +
			 * "Thank you for using our services. We have generated an OTP for you:" +
			 * "</p>" + "<p>" + "This OTP is essential for secure access to your account." +
			 * "</p>" + "<p>" +
			 * "We would also like to provide you with some information about our business nexus:"
			 * + "</p>" + "<h2>" + "OTP: <b>" + otp + "</b>" + "</h2>" + "<p>" +
			 * "At Business Nexus, we are dedicated to delivering high-quality products and services to our valued customers. "
			 * +
			 * "Our business nexus is built on a foundation of trust, reliability, and customer satisfaction. "
			 * + "We strive to exceed your expectations and ensure a seamless experience." +
			 * "</p>" + "<p>" +
			 * "If you have any questions or need further assistance, please don't hesitate to contact our customer support."
			 * + "</p>" + "<p>" + "Thank you for choosing us as your business partner." +
			 * "</p>" + "</div>";
			 */
			// Call the sendEmail method to send the registration email
			return sendEmail(subject, message, to);
		}
	}

