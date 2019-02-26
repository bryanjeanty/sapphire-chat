document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener('turbolinks:load', () => {
        let chatroomBox = document.querySelector('.chatroom-box');

        chatroomBox.scrollTop = chatroomBox.scrollHeight;
    });
});