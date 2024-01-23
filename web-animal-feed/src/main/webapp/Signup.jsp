<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/signup.css">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />

    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
            rel="stylesheetsignup"
    />
</head>
<body>
<header class="header">
    <div class="grid wide">
        <div class="header__logo hide-on-tablet">
            <div class="header__logo-container">
                <div class="logo-holder logo-4">
                    <a href="../home/index.html" class="header__logo-link">
                        <img src="../../assets/img/logo.jpg" alt="">
                    </a>
                </div>
            </div>
            <div class="header__login">
                <h1>Đăng kí</h1>
            </div>
        </div>

    </div>
</header>
<div class="container">
    <form action="signup" method="post">
        <div id="regiter-form" class="auth-form">
            <div class="auth-form__container">
                <div class="auth-form__header">
                    <h3 class="auth-form__heading">Đăng ký</h3>
                    <a href="Login.jsp"><span class="auth-form__switch-btn js-switch-login"
                    >Đăng nhập</span></a>
                </div>
                <div class="auth-form__form" action="signup" method="post">
                    <div class="auth-form__group">
                        <input
                                type="email"
                                class="auth-form__input"
                                id="registerEmail"
                                name="email"
                                placeholder="Email của bạn"
                        />
                    </div>
                    <div class="auth-form__group">
                        <input
                                type="text"
                                class="auth-form__input"
                                id="registerUsername"
                                name="username"
                                placeholder="username"
                        />
                    </div>
                    <div class="auth-form__group">
                        <div class="auth-form__input" style="border:none">
                            <label for="dateOfBirth">Ngày sinh:</label>
                            <input type="date" id="dateOfBirth" name="birthdate"/>
                        </div>
                    </div>

                    <div class="auth-form__group">
                        <div class="auth-form__input" style="border:none">
                            <label>Giới tính</label>
                            <select id="gender" name="gender"
                                    style="width: 20%; font-size: 16px; padding: 6.5px 10px">
                                <option value="khac">Khác</option>
                                <option value="Nam">Nam</option>
                                <option value="Nu">Nữ</option>
                            </select>
                        </div>
                    </div>
                    <div class="auth-form__group">
                        <input
                                type="number"
                                class="auth-form__input"
                                id="registerPhone"
                                name="phone"
                                placeholder="Số điện thoại"
                        />
                    </div>

                    <div class="auth-form__group">
                        <input
                                type="password"
                                id="registerPass"
                                class="auth-form__input"
                                name="pass"
                                placeholder="Mật khẩu của bạn"
                        />
                    </div>

                    <div class="auth-form__group">
                        <input
                                type="password"
                                id="confirmPass"
                                class="auth-form__input"
                                name="repass"
                                placeholder="Nhập lại mật khẩu"
                        />
                    </div>
                    <p class="text-danger">${mess}</p>


                    <div class="auth-form__aside">
                        <p class="auth-form__policy-text">
                            Bằng việc đăng ký, bạn đã đồng ý với Shop về
                            <a href="" class="auth-form__text-link">Điều khoản dịch vụ</a>
                            &
                            <a href="" class="auth-form__text-link">Chính sách bảo mật</a>
                        </p>
                    </div>
                    <div class="auth-form__controls">
                        <a href="home">
                            <button class="btn btn--normal auth-form__control-back-btn">
                                TRỞ LẠI
                            </button>
                        </a>
                        <button class="btn btn--primary" type="submit" value="signup">ĐĂNG KÝ</button>
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
  