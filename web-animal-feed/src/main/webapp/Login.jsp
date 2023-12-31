<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./assets/css/login.css">


    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
      rel="stylesheet"
    />
   
</head>
<body>
<header class="header">
    <div class="grid wide">
        <div class="header__logo hide-on-tablet">
            <div class="header__logo-container">
                <div class="logo-holder logo-4">
                    <a href="../home/index.html" class="header__logo-link">
                        <img src="././assets/img/logo.jpg" alt="">
                    </a>
                </div>
            </div>
            <div class="header__login">
                <h1>Đăng nhập</h1>
            </div>
        </div>

    </div>
</header>
<div class="container">
<form action="login" method="post">
    <div id="login-form" class="auth-form">
        <div class="auth-form__container">
          <div class="auth-form__header">
            <h3 class="auth-form__heading">Đăng nhập</h3>
           <a href="" <span class="auth-form__switch-btn js-switch-register"
              >Đăng ký</span
            ></a>
          </div>
          <div class="auth-form__form">


          <p class="text-danger">${mess}</p>

            <div class="auth-form__group">
              <input
                type="text"
                class="auth-form__input"
                name="username"
                placeholder="Username"
              />
            </div>

            <div class="auth-form__group">
              <input
                type="password"
                class="auth-form__input"
                name="password"
                placeholder="Mật khẩu của bạn"
              />
            </div>

            </div>

          <div class="auth-form__aside">
            <div class="auth-form__help">
              <a href="GetEmail.jsp" class="auth-form__help-link auth-form__help-forgot">
                Quên mật khẩu
              </a>
              <span class="auth-form__help-separate"></span>
              <a href="" class="auth-form__help-link"> Cần trợ giúp? </a>
            </div>
          </div>
          <div class="auth-form__controls">
           <a href="../home/index.html" ><button class="btn btn--normal auth-form__control-back-btn">
              TRỞ LẠI
            </button>
              </a>
            <button class="btn btn--primary">ĐĂNG NHẬP</button>
          </div>
        </div>
        <div class="auth-form__socials">
            <a
                    href=""
                    class="auth-form__socials--facebook btn btn--size-s btn--with-icon"
            >
                <i
                        class="auth-form__socials-icon fa-brands fa-facebook-square"
                ></i>
                <span class="auth-form__socials-title">Kết nối với Facebook</span>
            </a>
            <a
                    href=""
                    class="auth-form__socials--google btn btn--size-s btn--with-icon"
            >
                <!-- <i class="auth-form__socials-icon fa-brands fa-google"></i> -->
                <span class="auth-form__logo-social-img">
              <img
                      src="../../assets/img/google_signin.png"
                      alt="Google"
                      class="google-login__img"
              />
            </span>
                <span class="auth-form__socials-title">Kết nối với Google</span>
            </a>
        </div>
        </div>

      </div>
      </form>
</div>
</body>
</html>