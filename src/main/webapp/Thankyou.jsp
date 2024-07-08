<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank you</title>
</head>
<Style>
     * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            background-color: rgba(255, 235, 205, 0.573);
            /* background-image: url("edu.png"); */
            /* position: absolute; */
        }
        .navbar{
    height: 70px;
    display: flex;
    background-color: #000000;
    
}
.nav-title {
    width: 20%;
    font-size: 2.5rem;
    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    font-weight: 600;
    justify-content: center;
    display: flex;
    letter-spacing: 2px;
    align-items: center;
    margin: 2px;
    color: Azure;
}
.nav-title1{
    width: 20%;
    font-size: 2.5rem;
    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    font-weight: 600;
    justify-content: center;
    display: flex;
    letter-spacing: 2px;
    align-items: center;
    margin: 2px;
    color: black;
    margin-left:600px;
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
    color: aliceblue;
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
</Style>
<body>
    <div class="header">
        <div class="navbar">
            <div class="nav-title">Hex Library</div>
            <div class="nav-href">
                <a href="./main.jsp" class="active">Home</a>
                <a href="./Books_Buy.jsp" class="nav-link">Books</a>
                <a href="./details.jsp" class="nav-link">Detaiks</a>
                <a href="./aboutme.jsp" class="nav-link">AboutMe</a>
            </div>
        </div>
    <p class="nav-title1">Thank You!</p>
</body>
</html>