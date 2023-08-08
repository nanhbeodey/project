<%-- 
    Document   : translate
    Created on : Mar 11, 2023, 2:56:10 PM
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
        <div class="container">
            <h1 style="text-align: center;">Translate</h1>
            <form method="get" action="Translate">
                <table class="table ">
                    <thead>
                        <tr>
                            <th style="width:  44%;text-align: center;">Enter your word</th>
                            <th style="width: 12%; text-align: center;">
                                To
                            </th   >   
                            <th style="width: 44%;text-align: center;">Word</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><textarea id="id" name="word" style="height: 100px;" class="form-control">${param["word"].trim()}</textarea></td>
                            <td style="text-align: center;"><select name="type" class="form-select  ">
                                    <option value="1" ${param["type"]==1?"Selected":""}>VN -> ENG</option>
                                    <option value="2" ${param["type"]==2?"Selected":""}>ENG -> VN </option> 
                                </select></td>
                            <td><textarea id="id" name="deword" style="height: 100px;" class="form-control"> ${newwords.word}</textarea></td>
                        </tr>
                        <tr>
                            <td>Definition: ${oldwords.definition}</td>
                            <td></td>
                            <td>Definition: ${newwords.definition}</td>
                        </tr>
                        <tr>
                            <td>Example: ${oldwords.exp}</td>
                            <td></td>
                            <td>Example: ${newwords.exp}</td>
                        </tr>
                    </tbody>
                </table>

                <label><input type="submit" class="btn btn-primary" value="Send"></label>
                <p>${notfound}</p>
                <c:if test="${notfound==\"Not found\"}">
                    <a class="btn btn-success" href="AddNewWord?word=${param["word"]}&type=${param["type"]}">Add new</a>
                    
                </c:if>

            </form>
            <script>
                
            </script>
        </div>
    </body>
</html>
