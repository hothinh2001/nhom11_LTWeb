// Mô phỏng cơ sở dữ liệu người dùng
let usersDatabase = JSON.parse(localStorage.getItem('users')) || [];


//function đăng ký
function register() {
    const username = document.getElementById("registerEmail").value;
    const password = document.getElementById("registerPass").value;
    const confirmPassword = document.getElementById("confirmPass").value;

    //kiểm tra người đã đièn đầy ủ thông tin chưa
    if (!username || !password || !confirmPassword) {
        alert("Vui lòng điền đầy đủ thông tin");
        return;
    }

    //kiểm tra mật khẩu và xác nhận mật khẩu có giống nhau hay không
    if (password !== confirmPassword) {
        alert("Mật khẩu và xác nhận mật khẩu không giống nhau");
        return;
    }
    //kiểm tra người đã tồn tại trong cơ sở dữ liệu hay chưa
    const isUserExist = usersDatabase.find(user => user.username === username);
    if (isUserExist) {
        alert("Người dùng đã tồn tại");
        return;
    }
    //thêm người dùng vào localStorage
    usersDatabase.push({
        username,
        password
    });
    localStorage.setItem('users', JSON.stringify(usersDatabase));
    alert("Đăng ký thành công");

    //chuyển người dùng về trang đăng nhập
    window.location.href = "../login/index.html";

}

//function đăng nhập
function login() {
    const username = document.getElementById("loginEmail").value;
    const password = document.getElementById("loginPass").value;

    //kiểm tra người đã đièn đầy ủ thông tin chưa
    if (!username || !password) {
        alert("Vui lòng điền đầy đủ thông tin");
        return;
    }
    //kiểm tra người dùng có tồn tại trong cơ sở dữ liệu hay không
    const user = usersDatabase.find(user => user.username === username);
    if (!user) {
        alert("Người dùng không tồn tại");
        return;
    }
    //kiểm tra mật khẩu có đúng hay không
    if (user.password !== password) {
        alert("Mật khẩu không đúng");
        return;
    }
    window.location.href = "../home/index.html";
}





