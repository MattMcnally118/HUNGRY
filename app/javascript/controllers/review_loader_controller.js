import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = ["overlay"]

  show() {
    this.overlayTarget.classList.add("active")
  }

  hide() {
    this.overlayTarget.classList.remove("active")
  }

  connect() {
    document.addEventListener("turbo:load", () => {
      this.hide()
    })
  }
}
