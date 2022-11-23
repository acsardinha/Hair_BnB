import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Tired of bad hair days ??"],
      typeSpeed: 60,
    })
  }

  // tentar criar um metodo fora do connect e chamar esse metodo no connect e
  // no event listener

}
