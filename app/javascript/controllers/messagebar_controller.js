import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "messageField" ];

  connect() {
    console.log("messagebar controller connected");
    // this.messageFieldTarget.addEventListener('focus', this.hideMessageBar);
    // this.messageFieldTarget.addEventListener('blur', this.showMessageBar);
  }

  // disconnect() {
  //   this.messageFieldTarget.removeEventListener('focus', this.hideMessageBar);
  //   this.messageFieldTarget.removeEventListener('blur', this.showMessageBar);
  // }

  // hideMessageBar = () => {
  //   document.getElementById('message_bar').classList.add('hidden');
  // }

  // showMessageBar = () => {
  //   document.getElementById('message_bar').classList.remove('hidden');
  // }
}
