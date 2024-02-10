<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Go Trip</title>
    <style>@import url("https://fonts.googleapis.com/css2?family=Barlow+Condensed:wght@500&display=swap");
        @import url("https://fonts.googleapis.com/css2?family=Satisfy&display=swap");
        @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap");
        
        * {
          box-sizing: border-box;
          margin: 0;
        }
        
        body,
        html {
          margin: 0;
          padding: 0;
        }
        
        /*------------------------Scroll Bar-----------------------*/
        ::-webkit-scrollbar {
          width: 20px;
        }
        
        ::-webkit-scrollbar-track {
          box-shadow: inset 0 0 5px grey;
          border-radius: 10px;
        }
        
        ::-webkit-scrollbar-thumb {
          background-color: #fde65e;
          border-radius: 10px;
        }
        
        ::-webkit-scrollbar-thumb:hover {
          background-color: #fde02f;
        }
        
        /*========================Nav Bar=========================*/
        .nav-bar {
          display: flex;
          flex-flow: row wrap;
          width: 100%;
          height: 90px;
          background-color: #fff;
          box-shadow: 3px 3px 10px lightslategray;
          align-items: center;
          justify-content: center;
          position: sticky;
          top: 0;
          z-index: 1;
        }
        
        .logo {
          flex: 1;
          font-size: 40px;
          padding: 20px;
          margin-left: 50px;
          font-family: Satisfy;
        }
        
        ul.menu {
          flex: 1;
          display: flex;
          flex-flow: row wrap;
        }
        
        .menu li {
          flex: 1;
          list-style-type: none;
          font-size: 16px;
          font-family: "Barlow Condensed";
          text-align: center;
        }
        
        .menu li a {
          text-decoration: none;
          color: #000;
          text-transform: uppercase;
        }
        
        .menu li a:hover {
          color: midnightblue;
          text-decoration: underline;
        }
        
        /*=============================Banner=============================*/
        .banner {
          background-image: url("https://res.cloudinary.com/dxssqb6l8/image/upload/v1605294054/young-woman-enjoying-beautiful-scenery-of-lago-di-braies-italy-picjumbo-com_aa0fvw.jpg");
          background-size: cover;
          background-repeat: no-repeat;
          background-position: center;
          /*overflow: hidden;*/
          width: 100%;
          height: 100vh;
          text-align: center;
          position: relative;
          display: flex;
          justify-content: center;
          align-items: center;
        }
        
        .banner::before {
          content: "";
          position: absolute;
          display: block;
          top: 0;
          left: 0;
          bottom: 0;
          right: 0;
          background-color: rgba(0, 0, 0, 0.2);
          /*background-size: 100%;*/
        }
        
        .banner-text-item {
          position: absolute;
          width: 100%;
          text-align: center;
          display: flex;
          flex-flow: column wrap;
          justify-content: center;
          align-items: center;
        }
        
        .banner-heading {
          flex: 1;
        }
        
        .banner-heading h1 {
          font-size: 100px;
          font-weight: normal;
          color: #fde02f;
          font-family: Satisfy;
        }
        
        .banner-text-item .form {
          flex: 1;
          display: flex;
          flex-flow: row wrap;
          justify-content: center;
          align-items: center;
          background-color: rgba(255, 255, 255, 0.2);
          border-radius: 5px;
          width: 70%;
          padding: 1% 2%;
        }
        
        .banner-text-item input,
        .banner-text-item .date,
        .banner-text-item .book {
          padding: 15px;
          margin-right: 10px;
          font-size: 18px;
          font-family: Roboto;
          border-radius: 5px;
          outline: 0;
          border: none;
        }
        
        .banner-text-item input {
          width: 50%;
          flex: 2;
        }
        
        .banner-text-item .date {
          width: 20%;
          flex: 1;
        }
        
        .banner-text-item .book {
          width: 20%;
          flex: 1;
        }
        
        .banner-text-item .book {
          text-decoration: none;
          color: #000;
          text-transform: uppercase;
          padding: 15px;
          cursor: pointer;
          background-color: #fde02f;
          font-size: 16px;
          font-weight: normal;
          font-family: "Barlow Condensed";
          width: 20%;
        }
        
        /*===========================Services===========================*/
        .services {
          display: flex;
          flex-flow: row;
          align-items: center;
          justify-content: center;
        }
        
        .service-item {
          flex: 1;
          padding: 50px 10px;
          border: lightcyan solid 1px;
          text-align: center;
          margin: 180px 50px;
          transition: all 1s;
          display: flex;
          flex-flow: column;
          align-items: center;
          justify-content: center;
        }
        
        .service-item:hover {
          box-shadow: 3px 3px 20px lightsteelblue;
        }
        
        .service-item h2 {
          font-family: Barlow Condensed;
          font-size: 18px;
          width: 120px;
          color: #001f38;
          flex: 1;
        }
        
        .service-item img {
          width: 60px;
          height: 60px;
          flex: 1;
        }
        
        /*=============================Places===============================*/
        .places-text {
          text-align: center;
          margin-bottom: 50px;
        }
        
        .places-text small {
          font-family: Roboto;
          color: #ffc342;
          font-size: 15px;
          font-weight: bolder;
        }
        
        .places-text h2 {
          font-family: Barlow Condensed;
          font-size: 55px;
          color: #191d34;
          letter-spacing: 1px;
        }
        
        .cards {
          display: grid;
          grid-template-columns: repeat(3, 1fr);
          grid-template-rows: repeat(2, 1fr);
          grid-gap: 30px;
          align-items: center;
          justify-items: center;
          text-align: center;
        }
        
        .card {
          border: 1px solid lightgray;
          box-shadow: 2px 2px 6px 0 rgba(0, 0, 0, 0.3);
          border-top-left-radius: 8px;
          border-top-right-radius: 8px;
          width: 80%;
          height: auto;
        }
        
        .card img {
          max-width: 100%;
          height: 300px;
          border-radius: 8px;
          cursor: pointer;
        }
        
        .cards .text {
          padding: 20px;
          font-family: Barlow Condensed;
          line-height: 50px;
        }
        
        .cards .card-box {
          display: flex;
          flex-flow: row;
          background-color: #fde02f;
          font-size: 18px;
          font-family: Roboto;
          align-items: center;
          justify-content: center;
          text-align: center;
        }
        
        .cards .time {
          flex: 1;
        }
        
        .cards .location {
          flex: 2;
        }
        
        .cards .cost {
          color: #4cafad;
          font-size: 20px;
        }
        
        /*------------Zoom in Photos--------------*/
        .zoom-img {
          float: left;
          position: relative;
          width: 100%;
          height: 320px;
          overflow: hidden;
        }
        
        .zoom-img .img-card {
          position: absolute;
          overflow: hidden;
        }
        
        .img-card img {
          -webkit-transition: 0.8s ease;
          transition: 0.8s ease;
        }
        
        .card:hover .zoom-img img {
          -webkit-transform: scale(1.1);
          transform: scale(1.1);
        }
        
        /*=========================About Us=========================*/
        .about {
          display: flex;
          flex-flow: row wrap;
          align-items: center;
          justify-content: center;
          padding: 150px;
        }
        
        .about-img {
          flex: 1;
        }
        
        .about-img img {
          width: 500px;
          height: 700px;
          box-shadow: 2px 2px 6px 0 rgba(0, 0, 0, 0.3);
        }
        
        .about-text {
          flex: 1;
          /*width: 100px;*/
          display: flex;
          flex-flow: column wrap;
        }
        
        .about-text small,
        .about-text p,
        .about-text input,
        .about-text a {
          flex: 1;
          font-family: Roboto;
        }
        
        .about-text small {
          color: #ffc342;
          font-size: 18px;
        }
        
        .about-text h2 {
          flex: 1;
          font-family: Barlow Condensed;
          font-size: 60px;
          color: #191d34;
          width: 450px;
        }
        
        .about-text label {
          padding-bottom: 10px;
          color: #506172;
          font-weight: bolder;
          font-family: Roboto;
          letter-spacing: 1px;
        }
        
        .about-text p {
          width: 500px;
          line-height: 30px;
          color: #506172;
          font-weight: bolder;
          padding: 50px 0;
        }
        
        .about-text a {
          background-color: #fff;
          border: 2px solid #014b85;
          text-decoration: none;
          border-radius: 5px;
          width: 180px;
          padding: 20px;
          text-align: center;
          margin-top: 50px;
          color: #014b85;
          font-weight: bolder;
          font-size: 14px;
        }
        
        .about-text a:hover {
          background-color: #014b85;
          color: #fff;
        }
        
        /*===============Footer===================*/
        .footer {
          background-image: url("https://res.cloudinary.com/dxssqb6l8/image/upload/v1605293781/pine-tree_mq2sgp.jpg");
          background-size: cover;
          background-repeat: no-repeat;
          background-position: center;
          width: 100%;
          height: 670px;
          position: relative;
          display: flex;
          flex-flow: row wrap;
          justify-content: center;
          align-items: center;
        }
        
        .footer::before {
          position: absolute;
          content: "";
          display: block;
          background-color: rgba(0, 0, 36, 0.8);
          top: 0;
          left: 0;
          bottom: 0;
          right: 0;
        }
        
        .footer .links {
          position: relative;
          color: #fff;
          flex: 1;
          display: flex;
          flex-flow: column;
          justify-content: center;
          align-items: center;
        }
        
        .links ul {
          list-style-type: none;
        }
        
        .links h3 {
          font-family: Barlow Condensed;
          font-weight: normal;
          font-size: 23px;
          margin-bottom: 15px;
        }
        
        .links li {
          font-family: Roboto;
          cursor: pointer;
          padding: 15px 0;
        }
        
        .links li:hover {
          color: #ffa801;
        }
        
        /*==========================Responsive=============================*/
        @media all and (max-width: 1172px) {
          .banner-text-item .form {
            display: flex;
            flex-flow: column;
            justify-content: center;
            align-items: center;
            width: 50%;
          }
        
          .banner-text-item .form input,
          .banner-text-item .form .date,
          .banner-text-item .form a {
            flex: 1;
            margin-bottom: 5px;
            font-size: 14px;
          }
        
          .banner-text-item .form input {
            width: 60%;
          }
        
          .banner-text-item .form .date {
            width: 30%;
          }
        
          .banner-text-item .form .book {
            width: 10%;
            font-size: 14px;
          }
        
          .banner-heading h1 {
            font-size: 60px;
          }
        }
        
        @media all and (max-width: 1414px) {
          .banner-text-item .form input {
            width: 40%;
          }
        
          .banner-text-item .form .date {
            width: 30%;
          }
        
          .banner-text-item .form .book {
            width: 20%;
            font-size: 14px;
          }
        }
        
        @media all and (max-width: 942px) {
          .nav-bar {
            display: flex;
            flex-flow: column wrap;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: auto;
            text-align: center;
            position: static;
          }
        
          .logo {
            flex: 1;
            font-size: 30px;
            margin: 10px auto;
            font-family: Satisfy;
            color: #fde02f;
          }
        
          .nav-bar ul {
            display: none;
          }
        
          .nav-bar ul li {
            flex: 1;
            margin-bottom: 5px;
            font-size: 14px;
          }
        
          .services {
            display: flex;
            flex-flow: column wrap;
          }
        
          .services .service-item {
            flex: 1;
            margin-bottom: -130px;
            width: 400px;
          }
        
          .places-text {
            margin-top: 200px;
          }
        }
        
        @media all and (max-width: 928px) {
          .banner .form input,
          a {
            font-size: 12px;
          }
        }
        
        @media all and (max-width: 1173px) {
          .banner .form {
            background-color: transparent;
          }
        }
        
        @media all and (max-width: 1194px) {
          .places .card-box p {
            font-size: 14px;
          }
        }
        
        @media all and (max-width: 1086px) {
          .places .cards .text {
            line-height: 40px;
          }
        
          .cards .text .h2 {
            font-size: 12px;
          }
        
          .cards .img-card img {
            height: 260px;
          }
        }
        
        @media all and (max-width: 974px) {
          .cards {
            display: grid;
            grid-template-columns: repeat(1, 1fr);
            grid-template-rows: repeat(6, 1fr);
            grid-gap: 20px;
          }
        
          .card {
            width: 300px;
            height: 500px;
            margin: auto;
          }
        
          .cards .text {
            padding: 5px;
            font-family: Barlow Condensed;
          }
        }
        
        @media all and (max-width: 1334px) {
          .about-img img {
            width: 300px;
            height: 500px;
          }
        }
        
        @media all and (max-width: 1116px) {
          .about {
            display: flex;
            flex-flow: column wrap;
            justify-content: center;
            align-items: center;
          }
        
          .about-img {
            flex: 1;
            margin-bottom: 20px;
          }
        
          .about-text {
            flex: 1;
            margin: auto;
            text-align: center;
            display: flex;
            flex-flow: column;
            justify-content: center;
            align-items: center;
          }
        
          .about-text h2 {
            font-size: 35px;
          }
        
          .about-img img {
            width: 400px;
            height: 400px;
          }
        }
        
        @media all and (max-width: 708px) {
          .footer {
            width: 100%;
            height: 670px;
            position: relative;
            display: flex;
            flex-flow: column wrap;
            justify-content: center;
            align-items: center;
          }
        }</style>
