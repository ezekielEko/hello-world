<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Portfolio</title>


    <!-- box icons go to boxicons.com -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    border: none;
    outline: none;
    scroll-behavior: smooth;
    font-family: 'Poppins', sans-serif;
}

:root {
    --bg-color: #081b29;
    --second-bg-color: #112e42;
    --text-color: #ededed;
    --main-color: #00abf0;
}

html {
    font-size: 62.5%;
    overflow-x: hidden;
}

body {
    background: var(--bg-color);
    color: var(--text-color);
}

.header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 2rem 9%;
    background: transparent;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 100;
    transition: .3s;
}

.logo {
    position: relative;
    font-size: 2.5rem;
    color: var(--text-color);
    font-weight: 600;
}

.navbar {
    position: relative;
}

.navbar a {
    font-size: 1.7rem;
    color: var(--text-color);
    font-weight: 500;
    margin-left: 3.5rem;
    transition: .3s;
}

.navbar a:hover,
.navbar a.active {
    color: var(--main-color);
}

#menu-icon {
    position: relative;
    font-size: 3.6rem;
    color: var(--text-color);
    cursor: pointer;
    display: none;
}

section {
    min-height: 100vh;
    padding: 10rem 9% 2rem;
}

.home {
    display: flex;
    align-items: center;
    padding: 0 9%;
    background: url('C:/Users/ezeki/OneDrive/Desktop/Complete Responsive Portfolio website/images/home.jpg') no-repeat;
    background-size: cover;
    background-position: center;
}

.home-content {
    max-width: 60rem;
    z-index: 99;
}

.home-content h1 {
    position: relative;
    display: inline-block;
    font-size: 5.6rem;
    font-weight: 700;
    line-height: 1.3;
}

.home-content h1 span {
    color: var(--text-color);
}

.home-content .text-animate {
    position: relative;
    width: 32.8rem;
}

.home-content .text-animate h3 {
    font-size: 3.2rem;
    font-weight: 700;
    color: transparent;
    -webkit-text-stroke: .7px var(--main-color);
    background-image: linear-gradient(var(--main-color), var(--main-color));
    background-repeat: no-repeat;
    /* -webkit-background-clip: text; */
    background-position: -33rem 0;
}

.home.show-animate .home-content .text-animate h3 {
    animation: homeBgText 6s linear infinite;
    animation-delay: 2s;
}

.home-content .text-animate h3::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 0;
    height: 100%;
    border-right: 2px solid var(--main-color);
    z-index: -1;
}

.home.show-animate .home-content .text-animate h3::before {
    animation: homeCursorText 6s linear infinite;
    animation-delay: 2s;
}

.home-content p {
    position: relative;
    font-size: 1.6rem;
    margin: 2rem 0 4rem;
}

.btn-box {
    position: relative;
    display: flex;
    justify-content: space-between;
    width: 34.5rem;
    height: 5rem;
}

.btn-box .btn {
    position: relative;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 15rem;
    height: 100%;
    background: var(--main-color);
    border: .2rem solid var(--main-color);
    border-radius: .8rem;
    font-size: 1.8rem;
    font-weight: 600;
    letter-spacing: .1rem;
    color: var(--bg-color);
    z-index: 1;
    overflow: hidden;
    transition: .5s;
}

.btn-box .btn:hover {
    color: var(--main-color);
}

.btn-box .btn:nth-child(2) {
    background: transparent;
    color: var(--main-color);
}

.btn-box .btn:nth-child(2):hover {
    color: var(--bg-color);
}

.btn-box .btn:nth-child(2)::before {
    background: var(--main-color);
}

.btn-box .btn::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 0;
    height: 100%;
    background: var(--bg-color);
    z-index: -1;
    transition: .5s;
}

.btn-box .btn:hover::before {
    width: 100%;
}

.home-sci {
    position: absolute;
    bottom: 4rem;
    width: 170px;
    display: flex;
    justify-content: space-between;
}


/*  */
.home-sci a {
    position: relative;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 40px;
    height: 40px;
    background: transparent;
    border: .2rem solid var(--main-color);
    border-radius: 50%;
    font-size: 20px;
    color: var(--main-color);
    z-index: 1;
    overflow: hidden;
    transition: .5s;
}

.home-sci a:hover {
    color: var(--bg-color);
}



.home-sci a::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 0;
    height: 100%;
    background: var(--main-color);
    z-index: -1;
    transition: .5s;
}

.home-sci a:hover::before {
    width: 100%;
}

.home-imgHover {
    position: absolute;
    top: 0;
    right: 0;
    width: 45%;
    height: 100%;
    background: transparent;
    /* border: 2px solid red; */
    transition: 3s;
}

.home-imgHover:hover {
    background: var(--bg-color);
    opacity: .8;
}

.about{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    gap: 2rem;
    background: var(--second-bg-color);
    padding-bottom: 6rem;

}

.heading{
    font-size: 5rem;
    margin-bottom: 3rem;
    text-align: center;

}

span{
    color: var(--main-color);

}

