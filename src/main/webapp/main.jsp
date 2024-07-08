<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hex Library</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@100;200;400;500;600;700&display=swap');
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
    font-family: 'Inter', sans-serif;
    text-decoration: none;
    box-sizing: border-box;
}

body{
    height: 100vh;
    text-align: center;
    background-color: var(--background-color);
    padding: 0.1rem;
}

/* .header{
    border: 1px solid black;
} */

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
.header-content{
    max-width: 1280px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem;
}
.search{
    width: 370px;
    margin-left: 81px;   
}
.search-input{
    width: 470px;
}


.search-container {
    width: 400px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 8px;
    /* box-shadow: 0 0 10px rgba(0,0,0,0.1); */
    padding: 20px;
    display: flex;
    justify-content: center;
    text-align: center;
}
.search-container h1 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #333;
}
.search-input {
    width: 300px;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 10px;
    box-sizing: border-box;
    height: 40px;
    margin-left:40px;
}
form{
    display: flex;
    justify-content: space-around;
    margin-top: 70px;
}
.search-button {
    padding: 10px 20px;
    font-size: 16px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-left:25px;
}
.search-button:hover {
    background-color: #45a049;
}




.logo{
    display: flex;
    align-items: center;
    font-size: 2rem;
    font-weight: bold;
    color: var(--text-color);
    text-decoration:none ;
    gap: 0.625rem;
}

.logo-icon{
    height: 5.875rem;
    width: 1.938rem;
}

.logo-text{
    font-size: 2rem;
    font-weight: bold;
}

.nav{
    display: none;
    gap: 1.5rem;

}

@media screen and (min-width:768px) {
    .nav{
        display: flex;
    }
}

.nav-link{
    color: #718096;
    font-size: 1.125rem;
    font-weight: 600;
    transform: color 0.1s;
    border: none;
    outline: none;
}

.nav-link:hover{
    color: var(--link-color);
}

.contact-button{
    display: none;
    border: none;
    border-radius: 0.375rem;
    background-color: var(--primary-color);
    color: var(--background-color);
    transform: all  0.1s;
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
    font-weight: 600;
}

@media screen and (min-width:768px) {
    .contact-button{
        display: block;
    }
}

.contact-button:hover{
    background-color: #5254f8;
}

.menu-button{
  display: none;
  border:none;
  border-radius: 0.375rem;
  background-color: var(--background-color);
  font-size: 1rem;
  padding: 0.5rem 0.9rem;
  font-weight: 600;
}

@media screen and (max-width:768px) {
    .menu-button{
        display: block;
      }
}

.menu-icon{
    height: 1.5rem;
    width: 1.5rem;
}

.main-section{
    max-width: 1280px;
    display: flex;
    flex-direction: column;
    gap: 2rem;
    padding: 0.6rem;
    align-items: center;
    margin: 0 auto;
}

