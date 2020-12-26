// assets/javascripts/controllers/reset_form_controller.js
import { Controller} from "stimulus"

export default class extends Controller {
  static targets = ["button"]

  reset() {
    this.element.reset()
    this.buttonTarget.disabled = false
  }
}
