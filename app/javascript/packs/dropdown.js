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
  const city = cityInput.value
  tableRow.forEach((row) => {
    row.classList.remove("inactive-row")
    if (row.innerHTML.includes(city) === false) {
      row.classList.add("inactive-row")
    }
  })
})

industryInput.addEventListener("change", (e) => {
  const industry = industryInput.value
  tableRow.forEach((row) => {
    row.classList.remove("inactive-row")
    if (row.innerHTML.includes(industry) === false) {
      row.classList.add("inactive-row")
    }
  })
})
