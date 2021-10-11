// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
<<<<<<< HEAD
<<<<<<< HEAD
require("bootstrap")
import "../../assets/stylesheets/application";
=======
require ("bootstrap")
import "../../assets/stylesheets/application";

document.addEventListener("turbolinks:load",function(){
    $(function(){
        $('[data-toggle="tooltip"]').tooltip()
        $('[data-toggle="popover"]').popover()
    })
})

>>>>>>> origin/feature/carlos/VistaRecorrido
=======
>>>>>>> parent of 5970c25... Ruta_correcta_vista

Rails.start()
Turbolinks.start()
ActiveStorage.start()