.about-img{
    position: relative;
    width: 25rem;
    height: 25rem;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.about-img img{
    width: 90%;
    border-radius: 50%;
    border: .2rem solid var(--main-color);
}

.about-img .circle-spin{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) rotate(0);
    width: 100%;
    height: 100%;
    border-radius: 50%;
    border-top: .2rem solid var(--second-bg-color);
    border-bottom: .2rem solid var(--second-bg-color);
    border-left: .2rem solid var(--main-color);
    border-right: .2rem solid var(--main-color);

}

.about-content{
    text-align: center;

}

.about-content h3{
    font-size: 2.6rem;
}

.about-content p {
    font-size: 1.6rem;
    margin: 2rem 0 3rem;
}

.btn-box.btns{
    display: inline-block;
    width: 15rem;
}

.btn-box.btns a::before{
    background: var(--second-bg-color);
}

.education{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    min-height: auto;
    padding-bottom: 5rem;
}

.education .education-row{
    display: flex;
    flex-wrap: wrap;
    gap: 5rem;
}

.education-row .education-column{
    flex: 1 1 40rem;
}
.education-column .title{
    font-size: 2.5rem;
    margin: 0 0 1.5rem 2rem;

}

.education-column .education-box{
    border-left: .2rem solid var(--main-color);

}

.education-box .education-content{
    position: relative;
    padding-left: 2rem;
}

.education-box .education-content::before {
    content: '';
    position: absolute;
    top: 0;
    left: -1.1rem;
    width: 2rem;
    height: 2rem;
    background: var(--main-color);
    border-radius: 50%;
}





.education-content .content{
    position: relative;
    padding: 1.5rem;
    border: .2rem solid var(--main-color);
    border-radius: .6rem;
    margin-bottom: 2rem;
    overflow: hidden;
}



.education-content .content::before{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 0;
    height: 100%;
    background: var(--second-bg-color);
    z-index: -1;
    transition: .5s;
}



.education-content .content:hover::before{
    width: 100%;
}



.education-content .content .year{
    font-size: 1.5rem;
    color: var(--main-color);
    padding-bottom: .5rem;
}

.education-content .content .year i{
    padding-right: .5rem;
}


.education-content .content h3{
    font-size: 2rem;
}

.education-content .content p{
    font-size: 1.6rem;
    padding-top: .5rem;
}

/* Skills  */
.skills{
    min-height: auto;
    padding-bottom: 7rem;
    background: var(--second-bg-color);
}

.skills .skills-row{
    display: flex;
    flex-wrap: wrap;
    gap: 5rem;
}

.skills .skills-column{
    flex: 1 1 40rem;
}

.skills-column .title{
    font-size: 2.5rem;
    margin: 0 0 1.5rem;
}

.skills-box .skills-content{
    position: relative;
    border:  .2rem  solid var(--main-color);
    border-radius: .6rem;
    padding: .5rem 1.5rem;
    z-index: 1;
    overflow: hidden;
}

.skills-box .skills-content::before{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 0;
    height: 100%;
    background: var(--bg-color);
    z-index: -1;
    transition: .5s;
}


.skills-box .skills-content:hover::before{
    width: 100%;
}


.skills-content .progress{
    padding: 1rem 0;
}

.skills-content .progress h3{
    font-size: 1.7rem;
    display: flex;
    justify-content: space-between;
}


.skills-content .progress h3 span{
    color: var(--text-color);
}

.skills-content .progress .bar {
    height: 2.5rem;
    border-radius: .6rem;
    border: .2rem solid var(--main-color);
    padding: .5rem;
    margin: 1rem 0;
}

.skills-content .progress .bar span{
    display: block;
    height: 100%;
    border-radius: .3rem;
    background: var(--main-color);
}

/* coding the bar percentage   */
.skills-column:nth-child(1) .skills-content .progress:nth-child(1) .bar span{
    width: 70%;
}

.skills-column:nth-child(1) .skills-content .progress:nth-child(2) .bar span{
    width: 70%;
}
.skills-column:nth-child(1) .skills-content .progress:nth-child(3) .bar span{
    width: 60%;
}

.skills-column:nth-child(1) .skills-content .progress:nth-child(4) .bar span{
    width: 71%;
}

.skills-column:nth-child(2) .skills-content .progress:nth-child(1) .bar span{
    width: 70%;
}

.skills-column:nth-child(2) .skills-content .progress:nth-child(2) .bar span{
    width: 70%;
}
.skills-column:nth-child(2) .skills-content .progress:nth-child(3) .bar span{
    width: 60%;
}

.skills-column:nth-child(2) .skills-content .progress:nth-child(4) .bar span{
    width: 71%;
}
</style>

</head>

