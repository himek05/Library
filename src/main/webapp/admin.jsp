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
            background: linear-gradient(90deg,#4399ef,#0674e3, #083d72, #020734);
            width: 200px;
            height: 100vh;
            margin-left: 150px;
        }
        .nav-div{
            width: 100vh;
            height: 9vh;
            background: linear-gradient(90deg,#4399ef,#0674e3, #083d72, #020734);
            margin-left:60vh;
            margin-top: 10vh;
            display: flex;
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
        }
        .nav-title:hover {
            color: #fb9d10;
        }
        a.active {
            color: #070c38;  
            text-decoration: none;
            padding: 10px 20px;
            font-weight: bold;
            transition: color 0.3s ease;
            font-size: 2.1rem;
        }
        a.active:hover {
            color: #fb9d10;
        }
        .btn-main {
            color: white;
            background-color: #ff9900;
            border: none;
            padding: 10px 20px;
            margin: 29px;
            width: 18vh;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            font-size: 20px !important;
            transition: background-color 0.3s ease;
            margin-top: 100px;
        }
        .btn-main:hover {
            background-color: #0056b3;
        }
        .btn-main:active {
            background-color: #003f7f;
        }
        form {
            max-width: 500px;
            height: 55vh;
            margin: 0 auto;
            padding: 20px;
            background: linear-gradient(90deg,#4399ef,#0674e3, #083d72, #020734);
            border: 3px solid #eb9326;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        form input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 3px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
            background-color: #f08a0c;
            margin-top: 25px;
        }
        form input[type="text"]::placeholder {
            color: #fff;
        }
        form input[type="text"]:focus {
            border-color: #07192c;
            outline: none;
            box-shadow: 0 0 5px rgb(4, 23, 43);
        }
        .form-buttons {
            display: flex;
            justify-content: space-between;
        }
        .form-buttons button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-buttons .add-btn {
            background-color: #28a745;
            color: #fff;
        }
        .form-buttons .update-btn {
            background-color: #ffc107;
            color: #000;
        }
        .form-buttons .delete-btn {
            background-color: #dc3545;
            color: #fff;
        }
        .form-buttons button:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="btn-div">
            
        </div>
        <div class="main-content">
            <div class="nav-div">
                <a href="./main.jsp" class="active">Home</a>
                <div class="nav-title">Hex Library</div>
            </div>
            <form method="post" action="Bookadmin" style="margin-top: 10vh;">
                <input type="text" name="Bookid" placeholder="Enter Book id">
                <input type="text" name="Bookname" placeholder="Enter Book Name">
                <input type="text" name="BookPrice" placeholder="Enter Price">
                <input type="text" name="BookAuthor" placeholder="Enter Author">
                <div class="form-buttons">
                    <button type="submit" name="Bookadmin" value="add" class="add-btn">Add</button>
                    <button type="submit" name="Bookadmin" value="update" class="update-btn">Update</button>
                    <button type="submit" name="Bookadmin" value="delete" class="delete-btn">Delete</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
