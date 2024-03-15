      <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="builderproject.Pizza" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">
		<h2>Pizza Order Summary</h2>
		<p>
			<strong>Size:</strong> ${pizza.size}
		</p>
		<p>
			<strong>Crust:</strong> ${pizza.crust}
		</p>
		<p>
			<strong>Toppings:</strong>
		</p>
		<ul>
			<%
    Pizza pizza = (Pizza) request.getAttribute("pizza");
    if (pizza != null && pizza.getToppings() != null) {
        for(String topping : pizza.getToppings()) {
%>
			<li><%= topping %></li>
			<%
        }
    }
%>
		</ul>
		<a href="orderPizza.jsp" class="btn btn-primary">Order Another
			Pizza</a>
	</div>
</body>
</html>