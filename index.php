<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="dist/css/main.css">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>

<body class="login-main dark">
    <h1 class="logo-yls-tittle">
        Julio Andres Castañeda Millan
    </h1>
    <div id="yls-myDropdown-leg">
        <div class="mydropdown-selector">
            <div class="selectFlield" id="selectFlield">
                <p id="seletText"></p>
                <span class="material-symbols-outlined" id="arrowIcon"> expand_more</span>
            </div>
            <ul class="list-leng hide" id="list">
                <li class="options">
                    <img src="dist/img/pt.png" alt="pt">
                    <p>Pt</p>
                </li>
                <li class="options">
                    <img src="dist/img/en.png" alt="en">
                    <p>En</p>
                </li>
                <li class="options">
                    <img src="dist/img/es.png" alt="es">
                    <p>Es</p>
                </li>
            </ul>
        </div>
    </div>
    <div class="container-switch">
        <button class="switch active" id="switch">
             <span class="material-symbols-outlined">light_mode</span>
             <span class="material-symbols-outlined">dark_mode</span>
        </button>
    </div>
   
    <div class="coniatiner-main" id="main">
        <div class="sign-up">
            <form autocomplete="off">
                <h2 id="signInTitle"></h2>
                <p id="signInParagraph"></p>
                <div class="boxinput">
                    <input class="inputSignUp" type="email" name="email" required="" autocomplete="off" disabled  >
                    <span id="signInEmail"></span>
                </div>
                <div class="boxinput">
                    <input class="inputSignUp" type="password" name="psw" required="" autocomplete="off" disabled  >
                    <span id="signInPw"></span>
                </div>
                <div class="boxinput">
                    <input class="inputSignUp" type="password" name="psw2" required="" autocomplete="off" disabled >
                    <span id="signInPw2"></span>
                </div>
                
                <button id="signInBtn"></button>
                <button class="btn-mobile2" id="signInBtnLogin"></button>
                
            </form>
        </div>
        <div class="sign-in" id="sign-in">
            <form autocomplete="off">
                <div class="logo-yls">
                    <h2>{...}</h2>
                    <p class="logo-yls-p"><span>y</span>u<span>l</span>iu<span>s</span></p>
                </div>
                <h2 id="signUpTitle"></h2>
                <div class="boxinput">
                    <input class="inputSignIn" type="email" name="email" required="" autocomplete="off">
                    <span id="signUpEmail"></span>
                </div>
                <div class="boxinput">
                    <input class="inputSignIn" type="password" name="psw" required="" autocomplete="off">
                    <span id="signUpPw"></span>
                </div>

                <button id="signUpBtn"></button>
                <button class="btn-mobile2" id="signUpBtnLogin"></button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-left">

                    <h2 id="signInInfTittle"></h2>
                    <p id="signInInfParagraph"></p>
                    <button id="signInInfBtn"></button>
                </div>
                <div class="overlay-right">
                    <h2 id="signUpInfTittle"></h2>
                    <p id="signUpInfParagraph"></p>
                    <button id="signUpInfBtn"></button>
                </div>
            </div>
        </div>
    </div>
    <script src="js/login.js"></script>
    <script src="js/leng.js"></script>
    <script src="js/darkMode.js"></script>
</body>

</html>