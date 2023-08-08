<%-- 
    Document   : login
    Created on : Feb 25, 2023, 10:44:24 PM
    Author     : Nanhbeo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            
            td{
                padding: 15px;
            }
            .backr{
                background-image: url(https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg);
                background-size: cover;
                background-position: center;
                height: 100vh;
                overflow: hidden;
            }
        </style>
    </head>
    <body >
        
        <div class="backr" style="display: flex; justify-content: center; align-items: center;background-color: cadetblue; height: 100vh">
            <div style="background-color: white ;padding: 30px;border-radius: 20px;">
                <h1 style="text-align: center;">LOGIN</h1>
                <form method="post" action="login">
                    <table border="0">
                        <tr>
                            <td>EMAIL:</td>
                            <td><input type="email" class="form-control" name="email" value="${param["email"]}"></td>
                        </tr>
                        <tr>
                            <td>PASSWORD:</td>
                            <td><input type="password" class="form-control" name="pass" value="${param["pass"]}"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" class="btn btn-primary" value="Login" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <a href="register"">Click here to sign up</a>
                            </td>
                        </tr>
                    </table>
                </form>
                <p style="color: red">${mess}</p>
            </div>
        </div>

    </body>
</html>