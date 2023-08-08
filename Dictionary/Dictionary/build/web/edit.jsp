<%-- 
    Document   : edit
    Created on : Mar 11, 2023, 4:17:10 PM
    Author     : Nanhbeo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        <%@include file="header.jsp" %>

        <form method="post" action="EditWord">
            <table class="table">
                <thead>
                    <tr>
                        <th></th>
                        <th>Viet Nam</th>
                        <th>English</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Word</td>
                        <td><input type="hidden" value="${vn.id}" name="vid" class="form-control">
                            <input name="vword" value="${vn.word}" type="text"  class="form-control"></td>
                        <td><input type="hidden" value="${eng.id}" name="eid" class="form-control">
                            <input name="eword" value="${eng.word}" type="text"  class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Definition</td>

                        <td><input name="vdefinition" value="${vn.definition}" type="text" class="form-control"></td>
                        <td><input name="edefinition" value="${eng.definition}" type="text"  class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Example</td>
                        <td><input name="vexp" value="${vn.exp}" type="text" class="form-control"></td>
                        <td><input name="eexp" value="${eng.exp}" type="text"  class="form-control"></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" name="Update" style="margin: 12px auto;" class="btn btn-primary">
        </form>
    </body>
</html>
