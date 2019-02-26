document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener('turbolinks:load', () => {
        let editChatroomButton = document.querySelector('.edit-chatroom-button');
        let cancelEditChatroomButton = document.querySelector('.cancel-edit-chatroom-button');
        let editChatroomForm = document.querySelector('.edit-chatroom-form');
        let chatroomBox = document.querySelector('.chatroom-box');

        editChatroomForm.style.display = 'none';

        editChatroomButton.addEventListener('click', () => {
            editChatroomForm.style.display = 'block';
            chatroomBox.style.display = 'none';
        });

        cancelEditChatroomButton.addEventListener('click', () => {
            editChatroomForm.style.display = 'none';
            chatroomBox.style.display = 'block';
        });
    });
});