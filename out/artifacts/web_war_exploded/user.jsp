<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="user.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<title>Products</title>
</head>
<body>
	<header>
		<div>
			<a class="name-shop">TechWorld</a>
			<form method="get" action='<c:url value="/search" />' class="form" >
				<input type="search"  name="search" class="input">
				<i class="fa fa-search"></i>
			</form>
		</div>
	</header>

	<div class="upper-container">
		<div>
			<form method="get" action='<c:url value="/basket" />'>
				<a><input type="submit" class="button-basket" value="Basket"></a>
				<p class="text-count-products">Products all:</p>
				<p class="count-products">0</p>
			</form>
		</div>
	</div>

	</div>
	<section>
			<%--<div class="lower-container-products">
				<ul class="products">
					<c:forEach var="product" items="${products}">
						<li>
							<div class="product" >

								<p>${product.name}</p>
								<p>Price: ${product.price}</p>
								<p>Rating: ${product.rating}</p>

								&lt;%&ndash;<form method="post" action='<c:url value="/buy" />' style="display:inline;">
									<input type="hidden" name="buyID" value="${product.idProduct}">
									<input class="buy" type="submit" value="In Basket" >
								</form>&ndash;%&gt;
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>--%>
				<div class="container-fluid">
					<div class="row">
						<div class="col-3">
							<div class="categories">
								<form method="get" action='<c:url value="/phone" />'>
									<a><input type="submit" value="Phone" class="category-bottom"></a>
								</form>

								<form method="get" action='<c:url value="/computers" />'>
									<a><input type="submit" value="Computers" class="category-bottom"></a>
								</form>

								<form method="get" action='<c:url value="/kitchen" />'>
									<a><input type="submit" value="Kitchen appliances" class="category-bottom"></a>
								</form>
							</div>
						</div>
						<div class="col-6">
							<ul class="products">
								<c:forEach var="product" items="${products}">
									<li>
										<div class="product" >

											<p>${product.name}</p>
											<p>Price: ${product.price}</p>
											<p>Rating: ${product.rating}</p>

												<%--<form method="post" action='<c:url value="/buy" />' style="display:inline;">
                                                    <input type="hidden" name="buyID" value="${product.idProduct}">
                                                    <input class="buy" type="submit" value="In Basket" >
                                                </form>--%>

											<form method="post" action='<c:url value="/basket" />'>
												<%--<button type="button" class="btn btn-primary btn-sm" style="border-radius: 25px ;border: 2px  ;border-bottom-color: dimgrey ; margin-top: 15px" value="info">Info</button>--%>
												<input type="hidden" name="buyID" value="${product.idProduct}">
												<button  type="submit" class="btn btn-secondary btn-sm" style="border-radius: 25px ;border: 2px ; border-bottom-color: dimgrey ; margin-top: 15px">in Basket</button>
											</form>

										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
						<div class="col-3">
							<label for="customRange2">Sort price</label>
							<input type="range" class="custom-range" min="0" max="110000" id="customRange2">
						</div>
					</div>
				</div>
	</section>
</body>
</html>



<%--
<form method="post" action='<c:url value="/open" />' style="display:inline;">
	<input type="hidden" name="id" value="${product.idProduct}">
	<input type="submit" value="Open">
</form>

<form method="post" action='<c:url value="/buy" />' style="display:inline;">
	<input type="hidden" name="id" value="${product.idProduct}">
	<input type="submit" value="Buy">
</form>--%>
