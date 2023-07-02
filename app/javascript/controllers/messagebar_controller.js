import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "messageField" ];

  connect() {
    console.log("messagebarf controller connected");
    this.messageFieldTarget.focus();
    // astuce en patientant l'intégration d'ajax

    // window.scrollTo({
    //   top: document.body.scrollHeight,
    //   behavior: 'smooth'
    // });
  }

  // sleepingScrollDown () {
  //   setTimeout(() => {
  //     window.scrollTo({
  //       top: document.body.scrollHeight,
  //       behavior: 'smooth'
  //     });
  //     this.messageFieldTarget.focus();
  //   }, 500);
  // }

  // scrollDown(event) {
  //   console.log("scrolling down");
  //   this.sleepingScrollDown();
  //   window.scrollTo({
  //     top: document.body.scrollHeight,
  //     behavior: 'smooth'
  //   })
  // }



}
