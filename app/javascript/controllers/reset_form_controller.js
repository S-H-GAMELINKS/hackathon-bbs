import { Controller } from "stimulus"

export default class extends Controller {
    reset() {
        console.log(42);
        this.element.reset()
    }
}