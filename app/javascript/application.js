// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"

app/javascript/controllers/index.js
// Import and register all your controllers from the importmap under
controllers/*
// import { application } from "controllers/application"
// Eager load all controllers defined in the import map under
controllers/**/*_controller
// import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
// eagerLoadControllersFrom("controllers", application)
// Lazy load controllers as they appear in the DOM (remember not to
preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)
import { application } from "./application";
