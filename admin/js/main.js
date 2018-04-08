var hamburger = document.querySelector("#hamburger");
var menuClose = document.querySelector("#menuClose");
var navigationList = document.querySelector("#navigationList");

function popNav() {
  navigationList.style.right = "0";
  hamburger.style.fontSize = "0";
  menuClose.style.fontSize = "2em";
}

function closeNav() {
  navigationList.style.right = "-100%";
  hamburger.style.fontSize = "2em";
  menuClose.style.fontSize = "0";
}



hamburger.addEventListener("click", popNav, false);
menuClose.addEventListener("click", closeNav, false);
