import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["story", "story_btn", "lore", "lore_btn"]

  showLore() {
    this.loreTarget.classList.add('selected');
    this.storyTarget.classList.remove('selected');
    this.story_btnTarget.classList.remove('selected');
    this.lore_btnTarget.classList.add('selected');
  }

  showStory() {
    this.storyTarget.classList.add('selected');
    this.loreTarget.classList.remove('selected');
    this.lore_btnTarget.classList.remove('selected');
    this.story_btnTarget.classList.add('selected');
  }

}
