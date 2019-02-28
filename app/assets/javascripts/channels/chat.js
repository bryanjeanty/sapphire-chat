(function() {
  App.chat = App.cable.subscriptions.create("ChatChannel", {
    connected: function() {
      console.log('Connected To Chat');
    },
    disconnected: function() {
      console.log('Disconnected To Chat');
    },
    received: function(data) {
      let chatroomBox = document.querySelectorAll('.chatroom-box');      
      
      for(let i = 0; i < chatroomBox.length; i++) {
        chatroomBox[i].innerHTML += data.message;
        chatroomBox[i].innerHTML += "<br>";

        function scrollToBottom(elem) {
          elem.scrollTop = elem.scrollHeight;
        }
        
        setInterval(scrollToBottom(chatroomBox[i]), 2000);
        document.querySelector('.message-text-area').value = "";
      }
    }
  });
}).call(this);