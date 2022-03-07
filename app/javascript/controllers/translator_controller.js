import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "results"]

  fetchTranslation(word) {
    this.resultsTarget.innerHTML = `<a href="https://www.wordreference.com/es/en/translation.asp?spen=${this.inputTarget.value}" id="dictionary-link"><strong>${this.inputTarget.value}</strong></a>`
    fetch(`https://www.dictionaryapi.com/api/v3/references/spanish/json/${word}?key=388f7298-4a72-455e-811c-997fb974223e`)
    .then(response => response.json())
    .then(data =>
      // console.log(data)
      data[0]["shortdef"]
      )
    .then(definitions =>
      definitions.forEach(definition => {
        this.resultsTarget.insertAdjacentHTML("beforeend", `<li>${definition}</li>`);
      })
      )
    }

  search(event) {
    event.preventDefault()
    this.resultsTarget.innerHTML = ""
    this.fetchTranslation(this.inputTarget.value)
  }
}
