<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
          <a href="" class="header__logo-link">
            <img src="././assets/img/logo.jpg" alt="">
          </a>
        </div>
      </div>
      <div class="header__login">
        <h1>RESET PASSWORD</h1>
      </div>
    </div>

  </div>
</header>
<div class="container">
  <div id="login-form" class="auth-form">
    <div class="auth-form__container">
      <div class="auth-form__header">
        <h3 class="auth-form__heading">RESET PASSWORD</h3>
      </div>
      <div class="auth-form__form">
      	<form class="form-horizontal" action="newPassword" method="POST">
        <div class="auth-form__group">
          <input
                  type="pass"
                  class="auth-form__input"
                  name="password"
                  placeholder="Mật khẩu mới"
          />
        </div>

        <div class="auth-form__group">
          <input
                  type="password"
                  class="auth-form__input"
                  name="confPassword"
                  placeholder="Nhập lại mật khẩu"
          />
        </div>

      </div>

      <div class="auth-form__controls">
        <a href="Login.jsp" ><button class="btn btn--normal auth-form__control-back-btn">
          TRỞ LẠI
        </button>
        </a>
        <button class="btn btn--primary">RESET</button>
      </div>
      </form>
    </div>
  </div>


</div>
</body>
</html>