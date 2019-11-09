<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Management System</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <script
      src="https://kit.fontawesome.com/0e6673a1b2.js"
      crossorigin="anonymous"
    ></script>
    <style>
      .img-product {
        object-fit: cover;
        height: 250px;
        transition: 0.5s;
        filter: opacity(75%);
      }
      .img-product:hover {
        filter: opacity(100%);
      }
      .bottom-right {
        position: absolute;
        bottom: 8px;
        right: 16px;
        color: black;
      }
      a.custom-card,
      a.custom-card:hover {
          color: inherit;
      }
    </style>
  </head>
  <body>
    <!-- Begin navbar -->
    <nav
      class="navbar navbar-expand-md navbar-dark bg-dark mb-4 sticky-top"
      style="background-image: linear-gradient(-90deg, #2ecc71, #16a085);"
    >
      <div class="container">
        <i
          class="fab fa-d-and-d-beyond"
          style="font-size: 50px; color: white;"
        ></i>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarCollapse"
          aria-controls="navbarCollapse"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-th-list" style="color: white;"></i>
        </button>
        <div class="collapse navbar-collapse offset-sm-1" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#" style="text-transform: uppercase;"
                >Dashboard <span class="sr-only">(current)</span></a
              >
            </li>
            <li class="nav-item">
              <a
                class="nav-link"
                href="#"
                style="text-transform: uppercase;"
                >Bills</a
              >
            </li>
            <li class="nav-item">
              <a
                class="nav-link"
                href="#"
                style="text-transform: uppercase;"
                >Product</a
              >
            </li>
          </ul>
          <span class="navbar-text">
            <a
              href="logout.php"
              id="dropdownMenuButton"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              <i class="fas fa-sign-out-alt" style="font-size: 20px;"></i>
            </a>
          </span>
        </div>
      </div>
    </nav>

    <main role="main" class="container">
      <div class="container">
        <div class="row">
          <?php
            $con = mysqli_connect('localhost', 'root', '', 'test');
            if(!($con))
              die();
            $cmd = "SELECT * FROM images ORDER BY time DESC";
            $query = mysqli_query($con, $cmd);
            if ($query->num_rows > 0)
              while ($row = mysqli_fetch_assoc($query)) {
          ?>
          <div class="col-md-3">
            <a data-toggle="modal" data-target="#i<?php echo $row['id']; ?>" class="custom-card">
              <div class="card mb-3">
                <img src="<?php echo $row['link']; ?>" class="img-product" />
                    <small class="bottom-right">Last updated: <?php echo date('d/m/Y', strtotime($row['time'])); ?></small>
              </div>
            </a>
          </div>
          <!-- Modal -->
          <div class="modal fade" id="i<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="imageModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <img src="<?php echo $row['link']; ?>" width="100%">
              </div>
            </div>
          </div>
          <?php
              }
          ?>
        </div>
      </div>
    </main>
  </body>
  <script
    src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"
  ></script>
  <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"
  ></script>
  <script
    src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"
  ></script>
</html>
