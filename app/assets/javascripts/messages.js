document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener('turbolinks:load', () => {
        let chatroomContainer = document.querySelector('.chatroom-container');

        chatroomContainer.scrollTop = chatroomContainer.scrollHeight;
    });
});