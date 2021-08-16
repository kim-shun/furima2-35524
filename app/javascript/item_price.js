window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const addTaxDom = document.getElementById("add-tax-price");
    const taxValue = inputValue * 0.1;
    addTaxDom.innerHTML = Math.floor(taxValue);
    const profit = document.getElementById("profit");
    profit.innerHTML = Math.floor(inputValue - taxValue);
  })
});