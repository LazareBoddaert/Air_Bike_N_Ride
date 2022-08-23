import { Controller } from "@hotwired/stimulus"
import { start } from "@popperjs/core"

export default class extends Controller {
  static targets = ["total"]

  connect() {
    console.log("Book total Controller connected")
  }

  computePrice() {
    const startDate = document.getElementById('booking_start_date').valueAsDate
    const endDate = document.getElementById('booking_end_date').valueAsDate
    const pricePerDay = parseInt(document.getElementById('price').dataset.price, 10)

    if (startDate && endDate) {
      const duration = (endDate - startDate) / (24 * 3600 * 1000)
      this.totalTarget.innerHTML = duration * pricePerDay
    }
  }
}
