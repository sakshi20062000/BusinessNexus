<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>WebSocket Chat</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <style>
        /* Reset some default browser styles */
        body, h1, p {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Flexbox for centering */
        body {
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f5f5f5;
        }

        /* Styles for the messaging section */
        .messaging-section {
            display: flex;
            flex-grow: 1;
            border: 1px solid #000000;
            background-color: #f9f9f9;
            max-width: 100%; /* Ensure it doesn't exceed the viewport width */
        }

        /* Styles for the chat list */
        .chat-list {
            flex-basis: 30%; /* Adjust the width as needed */
            border-right: 1px solid #dcdcdc;
            padding: 10px;
            overflow-y: auto; /* Add scrollbars when needed */
        }

        .chat-list-item {
            padding: 10px;
            border-bottom: 1px solid #dcdcdc;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .chat-list-item:hover {
            background-color: #eaf2fd;
        }

        .chat-list-item.active {
            background-color: #dceefd;
            font-weight: bold;
        }

        /* Styles for the chat window */
        .chat-window {
            flex-basis: 70%; /* Adjust the width as needed */
            padding: 10px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        /* Styles for individual messages */
        .message {
            margin-bottom: 10px;
            padding: 5px 10px;
            background-color: #f1f1f1;
            border-radius: 5px;
        }

        .sent-message {
            text-align: right;
        }

        .received-message {
            text-align: left;
        }

        /* Styles for message content */
        .message-content {
            padding: 5px 10px;
            display: inline-block;
            border-radius: 5px;
            margin: 5px;
        }

        .message-content.sent {
            background-color: #b3e6b3;
        }

        .message-content.received {
            background-color: #e6f2ff;
        }

        /* Styles for the search bar and message input */
        .search-bar,
        .message-input {
            padding: 10px;
            background-color: #f1f1f1;
            display: flex;
            flex-direction: row;
            align-items: center;
        }

        /* Styles for the message input text box and send button */
        .message-input input[type="text"] {
            flex: 1;
            margin-right: 10px;
            padding: 12px;
            border: 1px solid #dcdcdc;
            border-radius: 4px;
            font-size: 16px;
        }

        .message-input button {
            padding: 8px 12px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .message-input button:hover {
            background-color: #0056b3;
        }

        /* Add media queries for smaller screens */
        @media screen and (max-width: 768px) {
            .messaging-section {
                flex-direction: column-reverse; /* Stack chat list below chat window */
            }

            .chat-list {
                flex-basis: 100%; /* Take up full width on mobile */
                border-right: none;
                border-bottom: 1px solid #dcdcdc;
            }

            .chat-window {
                flex-basis: 100%; /* Take up full width on mobile */
            }

            .chat-list-item {
                border-bottom: none; /* Remove border between chat list items on mobile */
            }

            .search-bar,
            .message-input {
                flex-direction: column; /* Stack search bar and message input vertically */
            }
        }
    </style>

    <!--start of navbar--> 
    <header>
        <%@include file="Navbar.jsp" %>
    </header>
    <!--end of navbar-->

</head>
<body>
    <div class="messaging-section">
        <div class="chat-list">
            <div class="search-bar">
                <input type="text" id="search-input" placeholder="Search" onkeyup="searchChatList()">
            </div>
            <div class="chat-list-item active" data-user="UserA" onclick="switchUser('UserA')">User A</div>
            <div class="chat-list-item" data-user="UserB" onclick="switchUser('UserB')">User B</div>
            <div class="chat-list-item" data-user="UserC" onclick="switchUser('UserC')">User C</div>
            <div class="chat-list-item" data-user="UserD" onclick="switchUser('UserD')">User D</div>
        </div>
        <div class="chat-window">
            <div class="message-section" id="message-section">
                <!-- Message history will be displayed here -->
            </div>
            <div class="message-input">
                <input type="text" id="message-input" placeholder="Type your message...">
                <button onclick="sendMessage()">Send</button>
                <button id="delete-selected-btn" onclick="deleteSelectedMessages()">Delete Selected</button>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

    <script>
        // ... (Your JavaScript code remains unchanged)
    </script>
</body>
</html>