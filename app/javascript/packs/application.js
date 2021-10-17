// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "../plugins/letter"
import "../plugins/lol"
import { initMapbox } from '../plugins/init_mapbox';


anime.timeline({ loop: true })
  .add({
    targets: 'img',
    scale: [14, 1],
    opacity: [0, 1],
    easing: "easeOutCirc",
    duration: 1500,
    delay: (el, i) => 800 * i
  }).add({
    targets: '.img',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 100000
  });

Rails.start()
Turbolinks.start()
ActiveStorage.start()


document.addEventListener('turbolinks:load', () => {
  initMapbox();
})
