import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    days: Number,
    hours: Number,
    minutes: Number,
    seconds: Number
  }

  static targets = ["output"]

  connect() {
    this.startTimer()
  }

  startTimer() {
    this.interval = setInterval(() => {
      this.secondsValue += 1

      if (this.secondsValue >= 60) {
        this.secondsValue = 0
        this.minutesValue += 1
      }
      if (this.minutesValue >= 60) {
        this.minutesValue = 0
        this.hoursValue += 1
      }
      if (this.hoursValue >= 24) {
        this.hoursValue = 0
        this.daysValue += 1
      }

      this.updateDisplay()
    }, 1000)
  }

  updateDisplay() {
    this.outputTarget.textContent = `${this.daysValue} dias, ${this.hoursValue} horas, ${this.minutesValue} minutos e ${this.secondsValue} segundos`
  }

  disconnect() {
    clearInterval(this.interval)
  }
}
