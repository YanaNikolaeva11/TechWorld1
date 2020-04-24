<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <%-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>

       <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="basket.css">
    <title>Basket</title>
</head>

<body>

<header>
    <div class="basket-name">TechWorld</div>
</header>

<section>
    <%--<div class="container">
        <div class="list-text">Product in basket:</div>
        <div class="container-products">
            <ul class="products">
                <li>
                    <div class="container-product">
                        <div class="product">product price.</div>
                        <a href="#" type="button" class="delete">Delete</a>
                    </div>
                </li>
                <li>
                    <div class="container-product">
                        <div class="product">Product.</div>
                        <a href="#" type="button" class="delete">Delete</a>
                    </div>
                </li>
                <li>
                    <div class="container-product">
                        <div class="product">Product.</div>
                        <a href="#" type="button" class="delete">Delete</a>
                    </div>
                </li>
                <li>
                    <div class="container-product">
                        <div class="product">Product</div>
                        <a href="#" type="button" class="delete">Delete</a>
                    </div>
                </li>
                <li>
                    <div class="container-product">
                        <div class="product">Product</div>
                        <a href="#" type="button" class="delete">Delete</a>
                    </div>
                </li>
            </ul>
        </div>

        <div class="container-info">
            <div class="info-total-order">
                <div class="text-total">Summ</div>
                <div class="price-total">10000</div>
            </div>
            <a href="#" type="button" class="button-confirm">Bye</a>
        </div>
    </div>--%>

    <div class="list-text">Product in basket:</div>
    <div class="container">
        <div class="row">
            <div class="col-10">
                <c:forEach var="product" items="${products}">
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <p>${product.name}</p>
                            <p>${product.price}</p>
                            <div class="d-flex justify-content-end">
                                <span class="badge badge-primary badge-pill">1</span>
                                <form method="post" action='<c:url value="/delete" />'>
                                    <input type="hidden" name="deleteID" value="${product.idProduct}">
                                    <button type="submit" class="btn btn-outline-danger" name="deleteID">Delete</button>
                                </form>
                                <form><button type="button" class="btn btn-outline-success">Plus</button></form>
                            </div>
                        </li>
                    </ul>
                </c:forEach>
            </div>
            <div class="col-2">
                <ul class="list-group">
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <div class="text-total">
                            <a>Summ</a>
                            <button type="button" class="btn btn-outline-danger">Buy</button>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
</body>
</html>
