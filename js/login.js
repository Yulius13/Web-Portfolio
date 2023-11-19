const sigUpButton = document.getElementById("signUpInfBtn");
const sigInButton = document.getElementById("signInInfBtn");
const main = document.getElementById("main");
const inputSignUp = document.getElementsByClassName("inputSignUp");
const inputSignIn = document.getElementsByClassName("inputSignIn");

sigUpButton.addEventListener("click", () => {
  main.classList.add("right-panel-active");
  inputSignIn[0].setAttribute("disabled", "");
  inputSignIn[1].setAttribute("disabled", "");
  inputSignUp[0].removeAttribute("disabled");
  inputSignUp[1].removeAttribute("disabled");
  inputSignUp[2].removeAttribute("disabled");
  
});

sigInButton.addEventListener("click", () => {
  main.classList.remove("right-panel-active");
  inputSignIn[0].removeAttribute("disabled");
  inputSignIn[1].removeAttribute("disabled");
  inputSignUp[0].setAttribute("disabled", "");
  inputSignUp[1].setAttribute("disabled", "");
  inputSignUp[2].setAttribute("disabled", "");
});
