<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      html {
        font-family: sans-serif;
        line-height: 1;
        color: grey;
      }
      .cont {
        margin: 0 auto;
        width: 1200px;
      }
      .inner {
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
      }
      header {
        background-image: linear-gradient(
            rgba(34, 34, 34, 0.6),
            rgba(36, 36, 36, 0.6)
          ),
          url("\images/02.jpg");
        background-size: cover;
        height: 100vh;
        position: relative;
        color: aliceblue;
      }
      .head-cont {
        width: 50%;
      }
      nav {
        display: flex;
        justify-content: space-between;
        padding-top: 24px;
      }
      h1 {
        padding: 24px 0;
      }

      p {
        margin: 24px 0;
      }
      .btn {
        text-decoration: none;
        display: inline-block;
        padding: 24px;
        background-color: orange;
        cursor: pointer;
        color: aliceblue;
        border-radius: 14px;
      }
      section {
        padding: 24px 24px;
      }
    </style>
</head>
<body>
 <header>
      <nav class="cont">
        <div>LOGO</div>
        <div>NAVIGATION</div>
      </nav>

      <div class="inner cont">
        <div class="head-cont">
          <h1>This is the welcome website, which you have login successfully.</h1>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis
            exercitationem mollitia non porro.
          </p>
          <a href="#" class="btn">Start Your Journey</a>
        </div>
      </div>
    </header>

    <section>
      <div class="cont">
        <h2>Lorem ipsum dolor sit amet</h2>
        <p>
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem
          hic dolores tenetur sit voluptates dicta, maiores quisquam est.
          Veritatis distinctio ad ipsa laboriosam, amet numquam tempore
          perspiciatis repellat iste at.
        </p>
      </div>
    </section>

</body>
</html>