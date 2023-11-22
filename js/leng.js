var selectFlield = document.getElementById("selectFlield");
var seletText = document.getElementById("seletText");
var getSeletText = seletText.innerHTML;
var options = document.getElementsByClassName("options");
var list = document.getElementById("list");
var expand_less = document.getElementById("expand_less");
var arrowIcon = document.getElementById("arrowIcon");

function obtenerIdioma() {
  if (localStorage.getItem("language") === null) {
    localStorage.setItem("language", "Pt");
  }
}

function NewURL() {
  let lenguageURL = localStorage.getItem("language");
  let currentUrl = window.location.href + "?language=" + lenguageURL;
  //console.log(currentUrl);
  const found = currentUrl.includes("?language=");
  if (found) {
    currentUrl = currentUrl.substr(0, currentUrl.indexOf("?"));
    currentUrl = currentUrl + "?language=" + lenguageURL;
    window.location.href = currentUrl;
  } else {
    window.location.href = currentUrl;
  }
}

function getlanguage() {
  let laguagefect =localStorage.getItem("language");
  let urlfectlanguage =
    "https://julioandrescastanedamillan.com/api/language/login/" +
    laguagefect +
    ".php";
  //console.log(urlfectlanguage);
  const options = {
    method: "GET",
    headers: {
      Accept: "application/json; charset=utf-8",
      ContentType: "application/json",
    },
  };

  fetch(urlfectlanguage)
    .then((response) => response.json())
    .then((data) => {
      document.getElementById("signUpTitle").innerHTML = data[0].signUpTitle;
      document.getElementById("signUpEmail").innerHTML = data[0].signUpEmail;
      document.getElementById("signUpPw").innerHTML = data[0].signUpPw;
      document.getElementById("signUpBtn").innerHTML = data[0].signUpBtn;
      document.getElementById("signUpInfTittle").innerHTML =
        data[0].signUpInfTittle;
      document.getElementById("signUpInfParagraph").innerHTML =
        data[0].signUpInfParagraph;
      document.getElementById("signUpInfBtn").innerHTML = data[0].signUpInfBtn;
      document.getElementById("signInTitle").innerHTML = data[0].signInTitle;
      document.getElementById("signInParagraph").innerHTML =
        data[0].signInParagraph;
      document.getElementById("signInEmail").innerHTML = data[0].signInEmail;
      document.getElementById("signInPw").innerHTML = data[0].signInPw;
      document.getElementById("signInPw2").innerHTML = data[0].signInPw2;
      document.getElementById("signInBtn").innerHTML = data[0].signInBtn;
      document.getElementById("signInInfBtn").innerHTML = data[0].signInInfBtn;
      document.getElementById("signInInfTittle").innerHTML =
        data[0].signInInfTittle;
      document.getElementById("signInInfBtn").innerHTML = data[0].signInInfBtn;
      document.getElementById("signInInfParagraph").innerHTML =
        data[0].signInInfParagraph;

      //console.log(data[0].signUpTitle);
    })
    .catch((err) => console.error(err));
}

obtenerIdioma();
getlanguage();

seletText.innerHTML = localStorage.getItem("language");

selectFlield.onclick = function () {
  list.classList.toggle("hide");
  list.classList.toggle("incrementar");
  arrowIcon.classList.toggle("rotate");
};

for (option of options) {
  option.onclick = function () {
    seletText.innerHTML = this.textContent;
    localStorage.setItem("language", seletText.innerHTML.trim());
    list.classList.toggle("hide");
    list.classList.toggle("incrementar");
    arrowIcon.classList.toggle("rotate");
    NewURL();
  };
}
