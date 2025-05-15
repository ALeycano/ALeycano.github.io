var categories = [];
var products = [];

var maincontainer = document.getElementById("maincontainer");
var total = 0;

const getAllCategories = async () => {
    fetch('http://localhost/Github/ALeycano.github.io/ADET/A06/categories.php')
        .then(response => response.json())
        .then(data => {
            categories = data;
            loadCategories();
        });
};

const getAllProducts = async (categoryID) => {
    const categoryData = { categoryID: categoryID };

    fetch('http://localhost/Github/ALeycano.github.io/ADET/A06/products.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(categoryData)
    })
        .then(response => response.json())
        .then(data => {
            products = data;
            loadProducts();
        });
};

function loadCategories() {
    var categoriesContainer = document.getElementById("categories");
    categoriesContainer.innerHTML = "";

    categories.forEach(function (category) {
        categoriesContainer.innerHTML +=
            '<div onclick="getAllProducts(' + category.categoryID + ')" class="card mx-1 btn-card rounded p-3 text-center">' +
            '<small>' + category.name + '</small>' +
            '</div>';
    });
}

function loadProducts() {
    maincontainer.innerHTML = "";

    products.forEach(function (product) {
        maincontainer.innerHTML +=
            '<div onclick="addToReceipt(' + product.price + ', \'' + product.code + '\', \'' + product.name + '\', \'' + product.description + '\')" class="card mx-1 my-2 btn-card content p-3 text-center">' +
            '<img src="' + product.image + '" alt="' + product.name + '" class="img-fluid mb-2" style="max-width: 100px; height: auto; display: block; margin: 0 auto;">' +
            '<small class="name mt-3 mb-2">' + product.name + '</small>' +
            '<div class="price">₱' + product.price + '</div>' +
            '<small class="description text-muted mt-3">' + product.description + '</small>' +
            '</div>';
    });
}

function addToReceipt(price, code, name, description) {
    var receiptContainer = document.getElementById("receipt");

    if (receiptContainer.innerText === "Receipt printed.") {
        receiptContainer.innerHTML = "";
    }

    var item = document.getElementById("receipt-item" + code);

    if (item) {
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

getAllCategories();
