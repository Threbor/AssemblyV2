import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

console.log("Hello from application.js!")

let messageBar = document.querySelector(".message_bar_container")
let messageTextField = document.getElementById("message_content")
let navbar = document.querySelector('.navbar');

console.log(messageBar);
console.log(messageTextField);
console.log(navbar);

if (messageTextField) {
  messageTextField.addEventListener('focus', (event) => {
    navbar.classList.add('hidden');
    messageBar.classList.add('focused');
  });
  messageTextField.addEventListener('blur', (event) => {
    messageBar.classList.remove('focused');
    navbar.classList.remove('hidden');

  });
}
