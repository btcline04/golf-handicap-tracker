function iterateOverBags() {  
  $.get("/bags/bag_data", function(data, status) {
    data.forEach(bag => {
      let newBag = new Bag(bag)
      console.log(newBag);
      let postHtml = newBag.formatIndex()
      $('#bags-data').append(postHtml)
    })
  })
};

function Bag (brand, title) {
  this.brand = brand
  this.title = title
};

Bag.prototype.formatIndex = function() {
  let postHtml = `
    <a href="/bags/${this.brand["id"]}"><p>${this.brand["title"]}</p></a>
    <p>${this.brand["brand"]}</p>
    <br>
  `
  return postHtml;
};


