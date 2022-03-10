import { Controller } from "stimulus";
import "jquery-bar-rating";
import $ from 'jquery';

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    $('#review_rating').barrating({
      theme: 'fontawesome-stars'
    });
  }
}
