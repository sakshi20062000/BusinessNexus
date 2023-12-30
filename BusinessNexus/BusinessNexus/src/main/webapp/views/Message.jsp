<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>WebSocket Chat</title>
        <style>
            /* Reset some default browser styles */
            body, h1, p {
                margin: 0;
                padding: 0;
            }

            /* Flexbox for centering */
            body {
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background-color: #f5f5f5;
            }

            /* Styles for the messaging section */
            .messaging-section {
                display: flex;
                flex-grow: 1;
                border: 1px solid #000000;
                background-color: #f9f9f9;
                width: 100%;
                max-width: 1200px; /* Optional: Set a maximum width */
            }


            /* Styles for the chat list */
            .chat-list {
                flex-basis: 10%;
                border-right: 1px solid #dcdcdc;
                padding: 10px;
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
                flex-basis: 90%;
                padding: 10px;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
            }

            /* Styles for the message section */
            .messaging-section {
                display: flex;
                flex-grow: 1;
                border: 1px solid #000000;
                background-color: #f9f9f9;
                width: 100%;
                max-width: 1200px;
                /* Optional: Set a maximum width */
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

            .message-label {
                font-size: 12px;
                color: #888;
                margin-bottom: 5px;
            }

            .message-time {
                font-size: 12px;
                color: #888;
                margin-bottom: 5px;
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
            }

            /* Styles for the message input text box and send button */
            .message-input input[type="text"] {
                flex: 1;
                margin-right: 10px;
                margin-top: 10px; /* Increase the top margin */
                margin-bottom: 10px; /* Increase the bottom margin */
                padding: 12px;
                border: 1px solid #dcdcdc;
                border-radius: 4px;
                font-size: 16px;
                padding-right: 500px;
                justify-content: center;
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

            #delete-selected-btn {
                margin-top: 10px;
                display: none;
            }

            /* Styles for the message selection checkbox */
            .select-checkbox {
                margin-right: 10px;
                cursor: pointer;
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
                    var users = ['User E', 'User F', 'User G', 'User H']; // Add more users here
                    var numberOfUsers = users.length;
                    var socket;
                    var activeUserId;
                    var messages = {}; // Store messages for each user
                    var selectedMessages = {}; // Store selected message IDs for each user

                    function createChatList() {
                        var chatList = document.querySelector('.chat-list');
                        for (var i = 0; i < numberOfUsers; i++) {
                            var user = users[i];
                            var chatListItem = document.createElement('div');
                            chatListItem.classList.add('chat-list-item', 'bg-white', 'p-2', 'mb-1');
                            chatListItem.dataset.user = user;
                            chatListItem.textContent = user;
                            chatListItem.onclick = function () {
                                switchUser(this.dataset.user);
                            };
                            chatList.appendChild(chatListItem);
                        }
                    }

                    function connect() {
                        socket = new WebSocket("ws://localhost:8080/InvestorTeam/chat"); // Replace with your WebSocket server URL
                        socket.onopen = function (event) {
                            console.log("WebSocket connection opened");
                        };
                        socket.onmessage = receiveMessage;
                        socket.onclose = function (event) {
                            console.log("Socket closed: " + event.reason);
                        };

                        // Display stored messages after connecting
                        displayStoredMessages(activeUserId);
                    }

                    function sendMessage() {
                        var messageInput = document.getElementById('message-input');
                        var message = messageInput.value.trim();

                        messageInput.value = '';

                        if (message && activeUserId) {
                            var fullMessage = {
                                sender: activeUserId,
                                content: message,
                                timestamp: new Date().getTime()
                            };
                            socket.send(JSON.stringify(fullMessage));
                        }
                    }

                    function receiveMessage(event) {
                        var message = JSON.parse(event.data);
                        var sender = message.sender;
                        var content = message.content;
                        var timestamp = message.timestamp;

                        var messageId = generateMessageId();
                        storeMessage(sender, activeUserId, content, messageId, timestamp);
                        if (activeUserId === sender) {
                            displayMessage(sender, content, false, messageId, timestamp);
                        } else {
                            displayMessage(sender, content, true, messageId, timestamp);
                        }

                        // Update the selectedMessages object with the new message
                        var selectedMessagesIds = selectedMessages[activeUserId] || {};
                        selectedMessagesIds[messageId] = true;
                        selectedMessages[activeUserId] = selectedMessagesIds;

                        // Save the received message and selected messages to local storage
                        saveMessagesToLocalStorage();
                        saveSelectedMessagesToLocalStorage();
                    }

                    function displayMessage(sender, content, isSent, messageId, timestamp) {
                        var messageSection = document.getElementById('message-section');
                        var messageElement = document.createElement('div');
                        messageElement.classList.add('message', isSent ? 'sent-message' : 'received-message');
                        messageElement.id = messageId;

                        var selectCheckbox = document.createElement('input');
                        selectCheckbox.type = 'checkbox';
                        selectCheckbox.classList.add('select-checkbox');
                        selectCheckbox.onclick = function () {
                            toggleSelectedMessage(messageId);
                        };
                        messageElement.appendChild(selectCheckbox);

                        var messageLabel = document.createElement('div');
                        messageLabel.classList.add('message-label');
                        messageLabel.textContent = sender;

                        var messageTime = document.createElement('div');
                        messageTime.classList.add('message-time');
                        var time = new Date(timestamp).toLocaleString();
                        messageTime.textContent = time;

                        var messageContent = document.createElement('div');
                        messageContent.classList.add('message-content', isSent ? 'sent' : 'received');
                        messageContent.textContent = content;

                        messageElement.appendChild(messageLabel);
                        messageElement.appendChild(messageTime);
                        messageElement.appendChild(messageContent);
                        messageSection.appendChild(messageElement);

                        // Scroll to the bottom of the message section
                        messageSection.scrollTop = messageSection.scrollHeight;
                    }

                    function switchUser(user) {
                        var chatListItems = document.getElementsByClassName('chat-list-item');
                        for (var i = 0; i < chatListItems.length; i++) {
                            chatListItems[i].classList.remove('active');
                        }

                        var activeChat = document.querySelector('.chat-list-item[data-user="' + user + '"]');
                        if (activeChat) {
                            activeChat.classList.add('active');
                            activeUserId = user;
                            displayStoredMessages(user);
                        }
                    }

                    function displayStoredMessages(user) {
                        clearMessageSection();
                        var storedMessages = messages[user];
                        if (storedMessages) {
                            for (var i = 0; i < storedMessages.length; i++) {
                                var storedMessage = storedMessages[i];
                                displayMessage(storedMessage.sender, storedMessage.content, false, storedMessage.id, storedMessage.timestamp);
                            }
                        }
                    }

                    function clearMessageSection() {
                        var messageSection = document.getElementById('message-section');
                        messageSection.innerHTML = '';
                    }

                    function storeMessage(sender, recipient, content, id, timestamp) {
                        var recipientConversation = messages[recipient] || [];
                        recipientConversation.push({sender: sender, content: content, id: id, timestamp: timestamp});
                        messages[recipient] = recipientConversation;
                    }

                    function deleteMessage(messageId) {
                        var messageElement = document.getElementById(messageId);
                        if (messageElement) {
                            messageElement.remove();
                            // Remove the deleted message from the stored messages
                            var storedMessages = messages[activeUserId];
                            messages[activeUserId] = storedMessages.filter(msg => msg.id !== messageId);
                            delete selectedMessages[activeUserId][messageId];
                            // Update the local storage after deletion
                            saveMessagesToLocalStorage();
                        }
                    }

                    function toggleSelectedMessage(messageId) {
                        var messageElement = document.getElementById(messageId);
                        if (messageElement) {
                            messageElement.classList.toggle('selected');

                            var selectedMessagesIds = selectedMessages[activeUserId] || {};
                            if (messageElement.classList.contains('selected')) {
                                selectedMessagesIds[messageId] = true;
                            } else {
                                delete selectedMessagesIds[messageId];
                            }

                            var deleteSelectedBtn = document.getElementById('delete-selected-btn');
                            if (Object.keys(selectedMessagesIds).length > 0) {
                                deleteSelectedBtn.style.display = 'inline-block';
                            } else {
                                deleteSelectedBtn.style.display = 'none';
                            }

                            selectedMessages[activeUserId] = selectedMessagesIds;
                        }
                    }

                    function deleteSelectedMessages() {
                        var selectedMessagesIds = selectedMessages[activeUserId] || {};
                        Object.keys(selectedMessagesIds).forEach(messageId => {
                            deleteMessage(messageId);
                        });

                        var deleteSelectedBtn = document.getElementById('delete-selected-btn');
                        deleteSelectedBtn.style.display = 'none';

                        // Update the local storage after deletion of selected messages
                        saveMessagesToLocalStorage();
                    }

                    function loadMessagesFromLocalStorage() {
                        var storedMessages = localStorage.getItem('messages');
                        if (storedMessages) {
                            messages = JSON.parse(storedMessages);
                            displayStoredMessages(activeUserId); // Display stored messages after loading
                        }
                    }

                    function saveMessagesToLocalStorage() {
                        localStorage.setItem('messages', JSON.stringify(messages));
                    }

                    function saveSelectedMessagesToLocalStorage() {
                        localStorage.setItem('selectedMessages', JSON.stringify(selectedMessages));
                    }

                    function loadSelectedMessagesFromLocalStorage() {
                        var storedSelectedMessages = localStorage.getItem('selectedMessages');
                        if (storedSelectedMessages) {
                            selectedMessages = JSON.parse(storedSelectedMessages);
                        }
                    }

                    function generateMessageId() {
                        return Date.now().toString() + Math.random().toString().substr(2, 5);
                    }

                    connect();
                    loadMessagesFromLocalStorage();
                    loadSelectedMessagesFromLocalStorage();
                    createChatList();
    </script>
</body>
</html>