package com.business.dao;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.stereotype.Controller;
/*import org.springframework.messaging.simp.SimpMessageHeaderAccessor;*/


@Controller
public class ChatController {

    @MessageMapping("/chat.sendMessage")
    @SendTo("/topic/public")
    public ChatMessage sendMessage(
            @Payload ChatMessage chatMessage
    ) {
        return chatMessage;
    }

    @MessageMapping("/chat.addUser")
    @SendTo("/topic/public")
    public ChatMessage addUser(
            @Payload ChatMessage chatMessage,
            SimpMessageHeaderAccessor headerAccessor
            
            
    ) {
    	// Add username in web socket session
		/* String username = (String) chatMessage.getSender(); */
    	headerAccessor.getSessionAttributes().put("username", chatMessage.getSender());
    	//System.out.println("Received username from client: " + username); // Add this line for debugging
    	return chatMessage;

    }
}
