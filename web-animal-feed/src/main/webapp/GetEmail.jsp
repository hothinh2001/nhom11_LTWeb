<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8"/>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Forget Password</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='' rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
body {
	background-position: center;
	background-color: #eee;
	background-repeat: no-repeat;
	background-size: cover;
	color: #505050;
	font-family: "Rubik", Helvetica, Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	line-height: 1.5;
	text-transform: none
}

.forgot {
	background-color: #fff;
	padding: 12px;
	border: 1px solid #dfdfdf
}

.padding-bottom-3x {
	padding-bottom: 72px !important
}

.card-footer {
	background-color: #fff
}

.btn {
	font-size: 13px
}

.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #76b7e9;
	outline: 0;
	box-shadow: 0 0 0 0px #28a745
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body'>
	<div class="container padding-bottom-3x mb-2 mt-5">
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10">
				<form class="card mt-4" action="forgotPassword" method="POST" id="myForm">
					<div class="card-body">
						<div class="form-group">
							<label for="email-for-pass">Nhập địa chỉ email của bạn </label>
								<input
								class="form-control" type="text" name="email" id="email-for-pass" required="">
								<small id="error_email"></small>
								<small class="form-text text-muted">Nhập địa chỉ email đã đăng ký. Sau đó, chúng tôi sẽ gửi email OTP đến địa chỉ này..</small>
						</div>
					</div>
					<div class="card-footer">
						<button  class="btn btn-success" type="submit">Lấy mật khẩu</button>
					</div>
				</form>
				<div class="card-footer">
				<a href="Login.jsp">
               <button class="btn btn-danger">Trở về Đăng nhập</button>
               </a>
               </div>

			</div>
		</div>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript' src=''></script>
	<script type='text/javascript' src=''></script>
	<script type='text/Javascript'></script>
</body>
<script>
	$(document).ready(function (){
		function validateEmail(sEmail){
			var filter =/^([\w-\.]+)@((\[0-9]{1,3}\.[0-9]{1-3}\.}\.[0-9]{1-3}\.}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
			if(filter.test(sEmail)){
				return true;
			}else{
				return false;
			}
		}
		$('#myForm').bind({
			'submit': function (){
				if(!validateEmail($('#email-for-pass').val())){
					$('#email-for-pass').css('color','red');
					$('#error_email').html('Email bạn nhập không hợp lệ!!');
					return false;
				}
				return true;
			},
			'keydown': function (){
				if($('#email-for-pass').val().length > 0){
			$('#error_email').html('')
				}
			}
		});
	});
</script>
</html>