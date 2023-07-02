import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["output"];

  connect() {
    console.log('hello_controller.js connected');
  }

  greet() {
    console.log('hello from hello_controller.js');
  }

}
