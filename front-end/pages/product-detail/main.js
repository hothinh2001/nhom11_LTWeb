
const descriptionMaterial = document.getElementsByClassName('description-material');
const descriptionNutrition = document.getElementsByClassName('description-nutrition');
const descriptionTutorial = document.getElementsByClassName('description-tutorial');
const btnMaterial = document.getElementsByClassName('btn-material');
const btnNutrition = document.getElementsByClassName('btn-nutrition');
const btnTutorial = document.getElementsByClassName('btn-tutorial');
const description = document.getElementsByClassName('product-detail__describe');

// Gắn sự kiện click cho từng nút "Material"
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
//gắn sự kiện click cho từng nút "Nutrition" và "Tutorial"
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