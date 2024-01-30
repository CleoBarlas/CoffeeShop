function getProduct(id) {
if (document.getElementById("product"+id).innerHTML=="") {
document.getElementById("product"+id).innerHTML="hello!";

fetch('http://localhost:8080/api/v1/products/' + id)
.then(product => product.json()) 
.then(function(product) { 
	
let textToDisplay = "";

textToDisplay += "Category: " + product.category + "<br>";
textToDisplay += "Description: " + product.description + "<br>";
textToDisplay += "Price: " + product.price + "<br>";

document.getElementById("product"+id).innerHTML=textToDisplay;
}); 
}
else {
document.getElementById("product"+id).innerHTML="index";
}
}




