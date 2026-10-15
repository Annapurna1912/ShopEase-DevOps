
let cartCount = 0;

const cartDisplay = document.getElementById("cart-count");
const buttons = document.querySelectorAll(".add-cart");

buttons.forEach((button) => {
  button.addEventListener("click", () => {
    cartCount++;
    cartDisplay.textContent = cartCount;
    button.textContent = "Added ✓";

    setTimeout(() => {
      button.textContent = "Add to Cart";
    }, 800);
  });
});
