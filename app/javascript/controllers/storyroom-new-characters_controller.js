import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["usernameSuggested", "usernameIdField"]

  connect() {
    console.log("StoryroomNewCharactersController connected");
  }

  pasteUsername(event) {
    console.log("pasteUsername");
    console.log(event);
    this.usernameIdFieldTarget.value = event.target.innerHTML; // 'event.target' fait référence à l'élément sur lequel l'utilisateur a cliqué

    // Parcourir tous les éléments 'usernameSuggested' et leur retirer la classe 'selected'
    this.usernameSuggestedTargets.forEach(target => {
      target.classList.remove('selected');
    });

    // Ajouter la classe 'selected' à l'élément sur lequel l'utilisateur a cliqué
    event.target.classList.add('selected');
  }

}
