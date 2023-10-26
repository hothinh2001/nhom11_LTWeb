const mainImage = document.getElementById("main-image");
const images = document.querySelectorAll(".product-detail__img-item");
const slider = document.querySelector('.product-detail__img-slider');
const prevButton = document.getElementById('prevButton');
const nextButton = document.getElementById('nextButton');


let currentIndex = 0;

// Hàm cập nhật ảnh khi click
function updateImageByClick(event) {
    const image = event.target;
    mainImage.src = image.src;
    currentIndex = Array.from(images).indexOf(image); // Cập nhật currentIndex dựa trên vị trí của hình ảnh trong danh sách
    updateSlider();
}

// Hàm cập nhật ảnh khi click nút prev
function updateImageByPrev() {
    if (currentIndex > 0) {
        currentIndex--;
        mainImage.src = images[currentIndex].src;
        updateSlider();
    }
}

// Hàm cập nhật ảnh khi click nút next
function updateImageByNext() {
    if (currentIndex < images.length - 1) {
        currentIndex++;
        mainImage.src = images[currentIndex].src;
        updateSlider();
    }
}

// Hàm cập nhật slider
function updateSlider() {
    const scrollPosition = currentIndex * images[0].offsetWidth; // Định vị hiện tại cho scroll

    slider.scrollTo({
        left: scrollPosition,
        behavior: "smooth", // Tạo hiệu ứng mượt mà
    });

    // Loại bỏ lớp active khỏi tất cả các hình ảnh
    images.forEach((img) => {
        img.classList.remove("product-detail__img-item--active");
    });

    // Thêm lớp active cho hình ảnh được chọn
    images[currentIndex].classList.add("product-detail__img-item--active");
}

// Thêm sự kiện click cho các ảnh
images.forEach((image) => {
    image.addEventListener("click", updateImageByClick);
});

// Thêm sự kiện click cho nút prev
// prevButton.addEventListener('click', updateImageByPrev);

// Thêm sự kiện click cho nút next
// nextButton.addEventListener('click', updateImageByNext);

const descriptionMaterial = document.getElementsByClassName('description-material');
const descriptionNutrition = document.getElementsByClassName('description-nutrition');
const descriptionTutorial = document.getElementsByClassName('description-tutorial');
const btnMaterial = document.getElementsByClassName('btn-material');
const btnNutrition = document.getElementsByClassName('btn-nutrition');
const btnTutorial = document.getElementsByClassName('btn-tutorial');
const description = document.getElementsByClassName('product-detail__describe');

for (let i = 0; i < btnMaterial.length; i++) {
    btnMaterial[i].addEventListener('click', function () {
        // Hiển thị div có lớp 'description-material'
        for (let j = 0; j < descriptionMaterial.length; j++) {
            descriptionMaterial[j].style.display = 'block';
        }
        // Ẩn các div khác
        for (let j = 0; j < descriptionNutrition.length; j++) {
            descriptionNutrition[j].style.display = 'none';
        }
        for (let j = 0; j < descriptionTutorial.length; j++) {
            descriptionTutorial[j].style.display = 'none';
        }
    });
}
// Tương tự, gắn sự kiện click cho từng nút "Nutrition" và "Tutorial"
for (let i = 0; i < btnNutrition.length; i++) {
    btnNutrition[i].addEventListener('click', function () {
        for (let j = 0; j < descriptionMaterial.length; j++) {
            descriptionMaterial[j].style.display = 'none';
        }
        for (let j = 0; j < descriptionNutrition.length; j++) {
            descriptionNutrition[j].style.display = 'block';
        }
        for (let j = 0; j < descriptionTutorial.length; j++) {
            descriptionTutorial[j].style.display = 'none';
        }
    });
}

for (let i = 0; i < btnTutorial.length; i++) {
    btnTutorial[i].addEventListener('click', function () {
        for (let j = 0; j < descriptionMaterial.length; j++) {
            descriptionMaterial[j].style.display = 'none';
        }
        for (let j = 0; j < descriptionNutrition.length; j++) {
            descriptionNutrition[j].style.display = 'none';
        }
        for (let j = 0; j < descriptionTutorial.length; j++) {
            descriptionTutorial[j].style.display = 'block';
        }
    });
}