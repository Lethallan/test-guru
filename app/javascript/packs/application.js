require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("utilities/sorting")
require("utilities/confirm_password")
require("utilities/form_inline")

import "bootstrap";
import "../stylesheets/application"  // <- Add this line

document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})