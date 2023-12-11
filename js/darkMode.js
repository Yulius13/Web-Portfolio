const btnSwitch = document.querySelector("#switch");
const signUpBtnLogin = document.getElementById("signUpBtnLogin");
const signInBtnLogin = document.getElementById("signInBtnLogin");
const signInmobile = document.getElementById("sign-in");

btnSwitch.addEventListener("click", () => {
  document.body.classList.toggle("dark");
  btnSwitch.classList.toggle("active");
});

signUpBtnLogin.addEventListener("click", () => {
  signInmobile.classList.toggle("mobile");
});
signInBtnLogin.addEventListener("click", () => {
  signInmobile.classList.toggle("mobile");
});
