<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>
</head>
<style>
	* {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            background-color: rgba(255, 235, 205, 0.573);
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
        
    }
    .div-main{
        display: flex;
    }
    
    img{
        height: 500px;
        width: 500px;
    border-radius:  15px 0 0 15px;

    }
    .div-form{
        height: 500px;
        width: 500px;
        background-color: white;
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
    width:250px;
    padding: 10px;
    border: none;
    border-radius: 4px;
    background-color:  #0bc005;
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
    margin-top: 56px;
    margin-left: 100px;
}  
.footer{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 15px;
    margin-right: 10px;
    gap: 12px;
}  
.l-footer{
    outline: none;
    text-decoration: none;
}
.login-admin{
    /* background-color: #0bc005; */
    margin-top: 10px;
    height: 4vh;
    display: flex;
    justify-content: end;
    gap: 10px;
    margin-right: 20px;
    outline: none;
    
}
</style>
<body>
	 <div class="navbar">
        <div class="nav-title">Hex Library</div>
        <div class="nav-href">
            <a href="main.jsp" class="active">Home</a>
            <a href="login.jsp" class="nav-link">Login</a>
            <a href="Signin.jsp" class="nav-link">Signup</a>
            <a href="aboutme.jsp" class="nav-link">About Us</a>
        </div>
    </div>
     
    <div class="container">

        <div class="div-main">
            <div class="div-img" >
                <img src="./img/ee_1699521043096_1699521054394.jpg" >
            </div>
            <div class="div-form"> 
                <form class="form" action="submitform" method="post">
                    <p class="main-p">Signup </p>
                    <div class="form-group">
                       
                        <input id="name" class="input-field" type="text" name="name" placeholder="Enter your Name" required>
                    </div>
                    <div class="form-group">
                    
                        <input id="username/email" class="input-field" type="email" name="username/email" placeholder="Enter your username or email" >
                    </div>
                    <div class="form-group">
                        
                        <input id="password" class="input-field1" type="password" name="password" placeholder="Enter your password" >
                    </div>
                    <div class="btn">
                        <div class="form-group">
                            
                            	<button type="submit" class="login-btn">
                            		Signup
                            	</button>
                           
                        </div>
                    </div>
                    <div class="footer">
                        <p class="p-footer">Already a member?</p>
                        <a class="l-footer" href="./login.jsp">Log in</a>
                    </div>
                </form>   
                
        </div>
        
    </div>
  
</body>
</html>