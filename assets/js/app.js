
// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"

window.toggleModal=(id)=> {
    var modal = document.getElementById(id);
    modal.classList.toggle('sq-modal-show');
};

function toggleModal3(changeInfo) {
    var change = document.getElementById("changeInfo");
    change
        .classList
        .toggle("sq-show-modal");
}
function toggleModal4(productNumber) {
    var modal = document.getElementById("productNumber");
    modal
        .classList
        .toggle("sq-show-modal");
}
window.toggleModal2=(socialMedia)=> {
    var social = document.getElementById("socialMedia");
    social
        .classList
        .toggle("sq-show-modal");
}

