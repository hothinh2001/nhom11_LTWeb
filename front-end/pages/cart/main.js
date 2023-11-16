//function click button chuyển qua trang checkout
function clickCheckout() {
    window.location.href = "../checkout/index.html";
}

// Lấy đối tượng input và giá trị hiện tại
let quantityInput = document.getElementById('quantityInput');
let quantityInput2 = document.getElementById('quantityInput2');
let quantityInput3 = document.getElementById('quantityInput3');
let currentQuantity = parseInt(quantityInput.value);
let currentQuantity2 = parseInt(quantityInput2.value);
let currentQuantity3 = parseInt(quantityInput3.value);

// Hàm giảm số lượng
function decreaseQuantity() {
    if (currentQuantity > 1) {
        currentQuantity--;
        quantityInput.value = currentQuantity;
        quantityInput2.value = currentQuantity2;
        quantityInput3.value = currentQuantity3;
    }
}

// Hàm tăng số lượng
function increaseQuantity() {
    currentQuantity++;
    quantityInput.value = currentQuantity;
    quantityInput2.value = currentQuantity2;
    quantityInput3.value = currentQuantity3;
}
