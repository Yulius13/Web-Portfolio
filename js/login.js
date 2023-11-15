const sigUpButton = document.getElementById("signUpInfBtn");
const sigInButton = document.getElementById("signInInfBtn");
const main = document.getElementById("main");

sigUpButton.addEventListener("click", () => {
  main.classList.add("right-panel-active");
});

sigInButton.addEventListener("click", () => {
  main.classList.remove("right-panel-active");
});
