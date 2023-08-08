<%-- 
    Document   : editProfile
    Created on : Feb 28, 2023, 10:25:26 PM
    Author     : Nanhbeo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            .backr{
                background-image: url(https://cdn5.f-cdn.com/contestentries/1578585/21468461/5d62b49ac544b_thumb900.jpg);
                background-size: cover;
                background-position: center;
                height: 100vh;
                overflow: hidden;
            }
        </style>
    </head>
    <body >
         
        <div class="backr" style="display: flex; justify-content: center; align-items: center;background-color: aquamarine; height: 100vh">
            <div style="background-color: white;padding: 30px;border-radius: 20px;">
        <div style="background-color: white;padding: 30px; margin-top:50px;border-radius: 20px;width: 350px;">
            <h1 style="text-align: center">EDIT PROFILE</h1>
            <form method="post" action="editProfile">
                <input type="hidden" name="id" value="${sessionScope.user.id}">
                Email: <input type="email" name="email" value="${sessionScope.user.email}"class="form-control">
                Name: <input type="text" name="name" value="${sessionScope.user.fullname}"class="form-control">          
                Gender: <input type="radio" name="gender" value="1" ${sessionScope.user.gender?"checked":""}>Male<input type="radio" name="gender" value="0" ${!sessionScope.user.gender?"checked":""}>Female    <br>      
                Phone: <input type="text" name="phone" value="${sessionScope.user.phone}"class="form-control">                  
                DOB: <input type="date" name="dob" value="${sessionScope.user.dob}"class="form-control">          
                Address: <input type="text" name="address" value="${sessionScope.user.address}"class="form-control">          
                <input type="submit" value="Submit" class="btn btn-primary"  style="margin: 12px auto;"/>
            </form>
        </div>        </div>

    </body>
</html>