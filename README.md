# Sinatra MVC & Forms

## Part 1: Conceptual Questions
1. What type of HTTP request (what HTTP verb) is used for submitting data from a web form?
2. How is the form data accessed in the controller?
3. Describe the request lifecycle when a user submits a form to create a new record in the database (which components are needed in what order).
4. What is a cookie? What is a session?

## Part 2: Coding Challenge - Expanding the Online Tea Shop
* You will be expanding your previously-started online tea ordering application.
* Add functionality for a user on the app to place an order: 
1. Refactor the teas index view to include a single-input form with a submit button _below each tea selection_ where a user can enter their name.
2. Create a model, table, and controller for an `order` model. An order will have an attribute of `name` (the person who placed the order) and will have a `tea` associated with it.
3. Again, refactor the teas index view submit form to include an input field for not only the name data, but also the tea data. (What type of input field could you use to pass information you want to be hidden in the view?)
3. Create a route `post /orders` in the orders controller that will be responsible for handling the request when a user submits the form. This route should create a new order in the db with the tea and person's name. Then it should redirect to a new route in the orders controller, `get /success`.
4. The `get /success` route should display the message "Thank you. Your order has been placed."
5. BONUS: Create a `user` model with the relationships: `user has_many orders`, `order belongs_to user` and refator the orders create route to account for this relationship when saving the new order.