<body>

    <!--header design-->
    <header class="header">
        <a href="#" class="logo">Gustave.</a>

        <div class="bx bx-menu" id="menu-icon"></div>

        <nav class="navbar">
            <a href="#home" class="active">Home</a>
            <a href="#about">About</a>
            <a href="#education">Education</a>
            <a href="#skills">Skills</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>

    <!-- home section design  -->
    <section class="home" id="home">
        <div class="home-content">
            <h1>Hi, I'm<span> Gustave Eko</span></h1>
            <div class="text-animate">
                <h3>Jr Java Developer</h3>
            </div>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure, amet perferendis ipsa praesentium
                consectetur, reiciendis et odio assumenda, aliquam numquam nemo neque. Necessitatibus expedita
                voluptatem consectetur ipsa.
            </p>

            <div class="btn-box">
                <a href="#" class="btn">Hire Me!</a>
                <a href="#" class="btn">Let's Talk</a>
            </div>
        </div>

        <div class="home-sci">
            <a href="#"><i class='bx bxl-facebook'></i></a>
            <a href="#"><i class='bx bxl-twitter'></i></a>
            <a href="#"><i class='bx bxl-linkedin'></i></a>
        </div>

        <div class="home-imgHover">

        </div>
    </section>

    <!-- about section  design -->
    <section class="about" id="about">
        <h2 class="heading">About <span>Me</span></h2>
        <div class="about-img">
            <img src="images/about.jpg" alt="">
            <span class="circle-spin"></span>
        </div>

        <div class="about-content">
            <h3>Jr Java Developer!</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores facere error qui illum rem debitis
                vitae velit facilis suscipit voluptatum maxime, consectetur nemo. Nesciunt praesentium ipsum qui, a
                natus quas voluptas. Corrupti sed doloremque nesciunt aliquam ab, fuga eos ducimus, dolores cum quisquam
                quas quod ratione sequi quidem deserunt placeat.
            </p>

            <div class="btn-box btns">
                <a href="#" class="btn">Read More</a>
            </div>

        </div>
    </section>

    <!-- education section design  -->
    <section class="education" id="education">
        <h2 class="heading">MY <span>journey</span></h2>

        <div class="education-row">
            <div class="education-column">
                <h3 class="title">Education</h3>
                <div class="education-box">

                    <div class="education-content">
                        <div class="content">
                            <div class="year"><i class='bx bxs-calendar'></i>2018-2019</div>
                            <h3>Bachelor's Degree - Indiana University</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptate ipsum blanditiis
                                dicta placeat! Asperiores minus neque molestiae praesentium eveniet.</p>
                        </div>
                    </div>

                    <div class="education-content">
                        <div class="content">
                            <div class="year"><i class='bx bxs-calendar'></i>2019-2020</div>
                            <h3>Bachelor's Degree - Indiana University</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptate ipsum blanditiis
                                dicta placeat! Asperiores minus neque molestiae praesentium eveniet.</p>
                        </div>
                    </div>

                    <div class="education-content">
                        <div class="content">
                            <div class="year"><i class='bx bxs-calendar'></i>2020-2021</div>
                            <h3>Bachelor's Degree - Indiana University</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptate ipsum blanditiis
                                dicta placeat! Asperiores minus neque molestiae praesentium eveniet.</p>
                        </div>
                    </div>

                </div>
            </div>
            <!-- experience  -->
            <div class="education-column">
                <h3 class="title">Experience</h3>
                <div class="education-box">

                    <div class="education-content">
                        <div class="content">
                            <div class="year"><i class='bx bxs-calendar'></i>2018-2019</div>
                            <h3>Junior Java Developer - Company</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptate ipsum blanditiis
                                dicta placeat! Asperiores minus neque molestiae praesentium eveniet.</p>
                        </div>
                    </div>

                    <div class="education-content">
                        <div class="content">
                            <div class="year"><i class='bx bxs-calendar'></i>2019-2020</div>
                            <h3>Junior Java Developer - Company</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptate ipsum blanditiis
                                dicta placeat! Asperiores minus neque molestiae praesentium eveniet.</p>
                        </div>
                    </div>

                    <div class="education-content">
                        <div class="content">
                            <div class="year"><i class='bx bxs-calendar'></i>2020-2021</div>
                            <h3>Junior Java Developer - Company</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptate ipsum blanditiis
                                dicta placeat! Asperiores minus neque molestiae praesentium eveniet.</p>
                        </div>
                    </div>

                </div>
            </div>


        </div>
    </section>

    <!-- skills section design   -->
    <section class="skills" id="skills">
        <h2 class="heading">My <span>Skills</span></h2>

        <div class="skills-row">
            <div class="skills-column">
                <h3 class="title">Coding Skills</h3>
                <div class="skills-box">
                    <div class="skills-content">
                        <div class="progress">
                            <h3>Java <span>70%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>Spring Boot <span>70%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>DevOps <span>60%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>HTML&CSS <span>71%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>
                    </div>
                </div>
            </div>

            <!--                 Something here just for reference-->
            <div class="skills-column">
                <h3 class="title">Professional Skills</h3>
                <div class="skills-box">
                    <div class="skills-content">
                        <div class="progress">
                            <h3>Microservices <span>70%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>Web Developement<span>70%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>Agile Methodology<span>60%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>DevOps Engineer<span>71%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- contact section design   -->
    <section class="contact" id="contact">
        <h2 class="heading">Contact <span>Me!</span></h2>
    </section>

    <script src="js/script.js"></script>
</body>

</html>
