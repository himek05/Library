<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books</title>
</head>
<style>
    :root {
    --primary-color: #6366F1;
    --accent-color: #3f83f8;
    --text-color: #333333;
    --link-color: #2563eb;
    --background-color: #ffffff;
    --light-gray: #f0f0f0;
    /* --gray: #808080; */
    /* --dark-gray: #555; */
}
     * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
        background: linear-gradient(90deg,#4399ef,#0674e3, #083d72, #020734);

            /* background-color: rgba(255, 235, 205, 0.573); */
            /* background-image: url("edu.png"); */
            /* position: absolute; */
        }
        .navbar{
            height: 70px;
            display: flex;
            /* background-color: DarkSlateGray; */
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
        

    .container{
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 50px;
        
        /* gap: 20px; */
    }


    .form {
    /* background-color: rgba(255, 255, 255, 0.347); */
    color: white !important;
    border: 1px solid rgb(192, 192, 192);
    padding: 20px;
    border-radius: 15px;
    box-shadow: 0 0 10px 0px lightgray !important;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 15px rgba(0,0,0,0.1);
    width: 1200px;
    height: 1200px;
    margin-top: 20px;
    background-color: transparent;
    display: flex;
    justify-content: center;
    align-items:center;
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
    
}

@keyframes slideFromLeft {

    0% {
        opacity: 0;
        transform: scale(0.5);
    }

    25%{
        opacity: 0;
        transform: translatex(-100%);
    }
    100%{
        opacity: 1;
        transform: translateX(0);
        transform: scale(1.1);
    }
    
}

.footer-copyright{
    max-width: 1580px;
    padding:1.2rem 2.4rem;
    text-align: left;
    /* display: flex; */
    justify-content: space-between;
    padding-right: 2rem;
    /* background-color: #fff; */
    height: 130px;
    margin-top: 70px;
    color: grey;
    /* font-size: 0.75rem; */
    padding-bottom: 2rem;
    /* margin-top: 2rem; */
    padding-top: 1.15rem;
    border-top: 1px solid #E5E7EB;
    background-color: #000000;
    
}
.nav-link {
    transition: all ease 0.5s;
    display: flex;
    justify-content: center;
}
.nav-link:hover {
    font-size: 33px !important;
    font-weight: 1300;
    color: orange;
}
@media screen and (max-width:700px){
    .nav-link:hover {
        font-size: 16px !important;
        font-weight: 500;
    }
}
.foot{
    display: flex;
    justify-content: center;
}
.main-section{
    max-width: 1280px;
    display: flex;
    flex-direction: column;
    gap: 2rem;
    padding: 0.6rem;
    align-items: center;
    margin: 0 auto;
    margin-bottom: 350px;
}

.content-left{
    text-align: center;
    animation: slideFromLeft 1s ease forwards;
    opacity: 0;
    margin-top: 200px;
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

.section-label{
    font-size: 2rem;
    font-weight: 600;
    color: orange;
}

.section-title{
    font-size: 2.3rem;
    padding: 1.1rem;
    color: var(--text-color);
}


.section-description{
    color: rgb(250, 255, 240);
    font-size: 1.13rem;
}
.section-description1{
    /* color: AliceBlue;
     */
     color: #fff;
    font-size: 1.25rem;
    margin-top: 20px;
}

.button-group{
    display: flex;
    gap: 2rem;
    padding: 1rem;
    margin-top: 1rem;
    align-items: center;
    justify-content: center;
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


.content-right{
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 200px;
}


.image-container{
    border: none;
    border-radius: 1.225rem;
    overflow: hidden;
    box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
    height: 50vh;
    width: 500px;
}

.section-image{
    height: 100%;
    width: 100%;
}

@media screen and (min-width:768px) {
    .main-section{
        flex-direction: row;
    }
    .content-left{
        max-width: 50%;
        text-align: left;
    }
    .section-title{
        padding-left: 0;
    }
    .button-group{
        justify-content: start;
        padding-left: 0;
    }
    .section_label{
        font-size: 1rem;
    }
    .section-title{
        font-size: 3.8rem;
    }
    .image-container{
        height: 67vh;
    }
    .section-description{
        font-size: 1.1rem;
        color: var(--gray);
        width: 78%;
    }
}

</style>
<body>
    <div class="navbar">
        <div class="nav-title" style="color: #020734;">Hex Library</div>
        <div class="nav-href">
            <a href="main.jsp" class="active">Home</a>
            <a href="Books_Buy.jsp" class="nav-link">Books</a>
            <a href="./aboutme.jsp" class="nav-link">About Us</a>
            <a href="./login.jsp" class="nav-link">Login</a>
        </div>
    </div>
    
    <div class="container">

        <div class="div-main">
                <form class="form" action="">
                    <div class="content">
                        <section class="main-section">
                
                            <div class="content-left">
                                <p class="section-label">Hello Guys!</p>
                                <h1 class="section-title">Himek Saini</h1>
                                <p class="section-description">
                                    I'm currently pursuing a Bachelor of Technology (B.Tech) degree. As a student with a passion for engineering and technology, I am committed to gaining a comprehensive understanding of my field. My coursework includes subjects that span the fundamentals of engineering principles, programming, and advanced technological innovations. I am actively involved in various projects and practical applications to enhance my skills and knowledge. Through my studies, I aim to contribute to the ever-evolving tech industry and make a significant impact in my chosen area of expertise.
                                </p>
                                <div class="button-group">
                                    <!-- <a href="#start" class="start-button">Start Now</a>
                                    <a href="#tour" class="tour-button">Take Tour</a> -->
                                </div>
                                <div class="image-container1">
                                    <img src="./img/IMG-20231227-WA0042.jpg" alt="" class="section-image">
                                    <div class="section-description1">My library management system is a robust, user-friendly platform designed to streamline the operations of a library. It offers comprehensive features for cataloging books, managing member accounts, and tracking borrowed and returned items. The system includes a powerful search function, allowing users to easily locate books by title, author, or genre. Automated notifications for overdue books and due dates help ensure timely returns and minimize late fees. Additionally, the system provides detailed reporting capabilities, giving library staff insights into circulation patterns and inventory status. With an intuitive interface and efficient workflows, this library management system enhances the overall user experience for both patrons and librarians, making it an indispensable tool for modern libraries.





                                    </div>
                                </div>
                            </div>
                            
                            <div class="content-right">
                
                                <div class="image-container">
                                    <img src="./img/IMG-20231211-WA0096.jpg" alt="sectionImage" class="section-image" />
                                    <!-- <img src="./IMG-20231213-WA0023.jpg" alt="sectionImage" class="section-image" /> -->
                                    
                                </div>
                
                            </div>
                            
                        </section>
                        
                    </div>
                </form>
                
        </div>
        
    </div>

    <div class="footer-copyright">
        <p class="foot">© 2024 - Present Hex Library. All rights reserved.</p>
        <p style="margin-top: 10px;" class="nav-link">Design By :Himek Saini</p>
    </div>
            
</body>
</html>