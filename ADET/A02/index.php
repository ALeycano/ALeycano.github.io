<?php
$page = "home";
if (isset($_GET['page'])) {
  $page = $_GET['page'];
  switch ($page) {
    case "home":
      $page = "home";
      break;
    case "Italian":
      $page = "Italian";
      break;
    case "Filipino":
      $page = "Filipino";
      break;
    case "Japanese":
      $page = "Japanese";
      break;
    case "South Korean":
      $page = "South Korean";
      break;
    default:
      header("Location: ?page=home");
      break;
  }
} else {
  header("Location: ?page=home");
}
?>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>PudsRecipe</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <link rel="icon" href="../img/icn.png">

  <style>
    html,
    body {
      margin: 0;
      padding: 0;
      overflow: hidden;
      height: 100%;
    }

    .bg-teal-custom {
      background-color: #008080;
      color: white;
    }

    .bg-navbar {
      background-color: #008080;
    }

    .btn-teal {
      background-color: #008080;
      color: white;
      border: 1px solid #008080;
    }

    .btn-teal:hover {
      background-color: #006f6f;
      border-color: #006f6f;
    }

    .btn-teal:focus,
    .btn-teal:active {
      background-color: #006f6f;
      border-color: #006f6f;
      box-shadow: 0 0 0 0.25rem rgba(0, 111, 111, 0.5);
    }

  </style>
</head>

<body data-bs-theme="dark">
  <nav class="navbar navbar-dark bg-navbar">
    <div class="container">
      <a class="navbar-brand" href="../../index.html">
        <img src="../img/icn.png" alt="Bootstrap" width="30" height="34">
      </a>
    </div>
  </nav>

  <div class="container mt-3">
    <div class="row">
      <div class="col-3">
        <div class="card shadow rounded-5 p-3" style="height: 85vh;">
          <h4 class="my-1 mt-3 text-center">
            <i class="bi bi-card-checklist"></i> Recipes
          </h4>
          <a href="?page=home" class="btn btn-teal position-relative my-1 mt-3">Home</a>
          <a href="?page=Italian" class="btn btn-teal position-relative my-1">Italian Cuisine</a>
          <a href="?page=Filipino" class="btn btn-teal position-relative my-1">Filipino Cuisine</a>
          <a href="?page=Japanese" class="btn btn-teal position-relative my-1">Japanese Cuisine</a>
          <a href="?page=South Korean" class="btn btn-teal position-relative my-1">South Korean Cuisine</a>
        </div>
      </div>
      <div class="col-9">
        <div class="card shadow rounded-5 p-4" style="height: 85vh; max-height: 85vh; overflow: scroll;">
          <?php include("shared/" . $page . ".php"); ?>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
    crossorigin="anonymous"></script>
</body>

</html>