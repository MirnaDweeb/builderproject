<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Pizza Order</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Order Your Pizza</h2>
        <form action="orderPizza" method="post">
            <div class="form-group">
                <label for="size">Size:</label>
                <select class="form-control" id="size" name="size">
                    <option>Small</option>
                    <option>Medium</option>
                    <option>Large</option>
                </select>
            </div>
            <div class="form-group">
                <label for="crust">Crust:</label>
                <select class="form-control" id="crust" name="crust">
                    <option>Thin</option>
                    <option>Thick</option>
                    <option>Stuffed</option>
                </select>
            </div>
            <div class="form-group">
                <label>Toppings:</label><br>
                <input type="checkbox" name="toppings" value="Cheese"> Cheese<br>
                <input type="checkbox" name="toppings" value="Pepperoni"> Pepperoni<br>
                <input type="checkbox" name="toppings" value="Mushrooms"> Mushrooms<br>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>