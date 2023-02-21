import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="passanger"
export default class extends Controller {
  static targets = [ "template", "add_passenger" ]
  
  add_passenger(event) {
    //event.preventDefault()
    const content = this.templateTarget.innerHTML.replace(/NEW_PASSENGER/g, new Date().valueOf())
    this.add_passengerTarget.insertAdjacentHTML('beforebegin', content)
  }

  remove_passenger(event) {
    //event.preventDefault()
    const passenger = event.target.closest(".passenger-fields")
    passenger.querySelector("input[name*='_destroy']").value = 1
    passenger.style.display = 'none'
  }
}
