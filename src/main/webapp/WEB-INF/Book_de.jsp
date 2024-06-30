<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<style>
    .navbar{
        background-color: #000000;
        height: 80px;
        /* display: flex;
        justify-content: space-evenly; */
    }
    .container-fluid{
        display: flex;
        justify-content: space-evenly;
        gap: 370px;
    }
    #navbarSupportedContent{
        display: flex;
        gap: 90px;
    }
    .d-flex{
        display: flex;
        gap: 50px;
    }
    ul {
        display: flex;
        gap: 40px;
    }
    .navbar-brand{
    width: 20%;
    font-size: 2.5rem;
    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    font-weight: 600;
    justify-content: center;
    display: flex;
    letter-spacing: 2px;
    align-items: center;
    margin: 2px;
    /* color: Azure; */
    }




    .nav-href {
    width: 80%;
    font-size: 1.3rem;
    display: flex;
    justify-content: end;
    align-items: center;
    margin: 2px;
    padding-right: 20px;
}

.nav-href a {
    text-decoration: none;
    color: Azure;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    font-weight: 200;
    font-size: 16px;
    padding: 20px;
}

.nav-link {
    transition: all ease 0.3s;
}

.active {
    font-size: 22px !important;
    font-weight: 900;
}

.nav-link:hover {
    font-size: 22px !important;
    font-weight: 900;
}

@media screen and (max-width: 1165px) {
    .nav-title {
        width: 40%;
    }
    .nav-href {
        width: 60%;
    }
}

@media screen and (max-width:700px) {
    .nav-title {
        font-size: 1.9rem;
    }

    .nav-href a {
        padding: 10px;
        font-size: 15px;
    }

    .active {
        font-size: 16px !important;
        font-weight: 500;
    }

    .nav-link:hover {
        font-size: 16px !important;
        font-weight: 500;
    }
}

@media screen and (max-width:485px) {
    .nav-title {
        font-size: 1.2rem !important;
    }

    .nav-href a {
        padding: 5px;
    }   
}

.check{
    /* width: 350px; */
    padding: 10px;
    margin-bottom: 10px;
    /* border: 1px solid #ccc; */
    border-radius: 4px;
    /* box-shadow: inset 0 1px 2px rgba(0,0,0,0.1); */
    font-size: 25px;
    margin-top:35px ;
    /* margin-left: 50px; */
    /* background-color:#000000; */
    color: blue;
    font-weight: bold;
}


</style>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary" >
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Hex Library</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="main.jsp">Home</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="Books_BuyId.jsp">Books</a>
              </li>
              
              <!-- <li class="nav-item">
                <a class="nav-link" href="./others.html">Others</a>
              </li> -->

              <li class="nav-item">
                <a class="nav-link" href="aboutme.jsp">AboutMe</a>
              </li>

              <!-- <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Dropdown
                </a> -->

                <!-- <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul> -->
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                  </li>
              <!-- </li> -->
              
            </ul>
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>
                <div class="check">
                    <a href="./books_detaila.html">Books</a> 
                     <!-- <a href="./others_details.html">Others</a> -->
                </div>

      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Book Name</th>
            <th scope="col">Book_id</th>
            <th scope="col">Price</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Kuldeep</td>
            <td>1</td>
            <td>150</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>1984</td>
            <td>2</td>
            <td>George Orwell</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>


</body>
</html>