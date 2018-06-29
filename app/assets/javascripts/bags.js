function iterateOverBags() {  
  $.get("/bags/bag_data", function(data, status) {
    data.forEach(bag => {
      let newBag = new Bag(bag)
      let postHtml = newBag.formatIndex()
      $('#bags-data').append(postHtml)
    })
  })
};

function Bag(brand, title) {
  this.brand = brand
  this.title = title
};

Bag.prototype.formatIndex = function() {
  let postHtml = `
    <a href="/bags/${this.brand["id"]}" class="show_link"><p>${this.brand["title"]}</p></a>
    <p>${this.brand["brand"]}</p>
    <br>
  `
  return postHtml;
};

// function showClubsInBag() {
//   var id = $(this).data("id")
//   let showHtml = `
//   <h4>${club.brand}</h4>
//   <br>
//   <h4>${club.name}</h4>
//   `
//   $.get('/bags/' + id + '.json', function(data, status) {
//     data.clubs.forEach(club => {
//       console.log(club.name)
// }