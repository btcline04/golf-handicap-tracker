function iterateOverBags() {  
  $.get("/bags/bag_data", function(data, status) {
    data.forEach(bag => {
      let newBag = new Bag(bag)
      let postHtml = newBag.formatIndex()
      $('#bags-data').append(postHtml)
    })
  })
};

function sortBags() {
  $.get("/bags/bag_data", function(data, status) {
  const sortedData = data.sort((a, b) => a.title.localeCompare(b.title));
    sortedData.forEach(bag => {
      let newBag = new Bag(bag)
      let postHtml = newBag.formatIndex()
      $('#bags-data').append(postHtml)
    })
  })
};

class Bag {
  constructor(brand, title) {
    this.brand = brand
    this.title = title
  }

  formatIndex() {
    let postHtml = `
    <a href="/bags/${this.brand["id"]}" class="show_link"><p>${this.brand["title"]}</p></a>
    <p>${this.brand["brand"]}</p>
    <br>
  `
  return postHtml;
  }

}
