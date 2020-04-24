<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="rolecontrole.css">
    <title>control</title>
</head>

<body>

<header>
    <div class="shopname">TechWorld</div>
</header>

<section>
    <div class="list-text">Users</div>
    <div class="container">
        <div class="row">
            <div class="col">
                <c:forEach var="customer" items="${customers}">
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <p>${customer.name}</p>
                            <p>${customer.surname}</p>
                            <p>${customer.patronymic}</p>
                            <p>${customer.role}</p>
                            <div class="d-flex justify-content-end">
                                <form method="post" action='<c:url value="/edit" />' class="form-inline">
                                    <input type="text" class="form-control" placeholder="Role" name="role">
                                    <input type="hidden" name="editID" value="${customer.idCustomer}">
                                    <button type="submit" class="btn btn-outline-danger" name="editID">Edit</button>
                                </form>
                            </div>
                        </li>
                    </ul>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

</body>
</html>
