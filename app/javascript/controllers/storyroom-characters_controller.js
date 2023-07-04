import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [
    "universeCharacter",
    "previousCharacterButton",
    "randomCharacterButton",
    "nextCharacterButton",
    "characterIdField"
  ]

  connect() {
    this.characterIndex = Math.floor(Math.random() * this.universeCharacterTargets.length);
    this.showCharacter(this.characterIndex);
    this.updateFormFields();
  }

  showCharacter(index) {
    this.universeCharacterTargets.forEach(target => target.classList.remove('selected'));
    let selectedElement = this.universeCharacterTargets[index];
    selectedElement.classList.add('selected');
  }

  previousCharacter() {
    this.characterIndex--;
    if (this.characterIndex < 0) this.characterIndex = this.universeCharacterTargets.length - 1;
    this.showCharacter(this.characterIndex);
    this.updateFormFields();
  }

  nextCharacter() {
    this.characterIndex++;
    if (this.characterIndex >= this.universeCharacterTargets.length) this.characterIndex = 0;
    this.showCharacter(this.characterIndex);
    this.updateFormFields();
  }

  randomCharacter() {
    let newIndex;
    do {
      newIndex = Math.floor(Math.random() * this.universeCharacterTargets.length);
    } while (newIndex === this.characterIndex);
    this.characterIndex = newIndex;
    this.showCharacter(this.characterIndex);
    this.updateFormFields();
  }

  updateFormFields() {
    this.characterIdFieldTarget.value = this.universeCharacterTargets[this.characterIndex].dataset.id;
  }
}
