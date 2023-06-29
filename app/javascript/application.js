// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"


document.addEventListener("turbo:load", function() {
  const messageField = document.getElementById("messageField");
  if (messageField) {
    messageField.focus();
    messageField.scrollIntoView({ behavior: 'smooth', block: 'center' });
  }
});
