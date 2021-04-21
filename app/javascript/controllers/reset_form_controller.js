import Rails from "@rails/ujs"
import { Controller } from "stimulus"

export default class extends Controller {
    reset() {
        Rails.enableElement(this.element)
        this.element.reset()
    }
}