.content-left,.search{
    text-align: center;
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

.section-label{
    font-size: 1.15rem;
    font-weight: 600;
    color: var(--primary-color);
}

.section-title{
    font-size: 2.3rem;
    padding: 1.1rem;
    color: var(--text-color);
}

.section-description{
    color: var(--gray);
    font-size: 1.13rem;
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
}


.image-container{
    border: none;
    border-radius: 1.225rem;
    overflow: hidden;
    box-shadow: 0px 4px 8px 10px rgba(0,0,0,0.1);
    height: 50vh;
    width: 570px;
    margin-top: 30px;
    /* background-color: #c24949; */
}

.section-image{
    height: 100%;
    width: 100%;
}
.navbar-brand{
    margin-left: 50px;
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

.company-container{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin-top: 2rem;
    animation: slideFromLeft 1s ease forwards;
}


.feature-container{
    background-color: var(--light-gray);
    padding: 2.5rem 0;
    text-align: center;
}

.feature-content{
    max-width: 800px;
    margin: 0 auto;
    padding: 0 2rem;
}

.main-info{
    display: flex;
    flex-direction: column;
    gap: 1rem;
}

.main-title{
    font-size: 2.2rem;
    font-weight: bold;
}

.main-description{
    color: var(--gray);
    font-size: 1rem;
}

.feature-grid{
    display: grid;
   
    grid-template-columns: repeat(2,1fr);
    grid-gap: 2rem;
    margin-top: 1.3rem;
}

.feature-card{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background-color: #6d7890;
    padding: 1.6rem;
    border-radius: 1rem;
    gap: 1rem;
}
.feature-info{
    display: flex;
    flex-direction: column;
    gap: 1rem;
}
.icon-container{
    background-color: var(--background-color);
    height: 3rem;
    width: 3rem;
    border-radius: 50%;
    display: flex;  
    justify-content: center;
    align-items: center;
}

.feature-svg{
    width: 1.5rem;
    height: 1.5rem;
}

.feature-title{
    color: white;
    font-weight: bold;
    font-size: 1.3rem;
}

.feature-description{
    color: white;
}

.feature-card:nth-child(1){
    background-color: #4a90e2;
}

.feature-card:nth-child(2){
    background-color: #FF6289;
}

.feature-card:nth-child(3){
    background-color: #fcbf58;
}

.feature-card:nth-child(4){
    background-color: #44bfc3;
}

.feature-card:nth-child(5){
    background-color: #77b05d;
}

.feature-card:nth-child(6){
    background-color: #7d78b1;
}

@media screen and (max-width:768px) {
    .feature-grid{
        grid-template-columns: repeat(1,1fr);
    }
}

.testimonial-container{
    background-color: var(--background-color);
    padding: 2rem;
    margin: 0 auto;
    max-width: 1280px;
}
.testimonial-content{
    display: flex;
    flex-direction: column;
    gap: 2rem;
}
.testimonial-title{
    font-size: 1.875rem;
    font-weight: bold;
}

.testimonial-grid{
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    grid-gap: 2rem;
}

.testimonial-card{
    display: flex;
    flex-direction: column;
    border: 1px solid rgb(171, 163, 163);
    border-radius: 1rem;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    padding: 1.2rem;
    gap: 1rem;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.testimonial-card:hover{
    transform: scale(1.05);;
    box-shadow: 0 4px 8px rbga(0,0,0,0.2);
    border: 1px solid blue;
}

.testimonial-avatar img{
    height: 5rem;
    width: 5rem;
}

.testimonial-text{
    color: #555;
    font-size: 0.875rem;
}

.testimonial-name{
    color: var(--primary-color);
    font-size: 1rem;
}

.testimonial-desc{
    font-size: 0.875rem;
    color: #777;
}

.footer-copyright{
    color: var(--gray);
    font-size: 0.75rem;
    padding-bottom: 2rem;
    margin-top: 2rem;
    padding-top: 1.15rem;
    border-top: 1px solid #E5E7EB;
    background-color: #000000;
}

@media screen and (max-width:1080px) {
    .footer{
        flex-direction: column;
        align-items: center;
    }
    .footer-top{
        padding-left: 10rem;
    }
    .footer-grid{
        align-self: center;
        justify-content: space-evenly;
    }
}

@media screen and (max-width:850px) {
    .footer-top{
        padding-left: 1rem;
    }
    .footer-grid{
        grid-template-columns: repeat(2,1fr);
    }
}
</style>
<body>
	 <div class="header">
        <div class="navbar">
            <div class="nav-title">Hex Library</div>
            <div class="nav-href">
                <a href="main.jsp" class="active">Home</a>
                <a href="Books_Buy.jsp" class="nav-link">Books</a>
                <a href="details.jsp" class="nav-link">Details</a>
                <a href="aboutme.jsp" class="nav-link">AboutMe</a>
            </div>	
        </div>
       
     <div class="content">
        <section class="main-section">

            <div class="content-left">
                <p class="section-label">Very proud to introduce</p>
                <h1 class="section-title">Seamless Learning for Brighter Futures</h1>
                <p class="section-description">
                    Welcome to the website of Hex library, your doorway to a vast and exciting world of learning. You'll
                    find a fluid browsing experience that puts our library's extensive collection at your fingers right
                    here. Explore a vast array of books, diaries, and other materials carefully chosen to enhance your
                    educational experience.
                </p>
                <div class="button-group">
                   <div class="search">
                <div class="search-container">
                    <!-- <h1>Search the Library</h1> -->
                    <form action="submit" method="get">
                        <input type="text" name="query" class="search-input"
                            placeholder="Enter your search terms...">
                        <button type="submit" class="search-button">Search</button>
                    </form>
                </div>
        </div>
                </div>
            </div>

            <div class="content-right">

                <div class="image-container">
                    <img src="./img/edu.jpg" alt="">
                   
                        <div class="button-group">
                            <!-- <a href="#start" class="start-button">Buy</a>
                            <a href="#tour" class="tour-button">Borrow</a> -->
                        </div> 
                    </div>

                </div>
        </section>
        <div class="search">
            
    </div>

        
    <div class="company-container">
        
        
      
    </div>

    <div class="feature-container">
        <div class="feature-content">
            <div class="main-info">
                <h2 class="main-title">
                    Our competitive advantage
                </h2>
                <p class="main-description">
                    This is a section of some simple filler text, also known as placeholder text. It shares some
                    characteristics of real written text but is random or otherwise generated.
                </p>
            </div>

            <div class="feature-grid">
                <!-- card 1 -->
                <div class="feature-card">
                    <div class="icon-container">
                        <!-- <img class="feature-svg" src="./img/PersonalizedLearn.jpg" /> -->
                    </div>
                    <div class="feature-info">
                        <div class="feature-title">
                            Personalized Learning
                        </div>
                        <div class="feature-description">
                            Offer tailored learning experiences through AI and machine learning to cater to individual
                            student needs.
                        </div>
                    </div>
                </div>
                <!-- card 2 -->
                <div class="feature-card">
                    <div class="icon-container">
                        <!-- <img class="feature-svg" src="./img/Affordability.jpg" /> -->
                    </div>
                    <div class="feature-info">
                        <div class="feature-title">
                            Affordability
                        </div>
                        <div class="feature-description">
                            Provide high-quality education at an affordable price point, making it accessible to a
                            broader audience.
                        </div>
                    </div>
                </div>
                <!-- card 3 -->
                <div class="feature-card">
                    <div class="icon-container">
                       <!--  <img class="feature-svg" src="./images/IndustryPatner.jpg" /> -->
                    </div>
                    <div class="feature-info">
                        <div class="feature-title">
                            Industry Partnerships
                        </div>
                        <div class="feature-description">
                            Collaborate with well-known companies and institutions to offer accredited courses and
                            certifications, adding credibility to your offerings.
                        </div>
                    </div>
                </div>
                <!-- card 4 -->
                <div class="feature-card">
                    <div class="icon-container">
                        <!-- <img class="feature-svg" src="./images/InnovativeTech.jpg" /> -->
                    </div>
                    <div class="feature-info">
                        <div class="feature-title">
                            Innovative Technology
                        </div>
                        <div class="feature-description">
                            Utilize cutting-edge technology, such as augmented reality or virtual reality, to create
                            immersive learning experiences.
                        </div>
                    </div>
                </div>
                <!-- card 5 -->
                <div class="feature-card">
                    <div class="icon-container">
                        <!-- <img class="feature-svg" src="./images/IndustryPatner.jpg" /> -->
                    </div>
                    <div class="feature-info">
                        <div class="feature-title">
                            Responsive Support
                        </div>
                        <div class="feature-description">
                            Provide exceptional customer support and assistance to students and educators.
                        </div>
                    </div>
                </div>
                <!-- card 6 -->
                <div class="feature-card">
                    <div class="icon-container">
                         <!-- <img class="feature-svg" src="./img/Analytics.jpg" />  -->
                    </div>
                    <div class="feature-info">
                        <div class="feature-title">
                            Analytics and Insights
                        </div>	
                        <div class="feature-description">
                            Offer detailed progress tracking and analytics to help students and teachers monitor
                            performance and make data-driven decisions.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="testimonial-container">
        <div class="testimonial-content">
            <h2 class="testimonial-title">
                What Others Say About Education
            </h2>
            <div class="testimonial-grid">
                <!-- card 1 -->
                <div class="testimonial-card">
                    <div class="testimonial-text">
                        “Babasaheb Ambedkar's views on education were shaped by his commitment to social justice, equality, and the belief that education is a powerful instrument for individual and collective emancipation.His ideas continue to inspire movements for education. ”
                    </div>
                    <div class="testimonial-avatar">
                        <img src="./img/bhim.jpg" />
                    </div>
                    <div class="testimonial-details">
                        <h3 class="testimonial-name">
                            Bhimrao Ramji Ambedkar
                        </h3>
                        <p class="testimonial-desc">
                            Former Minister of Law and Justice of India
                        </p>
                    </div>
                </div>
                <!-- card 2 -->
                <div class="testimonial-card">
                    <div class="testimonial-text">
                        “ A. P. J. Abdul Kalam's views on education underscored its transformative potential to empower individuals, build a strong nation, and foster a culture of continuous learning and innovation. His vision continues to inspire generations worldwide.”
                    </div>
                    <div class="testimonial-avatar">
                        <img src="./img/Apj.jpg" />
                    </div>
                    <div class="testimonial-details">
                        <h3 class="testimonial-name">
                            A. P. J. Abdul Kalam
                        </h3>
                        <p class="testimonial-desc">
                            Development of India's missile and nuclear weapons programs
                        </p>
                    </div>
                </div>
                <!-- card 3 -->
                <div class="testimonial-card">
                    <div class="testimonial-text">
                        “'Education is not about just filling a pail, but lighting a fire.''
                        This quote encapsulates his belief that education should not be limited to mere accumulation of knowledge, but should ignite curiosity, passion, and a lifelong pursuit of learning.”
                    </div>
                    <div class="testimonial-avatar">
                        <img src="./img/dr.jpg" />
                    </div>
                    <div class="testimonial-details">
                        <h3 class="testimonial-name">
                            Dr. Shrikant Jichkar
                        </h3>
                        <p class="testimonial-desc">
                            India's most educated man, who had 20 degrees
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <div class="footer-copyright">
            © 2024 - Present Hex Library. All rights reserved.
            <p style="margin-top: 10px;" class="nav-link">Design by : Himek saini</p>
        </div>
    </div>
</body>
</body>
</html>