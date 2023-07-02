import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [
    "universeSynopse",
    "previousSynopseButton",
    "randomSynopseButton",
    "nextSynopseButton",
    "universeCharacter",
    "previousCharacterButton",
    "randomCharacterButton",
    "nextCharacterButton",
    "synopseIdField",
    "characterIdField"
  ]

  connect() {
    this.synopseIndex = Math.floor(Math.random() * this.universeSynopseTargets.length);
    this.characterIndex = Math.floor(Math.random() * this.universeCharacterTargets.length);
    this.showSynopsis(this.synopseIndex);
    this.showCharacter(this.characterIndex);
    this.updateFormFields();
  }

  showSynopsis(index) {
    this.universeSynopseTargets.forEach(target => target.classList.remove('selected'));
    let selectedElement = this.universeSynopseTargets[index];
    selectedElement.classList.add('selected');
  }

  previousSynopsis() {
    this.synopseIndex--;
    if (this.synopseIndex < 0) this.synopseIndex = this.universeSynopseTargets.length - 1;
    this.showSynopsis(this.synopseIndex);
    this.updateFormFields();
  }

  nextSynopsis() {
    this.synopseIndex++;
    if (this.synopseIndex >= this.universeSynopseTargets.length) this.synopseIndex = 0;
    this.showSynopsis(this.synopseIndex);
    this.updateFormFields();
  }

  randomSynopsis() {
    let newIndex;
    do {
      newIndex = Math.floor(Math.random() * this.universeSynopseTargets.length);
    } while (newIndex === this.synopseIndex);
    this.synopseIndex = newIndex;
    this.showSynopsis(this.synopseIndex);
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
    this.synopseIdFieldTarget.value = this.universeSynopseTargets[this.synopseIndex].dataset.id;
    this.characterIdFieldTarget.value = this.universeCharacterTargets[this.characterIndex].dataset.id;
  }
}
