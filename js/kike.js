
let AccessKey = "OK-ACCESS-KEY";
let sign = "OK-ACCESS-SIGN";
let passphrase = "OK-ACCESS-PASSPHRASE";
let timestamp = "OK-ACCESS-TIMESTAMP";
let simulated= "x-simulated-trading";

function login() {
  const options = {
    method: "GET",
    headers: {
      Accept: "application/json; charset=utf-8",
      ContentType: "application/json",
      AccessKey: "5bb33526-7790-4015-8085-64e78e927ed3",
      passphrase: "03B27296ACD30E248B115461B7A9ED77",
      timestamp: "1538054050",
      sign: "recorredorredes@gmail.com",
      simulated: "1"
    },
  };
  fetch("https://www.okx.com/api/v5/account/balance")
    .then((response) => response.json())
    .then((data) => {
      console.log(data);
    })
    .catch((err) => console.error(err));
}
login();
///https://www.okx.com/api/v5/public/instruments?instType=SPOT
//https://www.okx.com/api/v5/account/balance
//apikey = "5bb33526-7790-4015-8085-64e78e927ed3"
//secretkey = "03B27296ACD30E248B115461B7A9ED77"
//IP = ""
//Nombre de la API = "recorredorredes@gmail.com"
//Permisos = "Consultar"
