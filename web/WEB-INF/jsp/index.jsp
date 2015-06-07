<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:query var="tcommodities" dataSource="jdbc/trade">
    SELECT cmdC,cmdDescE FROM tcommodities
</sql:query>
<sql:query var="tcountries" dataSource="jdbc/trade">
    SELECT crCode,crName FROM tcountries
</sql:query>

<sql:query var="tregimes" dataSource="jdbc/trade">
    SELECT rgCode,rgDesc FROM tregimes
</sql:query>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<!--        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/cs-select.css" />
        <link rel="stylesheet" type="text/css" href="css/cs-skin-boxes.css" />-->
         <link rel="stylesheet" href="docsupport/style.css">
        <link rel="stylesheet" href="docsupport/prism.css">
        <link rel="stylesheet" href="chosen.min.css">

    </head>

    <body class="color-7">
		<div class="container">
                    
        <form name="AddForm" action="trade" method="POST">
        <table border="1">

            <tbody>
                <tr>
                    <td>
                        <select  class="chosen-select" tabindex="8" multiple style="width:350px;" data-placeholder="Choose a Country..." name="countriesPt">
                        <option value=""></option> 
                            <c:forEach var="row" items="${tcountries.rows}">
                                <option value="${row.crCode}">${row.crName}</option>
                            </c:forEach>
                        </select>
                    </td>
                    
                </tr>
<!--                <tr>
                    <td>
                        Reporters:
                        <select name="countriesRt">
                            <c:forEach var="row" items="${tcountries.rows}">
                                <option value="${row.crCode}">${row.crName}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>-->
                <tr>
                    <td> 
                        <select  class="chosen-select" tabindex="8" multiple style="width:350px;" data-placeholder="Choose a Commodity..." name="commodities" >
                        <option value=""></option>

                            <c:forEach var="row" items="${tcommodities.rows}">
                                <option value="${row.cmdC}">${row.cmdDescE}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                     <td>  
                        <select  class="chosen-select" tabindex="8" multiple style="width:350px;" data-placeholder="Choose a Trade flows..." name="regimes">
                        <option value=""></option> 
                            <c:forEach var="row" items="${tregimes.rows}">
                                <option value="${row.rgCode}">${row.rgDesc}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>  
                         <input type="text" name="periods"  multiple style="width:350px;" data-placeholder="Choose a period..." />
                    </td>
                </tr>
            </tbody>
        </table>
             <input type="submit" value="submit" name="todo" />
             		

        </form>
		</div>
                 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
            <script src="chosen.jquery.min.js"></script>
            <script>
                $(document).ready(function() {
                    $(".chosen-select").chosen();
                 });
             </script>

    </body>
</html>
