<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn Form</title>

<style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      body{
       background-image: linear-gradient(
            rgba(34, 34, 34, 0.5),
            rgba(36, 36, 36, 0.5)
          ),
          url("\images/01.jpg");
        background-size: cover;
        height: 100vh;
        text-align: center;
        padding: 100px;
        font-family: sans-serif;
        line-height: 1;
        color: #000;
        
      }
      h1{
        margin-bottom : 50px;
        font-size: 50px;
      }
      button{
        background-color: blueviolet;
        color: #fff; 
        padding: 10px;
        cursor: pointer;
      }
      form{
         font-size: 30px;
         margin: 40px;
      }
      input{
         font-size: 20px;
         border-radius: 5px;
         border:none;
         padding : 8px;
      }
     
</style> 
</head>
<body>

	<input type="hidden" id="status"
		value="<%= request.getAttribute("status") %>" />

	<h1>LogIn</h1>
	<div>
		<form action="login" method="post">
			 
			<ion-icon name="person-outline"></ion-icon>
			<input type="text"
				name="uName" placeholder="UserName" required/> <br /> <br /> 
				
		    <ion-icon name="lock-closed-outline"></ion-icon>
		    <input type="password" name="uPass" placeholder="Password" required/> <br />
			<br /> <br/>
			<button>LOGIN</button>

		</form>

	</div>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>





	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Congrats", "LogIn Successfully", "success");
		} else if (status == "failed") {
			swal("Sorry", "Wrong Credentials ", "error");
		}
	</script>


</body>
</html>