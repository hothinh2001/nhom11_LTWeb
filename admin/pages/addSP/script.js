document.addEventListener('DOMContentLoaded', function() {
    const productList = document.querySelector('.product-list ul');
    const addProductButton = document.getElementById('add-button');
    const productNameInput = document.getElementById('product-name');

    addProductButton.addEventListener('click', function() {
        const productName = productNameInput.value;
        if (productName.trim() !== '') {
            const listItem = document.createElement('li');
            listItem.innerHTML = `
                <span class="product-name">${productName}</span>
                <button class="edit-button">Sửa</button>
                <button class="delete-button">Xóa</button>
            `;
            productList.appendChild(listItem);
            productNameInput.value = '';
        }
    });

    productList.addEventListener('click', function(event) {
        const target = event.target;
        if (target.classList.contains('delete-button')) {
            target.parentElement.remove();
        } else if (target.classList.contains('edit-button')) {
            const productName = prompt('Sửa tên sản phẩm:', target.previousElementSibling.textContent);
            if (productName !== null) {
                target.previousElementSibling.textContent = productName;
            }
        }
    });
});
