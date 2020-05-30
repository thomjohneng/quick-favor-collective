// const searchInput = document.querySelector('#searchInput');
// const table = document.querySelector('#userTable');
// const row = document.querySelectorAll('.userRow');

// searchInput.addEventListener("keyup", (e) => {
//   row.forEach(
//     )
// })

const cityInput = document.getElementById('cities');
const industryInput = document.getElementById('industries')
// const table = document.querySelector('#userTable');
const tableRow = document.querySelectorAll('.userRow');

cityInput.addEventListener("change", (e) => {
  let city = cityInput.value
  tableRow.forEach((row) => {
    row.classList.remove("inactive-row")
    if (city === "All cities" || city === "Select city") {
      row.classList.remove("inactive-row")
    } else if (row.innerHTML.includes(city) === false) {
      row.classList.add("inactive-row")
    }
  })
  tableRow.forEach((row) => {
  let industry = industryInput.value
    if (row.innerHTML.includes(industry) === false && industry != "All industries") {
      row.classList.add("inactive-row")
    }
  })
})

industryInput.addEventListener("change", (e) => {
  let industry = industryInput.value
  tableRow.forEach((row) => {
    row.classList.remove("inactive-row")
    if (industry === "All industries" || industry === "Select industries") {
      row.classList.remove("inactive-row")
    } else if (row.innerHTML.includes(industry) === false) {
      row.classList.add("inactive-row")
    }
  })
  tableRow.forEach((row) => {
  let city = cityInput.value
    if (row.innerHTML.includes(city) === false && city != "All cities" ) {
      row.classList.add("inactive-row")
    }
  })
});
