import consumer from "./consumer"

document.addEventListener('turbolinks:load', () => {
  const el = document.getElementById('room-id')
  const room_id = el.getAttribute('data-room-id')
consumer.subscriptions.create({ channel: "RoomChannel", room_id: room_id }, {
  connected() {
    console.log(`connected to room channel ${room_id}`)
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log(data)
  }
});
})
