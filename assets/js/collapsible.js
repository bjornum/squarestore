var collaps = document.getElementsByClassName("sq-collapsible");
var collapsContent = document.getElementsByClassName("sq-collapsible-content");

var i;

for (i = 0; i < collaps.length; i++){
  collaps[i].addEventListener("click", function(){
    this.classList.toggle("active");
    var collapsContent = this.nextElementSibling;
    if(collapsContent.style.display === "block"){
      collapsContent.style.display ="none";
    } else {
        collapsContent.style.display="block";
    }
  });
} 
