document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener('turbolinks:load', () => {
        let chatroomBox = document.querySelector('.chatroom-box');
        chatroomBox.scrollTop = chatroomBox.scrollHeight;

        // counter
        let count = 1;

        // Trigger Buttons
        let closeEditorBtn = document.querySelectorAll('.close-editor-btn');
        let changeEditorBtn = document.querySelectorAll('.change-editor-btn');

        let closeChatBtn = document.querySelectorAll('.close-chat-btn');
        let changeChatBtn = document.querySelectorAll('.change-chat-btn');

        // Chatroom Sections
        let editorBox = document.querySelectorAll('.editor-box');
        let chatroomWrapper = document.querySelectorAll('.chatroom-wrapper');

        // Section Size Functions
        function closeSect(sect1, sect2) {
            sect1.style.width = "0%";
            sect2.style.width = "96%";
        }

        function changeSect(sect1, sect2) {
            sect1.style.width = "60%";
            sect2.style.width = "30%"
        }

        function defaultSect(sect1, sect2) {
            sect1.style.width = "45%";
            sect2.style.width = "45%";
        }

        // Event Listeners
        for (let i = 0; i < chatroomWrapper.length; i++) {
            closeEditorBtn[i].addEventListener('click', () => {
                closeSect(editorBox[i], chatroomWrapper[i]);
            });
            changeEditorBtn[i].addEventListener('click', () => {
                if (count == 1) {
                    changeSect(editorBox[i], chatroomWrapper[i]);
                } else if (count == 2) {
                    changeSect(chatroomWrapper[i], editorBox[i]);
                } else if (count == 3) {
                    defaultSect(editorBox[i], chatroomWrapper[i]);
                    count = 0;
                } 

                count += 1;
            });

            closeChatBtn[i].addEventListener('click', () => {
                closeSect(chatroomWrapper[i], editorBox[i]);
            });
            changeChatBtn[i].addEventListener('click', () => {
                if (count == 1) {
                    changeSect(chatroomWrapper[i], editorBox[i]);
                } else if (count == 2) {
                    changeSect(editorBox[i], chatroomWrapper[i]);
                } else if (count == 3) {
                    defaultSect(chatroomWrapper[i], editorBox[i]);
                    count = 0;
                } 

                count += 1;
            });
        }
    });
});