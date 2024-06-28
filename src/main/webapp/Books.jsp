<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hii Admin</title>
    <style>
        *{
            margin: 0;
            box-sizing: border-box;
            
        }
        .container{
            background-color: #fff;
            height: auto;
            width: auto;
            display: flex;
            flex-direction: row;
        }
        .btn-div{
            /* background-color:navy; */
            background: linear-gradient(90deg,#4399ef,#0674e3, #083d72, #020734);
            width: 200px;
            height: 100vh;
            margin-left: 150px;
        }
        .nav-div{
            width: 100vh;
            height: 9vh;
            /* background-color: navy; */
            background: linear-gradient(90deg,#4399ef,#0674e3, #083d72, #020734);
            margin-left:60vh;
            margin-top: 10vh;
            display: flex;
            /* justify-content: center; */
            align-items: center;
            justify-content: space-between;
        }
        .nav-title {
            width: 20%;
            font-size: 1.5rem;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            font-weight: 600;
            justify-content: center;
            display: flex;
            letter-spacing: 2px;
            align-items: center;
            margin: 2px;
            color: rgb(242, 242, 242);
            &:hover {
            color: #fb9d10; /* Darker background on hover */
            }
        }
        a.active {
    color: #070c38;  
    /* background-color: #007bff; */
    text-decoration: none;   /* Remove underline */
    padding: 10px 20px;      /* Padding around the text */
    /* border-radius: 5px;      Rounded corners */
    font-weight: bold;       /* Bold text */
    transition: color 0.3s ease; /* Smooth transition for background color */
    font-size: 2.1rem;
    /* Optional: Hover effect */
    &:hover {
        color: #fb9d10; /* Darker background on hover */
    }
}
/* Styling the container div */
/* .btn-div {
    text-align: center; 
    padding: 20px;   
    background-color: #f8f9fa;
    border: 1px solid #ddd;   
    border-radius: 10px;       
    margin: 20px auto;         
    width: fit-content;        
} */

/* Styling the buttons */
.btn-main {
    color: white;             /* Text color */
    background-color: #ff9900; /* Background color */
    border: none;             /* Remove default border */
    padding: 10px 20px;       /* Padding around the text */
    margin: 29px;   
    width: 18vh;
    border-radius: 5px;       /* Rounded corners */
    font-weight: bold;        
    cursor: pointer;
    font-size: 20px !important;
    transition: background-color 0.3s ease; 
    margin-top: 100px;
}

/* Optional: Hover effect for buttons */
.btn-main:hover {
    background-color: #0056b3; /* Darker background on hover */
    
}

/* Optional: Active effect for buttons */
.btn-main:active {
    background-color: #003f7f; /* Even darker background on click */
}
/* Styling the form container */
form {
    max-width: 500px;
    height: 55vh;
    margin: 0 auto;           /* Center the form horizontally */
    padding: 20px;            /* Add padding inside the form */
    background: linear-gradient(90deg,#4399ef,#0674e3, #083d72, #020734);
    border:3px solid #eb9326;   /* Light grey border */
    border-radius: 10px;      /* Rounded corners for the form */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Subtle shadow effect */
}

/* Styling the input fields */
form input[type="text"] {
    width: calc(100% - 20px); /* Full width with padding adjustment */
    padding: 10px;            /* Padding inside the input */
    margin-bottom: 15px;      /* Space between inputs */
    border: 3px solid #ccc;   /* Light grey border */
    border-radius: 5px;       /* Rounded corners for inputs */
    font-size: 16px;          /* Font size for input text */
    box-sizing: border-box;   /* Include padding and border in width calculation */
    background-color: #f08a0c;
    margin-top: 25px;
}

/* Placeholder styling */
form input[type="text"]::placeholder {
    color: #fff;         
    
}
/* Input focus state */
form input[type="text"]:focus {
    border-color: #07192c;    /* Blue border on focus */
    outline: none;            /* Remove default outline */
    box-shadow: 0 0 5px rgb(4, 23, 43); /* Blue shadow on focus */
}


    </style>
</head>
<body>
    <div class="container">
        <div class="btn-div">
            <button class="btn-main">Add</button>
            <button class="btn-main">Update</button>
            <button class="btn-main">Delete</button>
        </div>
        <div class="main-content">

            <div class="nav-div">
                
                <a href="" class="active">Home</a>
                <div class="nav-title">Hex Library</div>
                
            </div>
            <form style="margin-top: 10vh;">  
                <input type="text" name="Bookid" placeholder="Enter Book id">
                <input type="text" name="Bookname" placeholder="Enter Book Name">
                <input type="text" name="BookPrice" placeholder="Enter Price">
                <input type="text" name="BookAuthor"placeholder="Enter Author">
            </form>
        </div>
            
    </div>
</body>
</html>