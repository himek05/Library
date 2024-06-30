<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books Buy</title>
</head>
<style>
    :root {
    --primary-color: #6366F1;
    --accent-color: #3f83f8;
    --text-color: #333333;
    --link-color: #2563eb;
    --background-color: #ffffff;
    --light-gray: #f0f0f0;
    --gray: #808080;
    --dark-gray: #555;
}
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
            background-color: DarkSlateGray;
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
        
.main-p{
    color:DarkSlateGray;
}
.main-p{
    font-size: 56px ;
    font-family:serif;
    font-weight: bold;
    color:DarkSlateGray;
}
    .container{
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 50px;
        mix-blend-mode: multiply;
        
        /* gap: 20px; */
    }
    .div-main{
        display: flex;
    }
    .main-p{
    font-size: 56px ;
    font-family:serif;
    font-weight: bold;
    color:DarkSlateGray;
}
    img{
        height: 500px;
        width: 500px;
        /* border-radius:  15px 0 0 15px var(--dark-gray); */
        box-shadow: 10px 10px 10px 10px darkslategrey;

    }
    .div-form{
        height: 500px;
        width: 500px;
        background-color: white;
        box-shadow: 10px 10px 10px 10px darkslategrey;

    }
    .form {
    background-color: #fefefe97;
    padding: 20px;
    border-radius: 0 15px 15px 0  ;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    width: 500px;
    height: 500px;
}

/* Input field styles */
.input-field {
    width: 350px;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
    font-size: 14px;
    margin-top:35px ;
    margin-left: 50px;

}
.input-field1{
    width: 350px;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
    font-size: 14px;
    margin-top:30px ;
    margin-left: 50px;

}
.login-btn{
    width:100%;
    padding: 10px;
    border: none;
    border-radius: 4px;
    background-color:  #0bc005;
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
    margin-top: 56px;
    /* margin-left: 40px; */
}  
.footer{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 15px;
    margin-right: 130px;
    gap: 12px;
}  
.l-footer{
    outline: none;
    text-decoration: none;
}
.button-group{
    display: flex;
    gap: 6rem;
    padding: 1rem;
    margin-top: 1rem;
    align-items: center;
    justify-content: center;
    outline: none;
    text-decoration: none;
}

.start-button,
.tour-button{
    
    border: none;
    border-radius: 0.375rem;
    background-color: var(--primary-color);
    color: var(--background-color);
    transform: all  0.1s;
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
    font-weight: 600;
}

.tour-button{
    background-color: var(--dark-gray);
}

.start-button:hover{
    background-color: #5254f8;
}

.tour-button:hover{
    background-color: var(--gray);
}
.main-div
{
    display: flex;
    justify-content: center;
    /* align-items: center; */
}
.form{
    /* text-align: center; */
    animation: slideFromLeft 1s ease forwards;
    opacity: 0;
}

@keyframes slideFromLeft {

    0% {
        opacity: 0;
        transform: translateX(-100%);
    }

    100%{
        opacity: 1;
        transform: translateX(0);
    }
    
}
</style>
<body>
    <div class="navbar">
        <div class="nav-title">Hex Library</div>
        <div class="nav-href">
            <a href="main.jsp" class="active">Home</a>
            <!-- <a href="./book_id.html" class="nav-link">Books</a>     -->
            <a href="deatails.jsp" class="nav-link">Books Details</a>
            <a href="aboutme.jsp" class="nav-link">AboutMe</a>
        </div>
    </div>
    
    <div class="container">

        <div class="div-main">
            
            
            <div class="div-form">
                <form class="form" action="">
                    <p class="main-p">Books</p>
                    <div class="form-group">
                        <!-- <label for="password">Password</label> -->
                        <input id="password" class="input-field1" type="id" name="Bookid" placeholder="Enter  Book_id" required>
                    </div>
                    <div class="form-group">
                        <!-- <label for="username">Username</label> -->
                        <input id="username" class="input-field" type="text" placeholder="Enter  BookName" required>
                    </div>
                   
                    <div class="form-group">
                        <!-- <label for="password">Password</label> -->
                        <input id="password" class="input-field1" type="id" placeholder="Price" required>
                    </div>
                    <div class="btn">
                        <!-- <div class="form-group">
                            <button type="submit" class="login-btn">For Details</button>
                        </div> -->
                        <div class="button-group">
                            <a href="" class="start-button">Buy</a>
                        </div>
                    </div>
                </form>   
                
        </div>
        
        
    </div>
</div>
            
</body>
</html>