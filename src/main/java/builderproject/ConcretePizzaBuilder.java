package builderproject;
import builderproject.Pizza;
import builderproject.PizzaBuilder;
public class ConcretePizzaBuilder implements PizzaBuilder {
    private Pizza pizza = new Pizza();

    @Override
    public PizzaBuilder setSize(String size) {
        pizza.setSize(size);
        return this;
    }

    @Override
    public PizzaBuilder setCrust(String crust) {
        pizza.setCrust(crust);
        return this;
    }

    @Override
    public PizzaBuilder addTopping(String topping) {
        pizza.getToppings().add(topping);
        return this;
    }

    @Override
    public Pizza build() {
        return pizza;
    }
}