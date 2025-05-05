var total = 0;

function loadCategories() {
    var categoriesContainer = document.getElementById("categories");

    products.forEach((product, index) => {
        categoriesContainer.innerHTML +=
            '<div onclick="loadProducts(' + index + ')" class="card mx-1 btn-card rounded p-3 text-center">' +
            '<small>' + product.category + '</small>' +
            '</div>';
    });
}

function loadProducts(categoryIndex) {
    var maincontainer = document.getElementById("maincontainer");
    maincontainer.innerHTML = "";

    products[categoryIndex].contents.forEach(content => {
        maincontainer.innerHTML +=
            '<div onclick="addToReceipt(' + content.price + ', \'' + content.code + '\', \'' + content.name + '\', \'' + content.description + '\')" class="card mx-1 my-2 btn-card content p-3 text-center">' +
            '<img src="' + content.image + '" alt="' + content.name + '" class="img-fluid mb-2" style="max-width: 100px; height: auto; display: block; margin: 0 auto;">' +
            '<small class="name mt-3 mb-2">' + content.name + '</small>' +
            '<div class="price">₱' + content.price + '</div>' +
            '<small class="description text-muted mt-3">' + content.description + '</small>' +
            '</div>';
    });
}

function addToReceipt(price, code, name, description) {
    if (document.getElementById("receipt").innerText === "Receipt printed.") {
        document.getElementById("receipt").innerHTML = "";
    }

    var receiptContainer = document.getElementById("receipt");
    var items = document.getElementById("receipt-item" + code);

    if (items) {
        var quantity = document.getElementById("quantity" + code);
        var totalSpan = document.getElementById("line-total" + code);
        quantity.innerText = parseFloat(quantity.innerText) + 1;
        totalSpan.innerText = '₱' + (parseFloat(quantity.innerText) * price);
    } else {
        receiptContainer.innerHTML +=
            '<div id="receipt-item' + code + '" class="receipt-item">' +
            '<div><small>' + code + ' x <span id="quantity' + code + '" class="quantity">1</span></small></div>' +
            '<div><small id="line-total' + code + '">₱' + price + '</small></div>' +
            '</div>';
    }

    total += parseFloat(price);
    document.getElementById("totalValue").innerText = '₱' + total;
}

function printReceipt() {
    document.getElementById("receipt").innerHTML = "<div class='text-success'><b>Receipt printed.</b></div>";
    document.getElementById("totalValue").innerText = "₱0";
    total = 0;
}

function clearReceipt() {
    document.getElementById("receipt").innerHTML = "";
    document.getElementById("totalValue").innerText = "₱0";
    total = 0;
}

loadCategories();
