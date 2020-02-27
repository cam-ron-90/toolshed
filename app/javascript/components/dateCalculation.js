
const initBookingPrice = () => {
  const startDateElement = document.getElementById("booking_start_date");
  const endDateElement = document.getElementById("booking_end_date");
  const priceElement = document.querySelector(".price_total");


  const updateHtmlPrice = (price) => {
    if (isNaN(parseFloat(price))) {
      return priceElement.innerText = `Total Price: -`;
    } else {
      return priceElement.innerText = `Total Price: $${price}`;
    }
  }

  const calculateTotal = () => {
    const startDate = Date.parse(startDateElement.value);
    const endDate = Date.parse(endDateElement.value);
    const calcDays = ((endDate - startDate) / 86400000);
    const toolPriceS = document.getElementsByClassName("tool_cost")[0].innerText;
    const toolPrice = toolPriceS.substring(1);
    const totalPrice = (toolPrice * calcDays);
    return totalPrice;
    // coversion
    // find the differnece in days
    // mulitply by the tool price (get element by id)
    // override the inner text of the class total_price
  }

  document.getElementById("booking_start_date").addEventListener("change", (event) => {
    const newPrice = calculateTotal();
    updateHtmlPrice(newPrice);
  });

  document.getElementById("booking_end_date").addEventListener("change", (event) => {
    const newPrice = calculateTotal();
    updateHtmlPrice(newPrice);
  });
}

export { initBookingPrice };
// export { calculateTotal };