</head>

<body>

    <body>

        <!--===========Nav Bar=================-->
        <section class="nav-bar">
            <div class="logo">Go trip v1.9</div>
            <ul class="menu">
                <li><a href="#">home</a></li>
                <li><a href="#">tours</a></li>
                <li><a href="#">package</a></li>
                <li><a href="#">blog</a></li>
                <li><a href="#">about us</a></li>
                <li><a href="#">contact us</a></li>
            </ul>
            </div>

        </section>
        <!--===============Banner================-->
        <section class="banner">
            <div class="banner-text-item">
                <div class="banner-heading">
                    <h1>Find your Next tour!</h1>
                </div>
                <form class="form">
                    <input type="text" list="mylist" placeholder="Where would you like to go?">
                    <datalist id="mylist">
                        <option>London</option>
                        <option>Canada</option>
                        <option>Monaco</option>
                        <option>France</option>
                        <option>Japan</option>
                        <option>Switzerland</option>
                        <option>Seoul</option>
                    </datalist>
                    <input type="date" class="date">
                    <a href="#" class="book">book</a>
                </form>
            </div>
        </section>

        <!--=========Services===============-->
        <section class="services">
            <div class="service-item">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQu_FcOyuKC50KgNIUUynH3l73wzAjcNjIa96ClDEbiw&s">
                <h2>8000+ Our Local Guides</h2>
            </div>
            <div class="service-item">
                <img src="data:image/jpeg;base64,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">
                <h2>100% Trusted Tour Agency</h2>
            </div>
            <div class="service-item">
                <img src="data:image/png;base64,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">
                <h2>28+ Years of Travel Experience</h2>
            </div>
            <div class="service-item">
                <img src="data:image/jpeg;base64,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">
                <h2>98% Our Travelers are Happy</h2>
            </div>
        </section>
        <!--==============Places===================-->
        <section class="places">
            <div class="places-text">
                <small>FEATURED TOURS PACKAGES</small>
                <h2>Favourite Places</h2>
            </div>

            <div class="cards">
                <div class="card">
                    <div class="zoom-img">
                        <div class="img-card">
                            <img
                                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQijcack60WED67gplnQ88JBsP__eP2qG-xfg&usqp=CAU">
                        </div>
                    </div>

                    <div class="text">
                        <span class="rating">⭐⭐⭐⭐⭐</span>
                        <h2>The Dark Forest Adventure</h2>
                        <p class="cost">$1870 / Per Person</p>
                        <div class="card-box">
                            <p class="time">🕓 3 Days</p>
                            <p class="location">✈ Vancouver, Canada</p>
                        </div>
                    </div>

                </div>
                <div class="card">
                    <div class="zoom-img">
                        <div class="img-card">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzO1LaopB--Ioe5ekaNXQsGfB2rYdPoVlFjw&usqp=CAU">
                        </div>
                    </div>

                    <div class="text">
                        <span class="rating">⭐⭐⭐⭐⭐</span>
                        <h2>The Dark Forest Adventure</h2>
                        <p class="cost">$1870 / Per Person</p>
                        <div class="card-box">
                            <p class="time">🕓 3 Days</p>
                            <p class="location">✈ America</p>
                        </div>
                    </div>

                </div>
                <div class="card">
                    <div class="zoom-img">
                        <div class="img-card">
                            <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTEhMWFRUXFx4WFxcXGB0YGhgYGBkXFxcfHxkaHSggGR0mHRgYIjEiJSorLi4uGCAzODMsNygtLisBCgoKDg0OGxAQGy0lICYwLy0tLS0vLy8vLS0tLS0tLS8tLS0tLS8tLy8tLS0tMi0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKwBJgMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQMGAAECBwj/xAA/EAACAQMDAgMGBAQFBAAHAAABAhEAAyEEEjEFQRMiUQYyYXGBkRVCUqEjU5KxFGLB0fAzcuHxBxYkQ0Rjgv/EABoBAAIDAQEAAAAAAAAAAAAAAAEEAgMFAAb/xAA8EQABAgMFBgQFAwIFBQAAAAABAhEAAyEEEjFBUWFxgZGh8BOxwdEFFBUi4TJS8QZCQ2JykqIjM1PC4v/aAAwDAQACEQMRAD8Av7av5VA2rNRgVm2tsSkDKMpU1Zzjv/FNxUR2nkGtxW9tTCQMIrKlHGIdgrPDqaK1tqd6K7rxF4da2VPtre2hejrgiHw6zw6n210Frr0dcgbw634dE7awLQvx1yB/Drfh0QFre2hfg3Ig8Ot+HU+2t7aF+OuRB4da8OiNtb20L0G5EHh1nh0RtrNtC9BuRB4dZ4dE7K6CUL8G5Avh1vw6J2VmyuvwfDgbw634dFbazbQvx1yBfDrPDorbWbaF+DcgXw6zwqL21m2uvwbkCeFWeFRe2s20b8dcgXwq6Fqp9tb20L8G5A4t1sW6mitgV16DdiLZWVMFrKjejrsUyz1e4OSGHxH+1G2+tjun2NVP8S//AHL9FP8AqKibqrdnn6RW2LMJn9rcFD0EJKnXf5B8jF5t9Utnkx8//FEJqUbhl+9eeDqz/qrf4s/6q4/Djke+UR+aGh74x6TFZtrzgdXufr/esHV7n62+5qH05f7hHfNp0j0eKyK86HV7n62+5rodXufzD9zXfTl/ujvm06R6IBWwK87/ABe5/MP9Rrf4xd/mN/Uaj9OX+4Qfm06R6IFruK85/GLv8xv6jWx1i7/MP9RofTl/uEEWtOkeixW4rzr8bu/zD/Ua2OtXf5h/qNd9NXrHfNp0MeixXQFecjrV3+Yf6jWx1u7/ADD/AFGo/Tl6iD82nQx6LFbivO/xu7/Mb7msHW7v8xv6jQ+mzNRB+bRoY9Eiuorzwdbu/wAw/c1n41d/mH+o0Pp0zUQfm06GPQwK2BXno61d/mH+o1v8au/zD/UaH05eo6wfm06GPQ4rK87/ABi7/Mb7muvxm7/Mb7mu+nL1jvm06R6FFbivO/xe5/Mb7mt/i1z9bfc0Ppy9YPzY0j0OKyK88/F7n62+5rPxe5+tvua76crWD82NI9CisivPPxW5+tvuaz8Vufrb7mu+nK1jvmk6R6GBWBa89/Frn62+5rPxa5+tvua76cvWD80nSPQ9hrCK88/Fbn62+5rPxa5+tvua76cvWD8ynSPQK2K8/wDxS5+tvua2OqXP1t9zXfT16x3zI0j0IGsrz38Vufrb7msofTl6iD8wNIp01ldtZgkHkc/eK5A9M16FozIya6Fc1sGugMI7FbFRg1uTXREpiWt1xugZ/vUNxywgHwyGEyRMT2+MUpa7bKsqXmGuQrXizDY7PFkizrnFk84LAqaxpmcwo+5ik6WribQxF0MJ3tK7SDEDPIJXOefSa5seISHUkFZ/hl4yASIYEKMAHd6/esJf9QlQPhoGypNf9LA8HTtNRD8v4YlxeXvADeftFiXpF4z/AA/d5yP+GpbPRrjCRHf8wkR8u1R6fqV69dVLRBAEsCCQMKZJHmyOCT3pnpt7XAohCUWCyuoLNPAJ4HcZqid8dtaSBdQ5rgdM/ujQlfB7MakqbeNaMye8dkL7vSbqx5QQZggyMf2rE6VckbkIHciCQPkKaaO210eGxXePMdwIBAlSIjHY8xTC7p9qw24AAMQQBIOF2mT9qWmf1HaUi6Qlzmx54wwj4HZVfdeU2hbDTB+rxX7ehWdrTuIkRAwDnytBMY7jmhrtpQSA0wSCCu0gjnAn+/arRc6ergXgJyRMwcEYPpiOP37cNYVP/wAfcCIMQYPlz6ng4nk1TL/qG0JJJL7CA3AUPWLz8AkTG8Me/E4dIRLoMkbgT+XaQ2704PlB9TQ960UYqwAI+IP7irMnTGKzEqoAAIAaAIEY59Z4qO67gJuVRyvFt2hTj4cSOfSmZH9Sqvm+kEcurHkxxoQKQtN/p9JT9hY8+jjDV8BWtYr+n07OSFAkCeYxgdyPWsvWih2sM/MHkSMgx3pidXb8aS5LIpwLSKPOMgjcQ3A9fnUfUbZYl0D3TMPsQQoAgYU/D07U/I+OoXNaYAlLULKJvPqwodSAIzp3whSJToN5T4Bmbc7uDtgAVugLXVbbMFBOcAkYMc0dW3JtEucCZZdqd9scoypktUuig0dTWTWprmrYjEk1m6uJrWa6JCJJrJriTWpNdBibdWt9Rb61urmgxNvrN9RTWprmgxNvre6oayuaJCJd9ZvqOK2BXQYm31qoqyg0GDtPqLXiXA3iXoIgB9pHH5Qcg4plf9kk1BN+zdu2wk+QKAdw96YmeDig9N1W/euG7ZWxZgKDuCmCMjJ8wn1iJAzzJOn12qcsbmttADnyowUE8+VTHzJivKTpSgClkp1+5+BSA3LDONuVOBZQJOlG6lusKrnTnKNbV7niL5gWs7t6/pBAVFnPOZ7xxHpui3WALC2piYvIUYj1i3e+3l7UZavazBXU+NOFBZEBUEqCjG1BAOMT9ZNEaa5duDdqLobZ5CqsHkjCkBdn6cn/ANV15csMhbf6SrowD+W+sSvCZ+tJb/MB7nyeF2o6Vt3MBbKoJeGYMIz7pQz9Caj0WxWUgqSfy7lY8EjHzAzTO7ZDSjL/AAjCncXwJ/USQD5YGRxwOKqnVSmnvIqkhYbAWIYmTnJbEROeahOttoCSlayQRhiTs57YimzynCwgBjlFj9p0W5ZKQqllG2IBJ57See8RxVCuO7Dwlt7HmSHIECYHvQJHqab6i6qw6mT2EcxwPLGef3raDxW3hgwMrLZ2Rt4OZX17zWEm1KSBeDgZnLY2Y3+sMrF4vrpBfRtDvttae4FZSCrIwuZJzEdvWexHEUWvS9PYv2y2qDMPI1tk/wCpuU7QGQ7QMTM9oxVf0LeGzhbyEs3dSDgjgiT27juflXd7c94FxlR5Z8snsRwSINQUq6tRBoa6ZbR0emOMcLqQ4T5+hHlHoI6Xomt2ypW2xJLhTOBhRBb0zipb3VbNsBLZVzIUKzBPDBPmIEYwDwTNeXdS61cVtjYAIwJ/T3+Uz9RW3DagoFY+KvAg+bEkE8dpmMfWoqQss5N06l8e8fR4YTagAyUh+Rj1CC+NqtkiI3ds4k9jRFzTuVh0IU9mIUY494iqxp+rao2lTcSwBQi2e6hifKpgeVe0cetC3vFNou15UVCdxN3aVbPlYYJYxxzkUvQFu+H8Q2beolggneXiy2detprqFk2MCqhWLbS0GTzJ4/8AFC3rtpWhb2VMghTBIgj0ODPzrznU9eW4QpDO27BGSfqee9Dafrlw3QhwA0EHsMzJ+Ez9KdlyZrlw3J/V+kJfNn9o6x6Y+mNtWutdV0Uydu4ElmU4kRE4+UxSXVdYDtLINqxEXCDj12wMzwfhTHX9ftDQi1G8u+wqGg+XIOMnMCqxpuiu5UhhZRxC75bMwfLO6P8AMR9+1YSSrFmwJ794nMnTMEq2nA9TE+s6jcJbw8XGC7V5DBMekk8Zo32c9q9qE3bRbcZICkyASDEMBM+s8cVWdb006e4WtXFvxbFwNzA3EMIBIY98+pxXNnqzM0IMbfgoUxiJPE9qvKTddBfbh3s41MKKUsHXl/EF6q35y1o7QSrR5twBImVJMESJAJ70z6decht8GGgEcEQDI+9KdNr3chAAW3RInaJmJPefUfvTtSAwQDsTMQJ4PPMwTWp8KnGXakhdAaUwLhg/HB3hK2y78hSgKivu3WJmat7q58M1zsPpXtY8+4jsN8awNXMfCtUYmDHe+tF64JrQf5GuYwXEShhWBqiDVq3c7HkUIlBE1gqIGugf+TRYxzjCO5rJFRA0TZtL/wDccqI3eXaxAn9JYE//AMz9KXtFplWdN+aWHE8gASeUMyLPNnKuyw/eZwHGI66FT6K1ZfeGvBNoJB8pBWY90HdPGI712nSyVVt0K2FLygY/AMJPzGPjSg+MWI08Rt4UPMCGfplqyQ+4j3gYGt1NqOmXrfvKB298f2BNZTAtlmP+Kj/cn3in5aeP8NX+1XtDNuq3dxIaypPI8gBmJlXY+ldL1uygIbU20EliFVDJlT+RDk+b1HypV0v2VSywJXechg4S4rCeAIA7DzGeatGmYWtwFlApEr4du2Ao7A8QAfmTJrxs+2yCR4aQw09Xfq0b8mxT6hRJfX0AaE6e0unLFRqbxdzJKIJZm2wYbOApz8ZM9mtq0GMneZJYFrreoPmVQACZbHcTngBd1Sw0E6XZauEhnCsASrMs/IACY+OKy3Y1DJDalN4YNItzETiDBPKz8qUm23OWA22nRIAb00hqXYSQynfJsOZJrBty207gA5BwS7uT+UwGhQYnJz+4PnHtZo713VXXVgADtg+WQog54OZ7g1a+ve0S6Iea8bt2PKgWJPYk8KP3qqXOqG5vvFoL7mYj3SWMnHbJNdImTZgvLAbca8z5ACDaJUlDISTqRp0GO2E9y/csopBG5pB5O2THp3n5j6046Sii3Bhyxk8EYg+UcnA5/wB6rV7U73ZXIkmAcwpnH+opx07QXxuAt7sZHIECd0jgdhPOcc1KbKdPfdN8IjHCJ+uaBixuWztMfxDiIxG0Abp4nt+9I117BwDckAZgcQTj7ek896st7VPbTfcVhbn3ip2mMgTEGY4+fel3V+jOWttcCoHJBZTJ5k7oJyAeIFQlAgXVgbDuxps24UgrTWkQ9UdG2OyloYCQORAwzDHMfEAxHNHaLTs9xLmnRNyr7kkEHkGRhRgD4fU0re5YEpb8VlBjlVBMnI7g5/8AVetezfQ7PTku3iokqgXMsRAkCeJdv2FVzQEIZ+GoJDjrviUpBWrZnFI0vQtc13w7uqFlgchSAygyCQ0gxk8EjNMNL7H6UbVvNcv32hsFmHnO2TG2cjOT9abPrWe6bxth2eEkggBcEcnjn6j50w0anwS+wKuA+08RIMiZDZ5+AomcpqBtzDrjF6JSc+sV/rnTbCW/BtrbtiB5lX+IzKzbgME9hgknPeqbd6V4W66txWIfb3Y7SJknb8u3cVcerWFIRjcLrJBPB/zDiAOCKrV/R7VvSSXuQZnAbPb5Z+lXyipNX7eKZqHO72iPp93detu10hcjYElYEnn7Z7UT7QdYuE2DHlRQo5APAPPxj7iuOh9O8OTczggGYOQZ/eOe9RixuFkYILMCODviQOO+c8YHrUllKlOcvYwGIS3eUSr1Hfdt7QYKgkEAgfEA/SuusWWldo/UrDAlWlgPjBn6RTP2c6SBeVo9wKS2doHAEnmZ5FSvfRdSwIhd0x73lEz/AFD7SKrSUuyasO/OJXHS6s+/SKbfDI6hdwUQIByIkmCORmrTp9M3i7gZBCKDzMyGI+R5z3mgNJqFa9c8uFdsH0BgfTt9TTVuptaRSICbju+cmPNztz/zNWTFFJTdFe2MVhKQ5OHb+0Thfj/rXQBpgvWbjbXQ22Q+8Nmfo0x9I7VFrOuXxLW9hkwLbLBUf9wJDD+mvVy/ic2akTESCQdvo1PLQ4R54/D5SFXFzgDtDf8At/GecCgn/kV0ue39v9q2/XNWpVR4TSYLiQV9Dtnj69651nWdYFlWRsglYKkgGSA0mOPSrhabR/4f+f8A81iHy8hh/wBb/j5/dEmu0V1bTMiFTEqxXueDJEVvpvV3FuL1tXYE8qnoIAOzEH+9HWutatBm2Htsc2rnlYQON4BGCfSDjHNRAj0IkTmMR6kAD7QPlS/hKtIe0IutUEKy5ODr+IaE8Wb7ZKnc1BGfqKU6YwHqOo6YEb0CAtAkNBJk/laO3p9u3H+JseIoEEFgo83lmC2ZXjbPf0qTqGiDgAgETNCafRLabxLa7GAI3LKnOOVz9KjMlLlyVTZU5SkgFvufLX2EWyZ6FzRLmygFEh/tA6GvWG2neyHCFCVDbW8pIBkkHec/CJ/tReruadrioQcZ4gQQIB2w3P8AY0h17kguVBfgsQAxGPT/AFqDRXx41oMMbO44yZ4+Q+GK8xLVMC/ECiFAGr154+3WPRqSm54RAYkUyx0weGuot2T7hZseZkBNtWO0gbiQYO4ZbHxoS50UjaFvWXDMTuDAANtPJE9hFRdN3BQ4M7W9SceGI7ARPbAziZqw6HXDwwrEuzYm0Rbyw4O8iDyZHpyTUrVabQpKQtRUBr70fDOI2eRJlrUUpCd3s+b5e0Vl9Dds77dxQYtlgEaYBZTgk4+vpUlmLZO1gHWf8p4AH8ULMx+kj9qtmlCXbL20fcz7oV5JIIKx5i24A5nI+FKdN0XUBnN2yrKWBCs0g7Z9DA9Rnt8qWTNTdKifR4YuqJATh5b++ES9D1lpy5u3LQM4N+Mic7WIJOaygNXotSnKlVJJCqzQOOCgBA+BZu3pWVTVVRTn7RNS1AsPL8xpfa7hWUbt0MNxEduR8j61Fe9pr124iq3h21IWFM+mTPvfX0qo6tLiXS/htgZlhIkk8KT2Bx8PrXbXGS5It7kbyjb8lJMj0nvH2FAWcYjR8sYQmWmcVALJy1i967TA5e67OQdqyqyT8lkcck0g1mvtom596sPLt8Vg24QQNsz6fCO1DW7rqURSGYzkHEYABnkzwBVX67rWu3jPCyI+PDHAzx+1WSUKUq4TQV06BqHcMIhPtRmGgbr1NfKBNdeNxmczkk5yf/NE6XXlbLWxkE4ntxxU1zpieALpY7u9uRJnCkfAGJ5+c0Bft7DsIE4MDMSOKfSyqDtoWDpjLmjfYLm0lMAnsCe1Xv2a61eWwNqq4f3twhpUwIaRIwMeoqn6lL1lPDZYFxQ4kyI5HyOafdEvKltU3cDPz571Ap8VDKDiLJarppFntdVuO5DoSGIIUmVWIEQp47yZ5+lOtD0O27pFpTtO5TmQTg4OPp8KrvTVLviCBn5/7/8AqvQOlHYkwq4n0ng1m2tMtIupDPpDstBmD7jHmHUvZ4Pr7ltd5JuydqErGZyBE4PemGn1RuK1y+zsAQ21iYthnBPHGARjFXj8VV7t2zZRd7BmRiwCsTgfGYEnviqvrehiyzLm4PDVIJmWPm+BxJE1BM5TBJwGG7jr6RUJTVEMdTpWu2PFR53OIAxlBtgiO+2Z+P3I6ZYXULcQ3DG0bSIEDyjJ5aNo59RVfs6jwmCkwm3uMzJzJABJ/wBTQns9fuO+y0plXIGSuQMebmJzHeiVEZ4bomZjEJZ8j2IYe0vS206IAdxO4+UE4Xg/GZn6UjvN41j+B5jv3MIkqNpn4nt6ftT/AKpr3Wwq6q8bjkkMixtWZHmYEj1EZ+dINI2xtmmssJIloYzuGCSMlZYD5A1ei0KKQ1SDwMUzCHYaYd0gTqN1NrAB4U7crMmDMHvkc/Clj2mhEtszFTuIjILLHP7T8KtlwlVaw7KWMqUWDnk5KyI/2FVrUQzXTbIVhHnB5URuBwApHwirJM4kEd8aA64PEJmneusOL10LZSyG2sWDbwZJ2kjbj3cj5H1ri1qVVg+Mgo8gSCZKECIjEFsduaV3upku9oKJBkEj0MgmeIkUXfTcIKqcbWgducknjM/U0CGxz7/jbHGY9dKRBZvo6kqMBtx2n3jgwfhznPNG6Y+Ij+UgK44kDMjA9Mf2+qHQ6hdNdNtCSCct+4B+Az96sGmBtM1xTNr3mTgAcYPpmaYvBCkkh6uHzrhphrFKgVoKHxpu28MYa28CBWi2eJ+ef7VPKOZtGUPB+4/81HdTFe4lzELSCMCOhD8I8WZSpalO1CRxET2Sd0f4bxBH5SwKmcEjO4DuJHzovwC2BpfDaMqdzmfUZGD6ET8aX/8AzDqLRthk8e0AVdCxDMDwdxkSO2PhxTbVe193fuSyAsBXsswIaJyG2ysg8etZsxVpCyEoOf8Aepj5co20JsxQFFYr/kS/rzgW1otSiOiWikHd7m7axgT5w3rwccYojQa+29q5a1F3w3iS/wDh1jZwfOtuEJ4zW39sL27da0ti3IyWLPIyYIXaO4+x+EAarr+puGYt2okg2kIMkzncxVhyII/uZrNnnzU3TKu5ve5u7kvFotUmUb3i3tRd5MwFRDK3/gtw8PUBgfeJJQkjaqw0KvAIyR254qu9W9oASbQsG3k5nc0KzAyZJK+WZXHOalHVXTz3WuOoPmVXZcfBVZQMekU96H1bRambdrw9zDzpcEXDgkwzqGb4kuxBzJrPnWRVlDFyCP3FudBwrsMaMi1ptP3BnGwP6tzBig9T68ijZkmAZERkSOCe0fcVL0XqSG4N7hYAKyIBkmfzYiR6jPGa9C6r7JpeTz7UMSrBBsWTGDBiOCFPcSa879o/ZjU6RRvi5bxDKJG3mOBBPHpSyUyz9ox892UOiYp7ysPLfDPSSnJncWMqXMjZt5kGZ7R9hmi7ebYlo/ir2kHAxmB2/wA5+Z4Q2NTbYsC5RpyhAKH08hz8fKRRWn1Z9xobbcD+RjukQIh4LD5GfgeKgtIYbMiPLKGEJJJIYg4NXpFjfW3Fb+GxjdDY3wIBzJMD5lY9DTNrVm2DIVd0DaSdpwpMITA7celV97u5lcZQMQWnCyF7kYyP8v0plqeqskAXQFYIsPlDKAmCGBUmeVY/I0laZjZB/wAgb84MpL1f1gvS3HuFhqrYhT5N6qMZyDvacD4VlItTonLnwGcDuoJUr6f9ZSHWIypxEVlIXir7gE12t0grM4KIulW0E97IN1HsnYktvLTO1CoWW9MEFyRPEcH1qle0epLMLVlHtxIdDOSDKnIHIJ9cCvXbqrsh2l1y1u2A7Aw0RHukr3J5MT61v2g9jbOoDXENxLxUFQ9yRIAIBmfrmr5U5KV3pp3YltKE4bcYlNsyV/8AaFe+R6booOi6g9u0ywr7VLLJBMkQTk9scZpZ0rSTudhuA4UiQ3rORxj7Cm69GFu9s1NzZsiCkyWlTwwkKBuEwMg1P1e5btupshQIhQRuSPykg+mcepmmZkxKSUIGNXyNNc+VKxnlLB1FvPlCq21yXI2hQAGDflAhu3DGMemMzW+pXkOmUqiI4YQVwfLgNxOR3+VcdPsJdcoXEZnzTLRAJAOfp6UJa0BZnst5boJieDEY5jPIY4qYuhVThXh7RWrZAzXndsksTABOcCrUmle2yPYtLcbhlCgqu1oOSdu75A/tSzR+z7Za4xUJltoBkAkCDI5+Xr6U9tIRcFtZ3pA8JcAboJ8zDzN6njBqE6akkJSd+3fzGmIL5GSU7IsfT9TbvXVRbZRyPMANgBWZ8vBYgTya56rpLtrV7bbOfFBEyAJQqMTj1+M/Oi9NpUsJ47ENcIUSBGxcqTn4kAnOKc6CxvIuFsCNpYTG4KCB6cHOff7YpQMK5V79YeCSQxhelsaa/buMSWbcCCRifLC+vB+GR9UfUTd8aHY7QQ4Ikqd2SrEYEcfX50x6025rtqfMjEgnICsw2iSf8q+gE4osao22kvbe2VAgj3sHevwB7FvXvQchLs57PYgqSDTKKfrmc6k29p27hkHeAvY+pBGaMsdTW0D4cAjLGIYnInk5A9fSrJqbFwhFSyquxLINoWEgQpByACJ9D9aq/S+h3hdvC77ilvMrAxBAgsYg5HNULKVJc5DB/wBWtOrQuuWsKdOJhr0joCalC112S0JwoIZtg3MAeIiO3IGaK1WsuKdtkG3bjeotgKCGXgttGRPf9610jqfh3Fe03kUFWRj24gKTJGDHbFBajrYtXCXueV8bDnIkNB4AI4+MVyUqmABLvy30Ge/oaxOWEhDYbY89s6l7V8qzttnfJ8pOA0kHjHb505s+GjLdAA3sd0tDCcKwU9mg/H7U1TTBzauKADuMEiZUNgfEc/Klb6QMq7yTtI59c5gQO5rUSTOU4DZHvkYzps1EmqjuaOOpknc6SLkkYBG4E+U+biBOB69orjp926LjG6AybCu0HmfXBzz270UwHH2rAlNyrIAm6rvjjGav4ip3SG39tC+3pIJ85/pX1Hw+FMNJot/vGQo7+k/+a0lvNPuidPuXiUtrJI+gHqT2rVkyUA314DWFFz5sz7EkknIQy6N0/cAQ6KoERugge6DHMT3+FOb/ALNpsQ+McjkLuBOVEAe9JHY4o3p2gs2wLS3AXJErumXGQFDoFcggnjtzQ93WJplLs1pSzE2vLtC/le5OSfQRAJJbjNLzfiE5c0+GSNKY46g4D1jUk/D5SJQEwA0q5ONPXqRHWi6Jp0KrcIZ097ziGbnaE7gCPSc0F7T9Ns2x5UCXOdrXVBPdoT5kiA0/Ct9R6zZGnttp7im6I8tu7OzH5gSTcg9/7VV7957j77jF3/UxmJwYn3R8BTdhTapszxVKLAnMsavgCzdNKAQpblWWVL8IIDtRhhRnc1eNTXJNGaPSeJuhgCOAQSSc4G0HOPlUg6W8EleOZ+PAgCa151tkSiy1MdM8H796RlSbDPmh0Jprlp3zwhawBFL7vTSzqbXlu7vIwO0hu0GRnt9at9r2eN22Llq5aYcGSVI4OQRg5qv9Y6bctnY6wTx3BB4II5qKLXItSShCgTWh8272xd8vPsqgpYIGvo4htoNZ1eyAVtpcJ903NoYYhxu95TPrHNHdK6xdZm/xWm1Eny3FTdetcEyLYyRETBOfhSjpD6tVm4puWrggPs3upQ7QZU5g4zVqfWpZ8NX1G1yoQhpQsY3e4WO0mV5MxI+XlrepMh74TtIfqa8uLaensx8RN4KPFuGLc8Nuta9penaJlm7bu2XCSbi2WgkpiZETMQNw4qr+zjmwb1xGRo2i2T7yjdgxBa23B4z8s16P1DTam6incrWNsFFUs2VKkdtyfPcfpwEvRtPb8q2SQ0MxIG2FJ5AkllIHPqc4pGZapZR4bvhm4Z3O0aUcecNoQQu9QY79+0bWgXW6GASlwISCD4ga4hHJ3KDJz6hvlUx0q+FvFu0TIk23Xa4JysEKFnPI7VrqKaa6FBu3EY5DKSIiTxMGZIwMxFL7A1Olculxb6uwADXNgMRtI3LtBIEHIGZ5rHkWeYlAQoVpuOzCuGZ3AFoYm+F4gUlNNhw4fiGeg0/lJDAEwSpG2JL/ABYTM8HvWUR0zqGqcsbi2bCcL51fIwQSsZ+9bqtSAT+X8n84uSWFAR3tLxLb0ZVbiJbEqVbYsWkIAYgFlJZiQp94jIWhOk9WVpkglSFNsIU2AeWB5mB4P5jxxmmOr9pLdsEadWLHm65gmQBIAHpicfvVZ8rPccEb7jbmiRJOePTnH1rbR8OUsAEAHTHyz4jbC8u3Ilg332MwO6oNNweDvabQ29SmxA29TuG3ZPnPmzkwFyV4x6iq11L2abwYUl7w90gflIO4EE5MxB/1qz6Tpm9Z8UAmQFCuzN/TEEj6U20XQ3S02/yNllLuXbkt7vIBJzn+1Xply5JulyRTMEd7IXmEzTfAYHjywL848DWy9ppIgzHoZHI/3+dNFK3rytb3BiF8QxOwAhRtBGZwO/wqydd0V53bx4uozY2GEV5iMZmcZ+tR6JbGkGF2kDd4hAL5GACeMiZj4UvPng/oBvVAY97MtzxShAUa4ZxvR6wO+wPtWIKlQSdoMmSQADEDdI9aMPSgBb1VveNzgspO9sCV57+h4MiKfafpFpdMxjzXSLlwzvZSCeSORBMj1PzNb0+pJtvaSLgTz9vcjdOeYOCP9qpSAmqeVMN7a7cRDQRrDXplktYc3LaoXQgE4m2QVBOJHby98GpdIzWrYNzxAANpBKSZAIEny4OJwfKOZmo9RrDdJTjhWEnG2GJPrzP+tD+0F6dNstKHuPuUdwuwKcznsPuTS6lhq6xaVBIJ0hXeUoz733+LB2qRcaJ8u4zEYnHr6V1otELdzecWoyrDDMRIH9vlmqr1C3fNy1ctoH4BVZYBiJieBugcmcfWjLt64zeBdL2nRvFIDbo3YKz6cescdqiozQ6gqhx2cPxC6phCisjCL5oLbX7rMGnymSxgKZgGB70YgfCuOsaMOGt29xZpuFZEt+h9pjaeWB5xxzCvoOrUOoXKrO8MMkggrPaBHwmpvaU37l0PbYLtWFCmCZncZA5yfoO9Jomov3VFjtoMsRwqPSLETb6CU1PesVi9r/4gtFVLyCbe3PlGWLDy7ic4MSa61WpVxv8AD3qSu+0YB8NpkqTyYyBjjvUvVdXbW6pRArqq72C4dtkloI+EeuKk0Wtt5DW0YNj3fcB9CpmJJ+U06q6hQYFqP6sOgz2wuVqqHD9PUwPYIa6uAokQAIHpxNdG2PDPEyMferNoenaHb4qsJAk2y0bWgGBMdyeTA+NT9T6jpbVhl0qyXUgnDyCCMvHbOEJ4EntWxJmJIFwE9OppGHPscz7lzlpArV3d2wArFGe0OYrmyon7/wBqN0Wke7uCIWIyY7Cm+k9lrjKGDpBxG7huNpA4bPu81o+IhNFERnyZE1bFKSf5aK3cLKQQMiO3erj0H2qsOFtO+y9Hmd7apbwCBG0DIJ7zOcZqvazSMkhlKkESCIIJjkduaHvaRXUyJx/4q5UhM9DGL5FqNmWWFM49PXw7kkIpdhJIhQ3pBABI8pjsc/OlXtN0Q3yt1DtKjaFHl3Axg9ucAfY0D7Ie1yqfA1b7BAS00tL4zvuM/lGBiRNWqxqbT7lBtz7oa2ysCDwfe3HvAOefnWQpEyzzbwxGxx234j0SJku0Srp/SdCxH8R5qenXAf8Apkfl92IjEH04phY9ndSylgggFgfOuNnvTngevFWzxfEDhbgS4PKQzx7pKmYjxBzj6cSClTpN5QLfiXG85iFi2uTgpcaTIPPp3PfQ+tzQP0gHa/o2HHyfO+hS3/USNaexhTf06LpWuh9zB13JtONrSNrgwZUj5Ug0XVLiXrZDbgSAZY5G1uDENx8x9aK9p7RtEFXRGVS+0ElWU7QIHCkRkCOTyADSLp+r33FLBdwgEEFgR5gTHcfEZHJ4FZc61TJ6jNUKsQePKmGB3xp2WQJMsSkig257e20aH9p7WoZnfT21MTht0jA4GB2/an2k6tcWDdBZUQsu3LKQBBXvIzxn96r129CbwY8oPvYHH5uT86P1ftBctBdjKGEp/wBKOQIO6CCRBHbBBzSXiTVLF0sNCScte+VI0paUhJCkhzmABnsAwhyNZbcJf02qZ7hSN3lKleQLimNuS0HkZ+RV6+wmpv8Ahb1dokoyRESViCPDbPI+HrhIeu3LfhPCTBm4RyQN2ZwcsY55Hej9Pqjet+JftLcvgyLoeHX3sHIAA7BcZmJk1BUhaQ+XA7sQNMmxZqBuZKhkDs64YPqH3xmq6fesqbNt3m4cTd8oc5AOwgrjvOfiaFPV9Z5lN7T2yggXG91oIBWdpM57mpNd01rttblq1dfcfNsYGCJMELxnv8a6u620toCzp2S7tEuiqVO4oGwXDHAnjBHfvEJvfqY+QwrXvZEUSSgk4DQFXo2e2IOi9c1K3Al65aS2pMsib9wViY2jMEk88T2on2i6419SrNbm2VcC2rggsuJZiAsySP3pTqNQ8s5L7hvgnapAltsP7qjnB9PhXNwNeuXLY3E/wsNcBxtlioEBTAJzM4irQkBQUKcdoHrFiUpQLgz1B27xllvzg7rLMWAskW4G5gHneXyWKcqfKB6c8VlWTQvp7ZJNgOxAG9iN0CcHHasqMq03EBJx51zziyZYryyQnvlEX4NAl7jXTMbV/hooMycbnJ4MHGKi6v7OPa0wujUIuwTtQB/KCN7M5XdxkqO+MzROnGovnygqvc8CP9/r9KZa7SE24t7dyqwQODEmDkg9yozHamRa1JbxCH7xoGO3zimZYkqrKBbtm1GyBvYHV6g2F8Pfc3XouO6bG8MKmVAPlBkxJ5n5VYNF1Szd1RtI7FpNpwoJCtb3MwZ2wW7GJ45xVS9nrZRr9vV33a4xtMURYwpuGAoIG3zCSSR5cin2l0xsagaq9dCqfEdLW0iRcZ9rMTJBAxERzVkxaVOSe9usJJQpBCWIOTwh/wDiWCujKootML5xb942wuC5knk947Y9fLtCCbinmSDJzxBj9+B616brusWGvbLLC5vYuNpB5BZp7RxBJzIHxqoX7XgatmFtkUzcQlcTE4gxxP2JxTKZSUyvETUnGnr5Vhd3WUmL90nWpcQGAo2fAbuJODA/N9qD0Ovsp4g4DAI6mMsB5s5nuIPoT3rXszYW1a3XLhaQTsAAUF4kfqnIEz9PUPregsgL5C+8ncqXGdgRwSFXyj0IrOmyJhUUsQD5d4GmyHLwYM3fCCdPovE1JuWxAS0WJLHKrIY4ngFQB8e1TaLR+Hc2uTgywBPvQARJPbHHMnnmkmp6lp0axpxbu2UBALKTHlgksHMuCxk8e4IGMmdTa69wugIRgCzuVI3OYiATwI9JilZljLZ4Z++eccbg+4xy2qXTqQdu4PK2xkK0ypM+8xBE/SgLPUfFG4wSRDYyR3/4aXtorX+Ia3cvPuBM+UedjkDO7dPIaOCI+Gafp7BPEN1Sm6FEHscg5B7EYBPaOKBlS0pdRqWOdX3buJq5hRQJww0d4b2bwtE+Y7nEwcAAHyz9sTTXT9Qm5lgQMTOO445AkftVU6f1FFuG5cRshQCQHXbgDb9SOTIn50z0WkuF38K010HzgrO1DLHLHyqwiNonAnvVEySgj9NWxpxzicpV0UTup3nWE/tM14kuNvg9hb91fWcSJH0rrSGyLBPiSw2nv5t3AGIMGM/GKtHSelMzjYkocEMy7ePQmSJ39pwO+K4610ZfeCeFtUZR+MyG2HIAJHIORM8UzI+4CXpgRR9+3z3xIIJ+4wi02pZ1IZQwCk9oBAkYiRHyo97Nxk3bWHIaZ8pUwR8Bx96L9n+nEXWa/qCyHYRjJgDd6/lxzwxHYRcWNjbEW3I8wVCJ+MQSQ0Hn4ZNMSFLkzXDMcQ5he0WBE5DKcHIs/wCDzir9D9ok06G1etyjGfEGTJHdFXc0ZHf4RVx6fc8QBtPdtuplfKwEM0GCT5gcHA3Ax2pEuj09+drbT28QjOSMFTJOOSW7Uu1fQrunYvbdrTMNsgyjTmDGT9VA5zT3iSJwMwKY7cNMctKxWgWiQAkpCkj9tCBuOPAkxbOr3bLrsv2n5CqEgEMxZRABKsSIyxJ83ANI+t9AW2iNZkqYBLMoJLbdsKIIGTyJNDXPaO+LbeIJgAB0UOOIydwB4PfkjGAA26Etq+m5Cni4MA7xCssHbugNJ4IA5wYEzkzZ0llAG6/Bx57w45R0yTZ7SSFD7m3FvTiBFT6r0ZkCi/bA3iVBgyOJwf8AkGhNBqL+lkaW6LKN767QQeAfjwBwavOvS1duMb9uGtqFYoVYL5QSXAa2yESIDCI+FVzqPRtqh7d23fU5/hyYESW4gL8ZrWlWqRaAETGvHZnsNctWjJm2O02VRXJJujm20U6Qw6Zr/wDEwtpkLAgB0tbGV4PDO8iQO0kgHtmitffa5ut39y3BIS5bYxvBaFItgeaTnMTwao1y0wO5He2Y/KxWfSQCJE0bpet3WTwL72kQqQXdQwYySCEIFu3cjhjOR2MUnaLCUVHMUO+ntGjZviCJgY4nL2iv3bLaa7tvAqVlVZYO1vNhxwe/f5UPZ1Qu3UNxG8NPLuSQQRBTI92Pv9q9St6cpZXd4WqsMhBuscBZj/pjN3JJ8skUo1Ps5ZVCZWxp3G5GVwXdoYryWEFTwD2+tZ86YlWKfuwBDdMxjh/MPy5RFUnvyIitXtTdtoGMPbid8QSPTjnjjnNAabUrqCfeD9jJjG7aCI4Mt6/Dij9dpP8AD3ls2X/hiWDEi4p90qPIQYwDn0MTSjW70O8Oh3ncGSYDDn0gxSqE/cwoTUHDgRhvrEwVKUGNdNujZUxyh/oG8PwmE44ZlV7cEhWUqTKzmDiM/KiLFwyAbdpocF1UG2rCAT8R7xI7H61Venax1ARyVkiOwPmMFWOMSxjv8zTkawkqGG5twkYYgQpJAB7E9p71CYlaSa8e/QRfJUt2X3wwHIQ4s3QLchAobOxGlRP6STx/tVTtsDcEbN3hr+smAy9h5QIpxbuMllASogDhTgBcgA5GZpNp7G4KXYi2ygSrKV3AgwYM8iD8jUpIook451zA1OzthFii6kpZzpTbhBNljcAKpO4uI2iCJmSGbaQM9wcn4U36fpSb67eWOcyqEKw/KOMROc4xigegaK5rFa1bW3bQA+G90N4RI7byckj5mrr7P6NiFXxAHG6PPAbABx3j0HE966ck44YjvvKOlLUq6rAjLXE8PzpWIdL0O6xYnUWVHAUeY47klh3kRHbnNZTDqXQr4E22e5cZizMbpRVGfKAST6dvy8jispcKBGI6erQ/fIzMWC1dDLKmR2pXaR29wEx8YH3OKfWrEqARP7D6nk1Df1ttMTujsuAPr/tmiLKBVZbZFQt6iSmShzqYTaaw1q6z7bYYwVYL593DSe6/8ihOtNuUh1LlgfezM9pbA/2o7WdSNwxIA/SI/wBc/wBq4F/1AP8Az61ETDLWDiPPmCOLPDBkibLIUAFHSrcmO1nIik2tJasubrXIcBtvnyJUwACOASPtT42PEtKytbJPlhjIVxBIOIKzAxMTU+q0VqfESwj3BHlf3SJz+3yo3VW97WrVlCQW2xMbV2ysA8wZ79xxFa8r4ghRZyAcXb884xJ3w+ZKDs7YM/YibQWGWwrXFT3fMyR4fxggRFbbTkoFuJ4ZwSFIMdxDLz6g0d7O9JIe4pa4CsEFTH7TE8etM/wm9A3Ojkn3XXPw86weKomiWhZCajVo5CllLmmyKx1jSW7wFu4m8Eg7TEDIzkYIE8VWuqezjtbNrTblUMWgndhljAmZwQO3wzj0PWez9xirIVBiCoJ+PBOfTmKqnWU1FtdQi2WVltEK0HzNtLCCMN64JqtK0ine8xNagRWKnq+m2n2o9xme2FQsQJMEESJJGZx8TTTp2jWzpWuEI9qyVYqx48M7vKBktKg85+tVRbzKASZBtiSrAgSYkndH5lMfHjiLK6WbaHm9OSNpOAsNO05kse3EY9c+YgpZBwd+8GxhULKcuUT9Ut6e2bh0VzcLhm6gXEFVcR2I2kDnnHM1Fota6+5cEYJUtyI/MB5SDxVX9pm1Fm9Pm8K4oW2d27bCjcJn3ueeR+2+kdXaFRUJbsEUkxgHA7iYmYqS7MpQvoz9mqdjNHKm3i4j1/Q9SssE2tbsqNtxhtJJl7kLIMACPTvTzU2rN2CxAbzAERJwRz3GZj5VS+i9PQr4rAuXuJZZWjGS0Y4HnOeT8OKC0HUbenu3W851RueGviMW2hnEpHugcUCEgVFT32+OkPpJI+6kcdX9nb5ug6fbCeVlJ28w0j/KQBjtxRFzRXrM3G8uCBsMtIUt9Adsc/mFW62FFq5cdyW3bmIUmBiQAAZCxyPQnvVD1XtSupDqkeGxAVmEAlYIkkxJgGBOOZE1YVzAz5Nw39kxNM6WiWXxPb7so1pus+Dp/E1BDknyjd5yPLwYHAxGB/apb4fVWluWATaBkJuhi4O3yiCIyRPwPpXGsuWDbW47F33EC2wABMmScdxAwe5+JqXR9btALb8MLaAO22pjPOcSw5PIn60TNSFhTk7Dg3Cj6Qqu4P7sqD3y9YLHUA4bx7W19u2QQGU+aJdCQs+jbeKF6V0cXgHW4niK0o6sVuEA4O4E4kYw2Kkt+0ire8C1BEEOrDaZUAk+56kgkmDAgCRQ1vR2brBkHguNwDKVAWRIO04GY4x86aVMEtQVUPUcaVONf83SOMsLxY97W6Qfpm1GkY7rYuL5oJRQ6s0yRcA80zkuVOBEU0s+0VnaSGbTyT5WCwSQxBHNsggkE8kzniqs/V9bZ05N25bJ2zCuGcGe+3Ece72OfSkWm1l4udwIaN21lJwZMyRkcVKZai95SX1ILcmcdB1haiAAkFtDXzeu8lsovmm6er+Mdbm2C21k3qxPlKlVdcCD8RBU55qr9a6StvzoZsEwHjiTABXmeM8Ubp9TNlrfiKsjcbbAAKPJtIDCACIgIBHqKI0mutiw2/w7jkRkRAiCu7eQV55PJB7Zss9sMlQRKUbpemYJqGFRoaDPGITbImcPuABoXzI88KZ+kAdB6k+gk2mJtudtwGdqmSVYdkPYzI8wmcURbueEzXA4Fq47lrZ2mPNKyZOydxOAPvwJrdfaN3fbuobO5ZtW1Vtiwm4+Uk4nsMxTzTdIsWkF1X2h7ibQ8XFkwfgR7xxMCAO1LLtbXnLvmwy3Ud6MQQzNVybrPZ1GgVQb+/KKq+lAYtp7aCRFyNxU5gjIaSZM9zEZMUoslBcezcVQkmD5W2kmPeyOMY4/s/69h2vWgFbeNwR5FzfJkZjlZ7RNEaXoz3tMLoMuUPiIq+fzBiABHn5xJ7dzQcFKiqpOb1Ge00wGyj5xIyVBRAxGnt7RQOqXSr+GYdVgKfVeQfnEVxokXymGRtx2ng+ZGgj6r+1egdE9k9PqVk2ztkS5Z9y94AwPvHMR3oe9oNLZulUsoyLgbi7HcP8AuJAyTxUplqRLQAATubqCaVfWACuXLCikNk7b6Oxit9O1tiStwM+4L5iTKjavxxknNOfYb2dW944e5vRSyqAYKMDCv6TG6F+c8ijOkdKS7cCF08Nm81o2gFzxG2MiYBwRzVs6B0hdNdvlIW2QPDtqODgFnJGW5POfpRkzfEvNTDdwcDnhrAl1PiEZ+juNkJnt2unlLTTekhh4g8ttQdp2jgE9/UxQ2rtC+AFcBizshAKkuGBAIHm347ZkcVB/8R+oCw9kSbkqN0mTKMPN6KxzwO2fShtDr1bTzDFfCMJkNtJWFBEE4wG74NWhJV9wwhkKKFEE1/HtDjo/tZqkthb6gkYDMSJK4Ybjgwex8w71lQdG1vihYubwU3bb2buCFBMYIGVJ+A9ayqjY0KqzbIYTbEgMpL7XaLTquoO3lLYGIHGPh3+s0G2eZ9Kxqc9C0ysASJJb7YHH3/YVnuVYxqLKJCHAppCHw13DjdGJySBH3yRn41OWA5qXqB87f5oJ+bHNVm9qGdjuMieO1MSpCppYnCn8QvPtiJKQoJqoPpjrDS91IcJk+vb796iW0GO66WJMbVBhVUghsT5iR69q10vSq9xUMw3Mc1B7fdSbTXFW0FAKqBIJ2gKsRn+8074YlMmXic4yjaFTyTNNBkNe+MXj2P1qoTbPESpgZSeDH5kJj/tIPpVh61qvBTfKiGEbiYPqOMYn4V8/9E192/qrC3LrkG6mAYA8wyFGAfpXs/tPqSumsrCtuxLCSNowQex+NQtI8MXj0ipKwSWwhta1pu2ZtELcIgbhO1pgmO4ng8GqP7X3NVaZFZr1+zbh7z7IAOY2woBjdmS0z8Iqb2G1bvfCMZEE/Hy8Zq86qwHtspJAIAJUwYMTnmlkKE1F1Qph6djB4JAUI8X6lord/wD+oQWtzOF3ZAcwRMKfLcnscHNJumdE1KXG8ZXJAcMNwZSRA2llbap5P0xxNXD2w6cmi1NvwJCvtLIx3KT9c/vQ3U/MNXP5BbKxyC2xeeTAJAmoTCtDoJd8Hxz1flFKkvQ996ZQp6h7Nm8iq99VQHeFCyRgjBmCACe31q5ex/SbFuzcFi0yKQv8Ugy4AmQSPNn0xml3sHbF6PEE8f2NEXerXb2n8zQAdsKNoIjuBVaZ6xLKDl36dmsNWeSmhEHaezZt6N00+qNvJbxD52VjA8wgEcAQIpV7P6HRov8AFZbl3cbrvLwzCYjcZgDsTyBQbGAzDDKshhgj6jkfA4ol+m2tRY1F10i4r3E3ISpIIMzBgnHPOT6mgiaogkHbl54xfNlKf7WO9++kC+1ft5bXfZtrccJh9hCiGXguJ25P/CKqnTtY929/CtmEVRLNAUQYk/P5mrNbQQqdiDJHlJNvbBJWMnue9Aau0JMCCEcSuCdgDKTGCQSfvUryUm7dxzd+lPOM2atRUymhR1rW3NPfAvoGVlEEMYPGfQwZ/wB4ppa2vZe9ZdWZIbaYG4z5h5iNhXdGfhEzSK+PH1AW6Sy2yQq9o2Bs9zlRQWtuQGZQF4EKIEQO1My7MFpAUztwxIFOESlIvCvfe0xedMQ1s3rqqHABAAVmCsAGUnaWECDg1L7M6xdO14agGFRrqOSIKp22iDOW/aqr03WsEjkbSsGYiDjmmHtWANltRtR0ssygkydzEmSSRMCYPaqTKN4yTsrp3WLkrKaH+3q4z8oKXrY/xC3FDm5ebco/KpIMjGCAQSQSZob2jtX9Sdz3VDBABEkQDMAwTMzmPT1pD7QahgbQU7RcWWC4E7okfpwBx6VzZ1blmljhYH0QkfXJo+CpLLBq2demEKuVGp295dIDfqLtddAoO7ygNGI4J3ekAzinPRTDeDqFj1KkiZzO4djEgj1+/fV9Mk2XVQjOCzMoySGtgcz6z86Xf41mZZjzIk49PL/YCrTOE6WCBs4jvSOKznFx1GzizbtnEswAZzuOZY57BskzHxqNn3bVaWIOFJyG/wAvqfSkNjUsgUCPeOTk4AjP0FTa3qDjUACBIXtx5347flFKLEwrqda1ekc7isXW2bSrus6ZjBMw8jcEb8oBBP0JpavXW0g33rN6IVphoxtYTtA2zyQwGIxzWuna+5/iHubsm9bUrA2kGZkR/lH2p/1G0LmotlveutDMMECQIBHaPWasXOQi6ZiXNMCfXfsi9dpuoCxkWwA5fzFeT2x8azeFjTtDbtxVSSWYT2bJ2xzjgUq9m9O1+0bigHwmAJbyrJBIEFfTOYHEnir107o9oG7AyLuzcAqsRsc5KgSZUZo+1pVs2/ASdoBaSSWJnMnv2+UACAAKlNmAJWoJYBmZ8wcXfRu2i4BU26pZ19PeKn0z2Ua5FwsbeezBpH04PMGfTEVYb3WQRcRoLwwAY7SMQv8AESSkwxnkelEdG6elxiTIMcqdp78xz9Zpbr+mW3vXLbT5SBvBhiJ7x5T9qEm1gh0iJfKMl0HSPG+u7muONhB3FiJLQJIy3LfOj7braQoHdy9vbGQDEHyz7pxEfL5U+9tdOu1njzW3NtW4O2SMx3x+5qjae4WbYePd+MZ/3Nasub4wSsUyI3Qgskqi9+zevMqgKsPCJlsXJ3Afb1+IFZSHo18rdAwYtHJyfeA5+grKZEsEQLxj/9k=">
                        </div>
                    </div>

                    <div class="text">
                        <span class="rating">⭐⭐⭐⭐⭐</span>
                        <h2>The Dark Forest Adventure</h2>
                        <p class="cost">$1870 / Per Person</p>
                        <div class="card-box">
                            <p class="time">🕓 3 Days</p>
                            <p class="location">✈ Monaco</p>
                        </div>
                    </div>

                </div>
                <div class="card">
                    <div class="zoom-img">
                        <div class="img-card">
                            <img
                                src="https://cdn2.wanderlust.co.uk/media/1012/jungfrauregion_lauterbrunnen-kleine-scheidegg_sts0040150-header.jpg?anchor=center&mode=crop&width=1200&height=0&rnd=131991915260000000">
                        </div>
                    </div>

                    <div class="text">
                        <span class="rating">⭐⭐⭐⭐⭐</span>
                        <h2>The Dark Forest Adventure</h2>
                        <p class="cost">$1870 / Per Person</p>
                        <div class="card-box">
                            <p class="time">🕓 3 Days</p>
                            <p class="location">✈ Bern, Switzerland</p>
                        </div>
                    </div>

                </div>
                <div class="card">
                    <div class="zoom-img">
                        <div class="img-card">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPz3tbI4ZAeQU0tFw1xfIClTHoPm_gmzJ61w&usqp=CAU">
                        </div>
                    </div>

                    <div class="text">
                        <span class="rating">⭐⭐⭐⭐⭐</span>
                        <h2>The Dark Forest Adventure</h2>
                        <p class="cost">$1870 / Per Person</p>
                        <div class="card-box">
                            <p class="time">🕓 3 Days</p>
                            <p class="location">✈ Seoul, South Korea</p>
                        </div>
                    </div>

                </div>
                <div class="card">
                    <div class="zoom-img">
                        <div class="img-card">
                            <img
                                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0FHeTPpo8OA7pA5OS6Rll8zerUzv8FkAFfQ&usqp=CAU">
                        </div>
                    </div>

                    <div class="text">
                        <span class="rating">⭐⭐⭐⭐⭐</span>
                        <h2>The Dark Forest Adventure</h2>
                        <p class="cost">$1870 / Per Person</p>
                        <div class="card-box">
                            <p class="time">🕓 3 Days</p>
                            <p class="location">✈ Tokyo, japan</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--===========About Us===============-->
        <section class="about">
            <div class="about-img">
                <img src="https://as1.ftcdn.net/v2/jpg/01/66/30/52/1000_F_166305284_gMSDQ7CeZD4h7RnZOQMrsbZiHccp71Fe.jpg">
            </div>
            <div class="about-text">
                <small>ABOUT OUR COMPANY</small>
                <h2>We are Go Trip Ravels Support Company</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    Ut enim ad minim veniam, quis nostrud</p>

                <label><input type="checkbox" checked>Lorem ipsum dolor sit amet</label>
                <label><input type="checkbox" checked>consectetur adipisicing elit</label>
                <label><input type="checkbox" checked>Architecto atque consequuntur</label>
                <label><input type="checkbox" checked>cupiditate doloremque ducimus</label>
                <a href="#">ABOUT US</a>
            </div>
        </section>

        <!--===========Footer=================-->
        <div class="footer">
            <div class="links">
                <h3>Quick Links</h3>
                <ul>
                    <li>Offers & Discounts</li>
                    <li>Get Coupon</li>
                    <li>Contact Us</li>
                    <li>About</li>
                </ul>
            </div>
            <div class="links">
                <h3>New Products</h3>
                <ul>
                    <li>Woman Cloth</li>
                    <li>Fashion Accessories</li>
                    <li>Man Accessories</li>
                    <li>Rubber made Toys</li>
                </ul>
            </div>
            <div class="links">
                <h3>Support</h3>
                <ul>
                    <li>Frequently Asked Questions</li>
                    <li>Report a Payment Issue</li>
                    <li>Terms & Conditions</li>
                    <li>Privacy Policy</li>
                </ul>
            </div>
        </div>
    </body>

</html>
</body>

</html>
