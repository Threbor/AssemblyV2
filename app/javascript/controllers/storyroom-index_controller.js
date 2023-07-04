import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["groups", "groups_btn", "owner", "owner_btn"]

  showOwner() {
    this.ownerTarget.classList.add('selected');
    this.groupsTarget.classList.remove('selected');
    this.groups_btnTarget.classList.remove('selected');
    this.owner_btnTarget.classList.add('selected');
  }

  showGroups() {
    this.groupsTarget.classList.add('selected');
    this.ownerTarget.classList.remove('selected');
    this.owner_btnTarget.classList.remove('selected');
    this.groups_btnTarget.classList.add('selected');
  }

}
