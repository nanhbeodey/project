<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : header
    Created on : Mar 11, 2023, 3:41:18 PM
    Author     : Nanhbeo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <style>
        a{text-decoration: none;}
    </style>
    <body>
    <div class="container-fuid bg-white">

        <div class="container bg-white">
            <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 border-bottom ">
                <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none" style="font-size: 40px;">
                    &#x26CE;
                </a>

                <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                    <li><a href="Translate" class="nav-link px-2 active">Translate</a></li>
                        <c:if test="${sessionScope.user != null}">
                        <li><a href="DictionaryStore" class="nav-link px-2 ">Word Store</a></li>
                        </c:if>
                </ul>

                <div class="col-md-3 text-end">
                    <c:if test="${sessionScope.user == null}">
                        <a type="button" href="login" class="btn btn-outline-primary me-2">Login</a>
                    </c:if>
                    <c:if test="${sessionScope.user != null}">
                        <a type="button" href="editProfile" class="btn btn-outline-primary me-2">Edit Profile</a>
                        <a type="button" href="logout" class="btn btn-primary">Logout</a>
                    </c:if>
                </div>
            </header>
        </div>
    </div>

    <!--        <div style="padding: 5px; width: 100%; display: flex ; justify-content: space-around;">
                <h2><a href="Translate">Translate</a></h2>
    <c:if test="${sessionScope.user == null}">
        <h2><a href="login">Login</a></h2>
    </c:if>
    <c:if test="${sessionScope.user != null}">
        <h2><a href="ListPairWord">List Word</a></h2>
        <h2><a href="editProfile">Edit Profile</a></h2>
        <h2><a href="logout">Logout</a></h2>
    </c:if>
    <h2><a></a></h2>
</div>-->
</body>
</html>
