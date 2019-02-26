document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener('turbolinks:load', () => {
        let editChatroomButton = document.querySelectorAll('.edit-chatroom-button');
        let cancelEditChatroomButton = document.querySelectorAll('.cancel-edit-chatroom-button');
        let editChatroomForm = document.querySelectorAll('.edit-chatroom-form');
        let chatroomsBox = document.querySelectorAll('.chatrooms-box');

        for (let i = 0; i < chatroomsBox.length; i++) {
            editChatroomForm[i].style.display = 'none';

            editChatroomButton[i].addEventListener('click', () => {
                editChatroomForm[i].style.display = 'block';
                chatroomsBox[i].style.display = 'none';
            });

            cancelEditChatroomButton[i].addEventListener('click', () => {
                editChatroomForm[i].style.display = 'none';
                chatroomsBox[i].style.display = 'block';
            });
        }
    });
});