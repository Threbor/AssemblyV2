import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  confirm(event) {
    event.preventDefault();

    if (window.confirm("Are you sure?")) {
      fetch(this.data.get("url"), { method: "DELETE" })
        .then(response => {
          if (!response.ok) { throw new Error("Network response was not ok") }
          window.location = "/storyrooms" // or wherever you want to redirect to after delete
        })
        .catch(error => console.error("Error:", error));
    }
  }
}
