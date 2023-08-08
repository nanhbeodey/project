<%-- 
    Document   : register
    Created on : Feb 25, 2023, 11:23:20 PM
    Author     : Nanhbeo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
             body {
                background-image: url(https://www.dichthuatsms.com/wp-content/uploads/2017/08/dich-thuat-website-background.png);
                background-size: cover;
                background-position: center;
                height: 100vh;
                overflow: hidden;
            }
        </style>
    </head>
    <body >
     
        <div style="display: flex; justify-content: center; align-items: center; height: 100vh">
            <div style="background-color:burlywood ;padding: 30px; border-radius: 20px;width: 350px;">
                <h1 style="text-align: center">REGISTER</h1>
                <form method="post" action="register">           
                    Email: <input type="email" name="email" class="form-control" >
                    Name: <input type="text" name="name"  class="form-control" >         
                    Gender: <input type="radio" name="gender" value="1">Male
                    <input type="radio" name="gender" value="0">Female<br>        
                    Phone: <input type="number" name="phone"  class="form-control" >         
                    Password: <input type="password" name="pass"  class="form-control" >        
                    DOB: <input type="date" name="dob"  class="form-control" >     
                    Address: <input type="text" name="address"  class="form-control" >          
                    <input type="submit" value="Register" style="margin: 12px auto;" class="btn btn-primary" />
                </form>
            </div>   
        </div>  

    </body>
</html>