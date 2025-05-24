
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { theme: String }

  connect() {
    this.theme = "light"
    document.body.classList.add("dark" === this.theme ? "dark" : "light")
  }

  toggleTheme() {
    if (this.theme === "light") {
      this.theme = "dark"
      document.body.classList.remove("dark")
      document.body.classList.add("dark")
    } else {
      this.theme = "light"
      document.body.classList.remove("dark")
      document.body.classList.add("light")
    }
  }

  getThemeColor() {
    return this.theme === "light" ? "#white" : "#black"
  }
}