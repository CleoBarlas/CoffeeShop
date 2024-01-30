INSERT INTO sec_user (email, encryptedPassword, enabled)
VALUES ('fahad.jan@sheridancollege.ca', '$2a$10$1ltibqiyyBJMJQ4hqM7f0OusP6np/IHshkYc4TjedwHnwwNChQZCy', 1);
/*1234 */
INSERT INTO sec_user (email, encryptedPassword, enabled)
VALUES ('admin@gmail.com', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 1);
/*123 */
 
INSERT INTO sec_role (roleName)
VALUES ('ROLE_USER');
 
INSERT INTO sec_role (roleName)
VALUES ('ROLE_ADMIN');
 

 
INSERT INTO user_role (userId, roleId)
VALUES (1, 1);
 
INSERT INTO user_role (userId, roleId)
VALUES (2, 2);


INSERT INTO products (name, category, description, price)
VALUES ('Cappuccino', 'Hot', 'A rich and frothy coffee with a shot of espresso and steamed milk.', 3.99);

-- Espresso
INSERT INTO products (name, category, description, price)
VALUES ('Espresso','Hot','Strong and concentrated coffee made by forcing hot water through finely-ground coffee beans.', 2.49);

-- Latte
INSERT INTO products (name, category, description, price)
VALUES ('Latte', 'Hot', 'A smooth and creamy coffee made with espresso and steamed milk.', 4.29);

INSERT INTO products (name, category, description, price)
VALUES ('Mocha', 'Hot', 'A delicious blend of espresso, chocolate, and steamed milk, topped with whipped cream.', 4.49);

INSERT INTO products (name, category, description, price)
VALUES ('Macchiato', 'Hot', 'Espresso with a dollop of frothy milk on top.', 3.79);

INSERT INTO products (name, category, description, price)
VALUES ('Hot Chocolate', 'Hot', 'Rich and creamy chocolatey goodness topped with marshmallows.', 3.99);

INSERT INTO products (name, category, description, price)
VALUES ('Iced Coffee', 'Cold', 'Chilled coffee served over ice with your choice of sweeteners and milk.', 3.29);

INSERT INTO products (name, category, description, price)
VALUES ('Smoothie', 'Cold', 'A refreshing blend of fresh fruits, yogurt, and ice.', 4.99);

INSERT INTO products (name, category, description, price)
VALUES ('Cold Brew', 'Cold', 'A smooth and bold coffee brewed with cold water over an extended period.', 4.79);

-- Croissant
INSERT INTO products (name, category, description, price)
VALUES ('Croissant', 'Dessert','A flaky and buttery pastry, perfect for breakfast or a snack.', 2.99);

-- Fruit Tart
INSERT INTO products (name, category, description, price)
VALUES ('Fruit Tart','Dessert', 'A delightful tart filled with fresh fruits and a sweet pastry cream.', 6.99);

-- Iced Tea
INSERT INTO products (name, category, description, price)
VALUES ('Iced Tea', 'Cold','Refreshing black or green tea served over ice.', 2.79);

INSERT INTO products (name, category, description, price)
VALUES ('Chocolate Cake', 'Dessert', 'Decadent chocolate cake with layers of rich frosting.', 5.99);

INSERT INTO products (name, category, description, price)
VALUES ('Chicken Panini', 'Sandwich', 'Grilled chicken, cheese, and veggies pressed between two slices of ciabatta.', 6.49);

INSERT INTO products (name, category, description, price)
VALUES ('Cheesecake', 'Dessert', 'Classic New York-style cheesecake with a graham cracker crust.', 6.99);

-- More Hot Drinks
INSERT INTO products (name, category, description, price)
VALUES ('Chai Latte', 'Hot', 'A spiced tea latte made with black tea, spices, and steamed milk.', 4.29);

-- More Cold Drinks
INSERT INTO products (name, category, description, price)
VALUES ('Lemonade', 'Cold', 'Freshly squeezed lemonade served over ice.', 3.49);

INSERT INTO products (name, category, description, price)
VALUES ('Iced Matcha Latte', 'Cold', 'Chilled green tea latte made with matcha and sweetened milk.', 4.79);

-- Add Macarons
INSERT INTO products (name, category, description, price)
VALUES ('Macarons', 'Dessert', 'Delicate and colorful French macarons in assorted flavors.', 8.99);

-- Add Cupcake
INSERT INTO products (name, category, description, price)
VALUES ('Cupcake', 'Dessert', 'Moist chocolate cupcake topped with vanilla frosting.', 3.49);

-- Add Donut
INSERT INTO products (name, category, description, price)
VALUES ('Glazed Donut', 'Dessert', 'Classic ring-shaped donut with a sweet glaze.', 1.99);

-- Add Gingerbread Latte
INSERT INTO products (name, category, description, price)
VALUES ('Gingerbread Latte', 'Hot', 'Warm latte with the delicious taste of gingerbread', 3.99);

-- Add Christmas Cupcake
INSERT INTO products (name, category, description, price)
VALUES ('Christmas Cupcake', 'Dessert', 'Delicious Christmas-themed cupcake with festive decorations!', 3.99);

-- Add Festive Fruit Punch
INSERT INTO products (name, category, description, price)
VALUES ('Festive Fruit Punch', 'Cold', 'Refreshing fruit punch with a holiday twist', 4.79);

-- Add Candy Cane Latte
INSERT INTO products (name, category, description, price)
VALUES ('Candy Cane Latte', 'Hot', 'Try our Candy Cane flavored Latte!', 3.99);

-- Add Winter Wonderland
INSERT INTO products (name, category, description, price)
VALUES ('Winter Wonderland', 'Cold', 'Holiday Special Cold Drink!', 4.99);

-- Add Peppermint Mocha
INSERT INTO products (name, category, description, price)
VALUES ('Peppermint Mocha', 'Hot', 'Rich chocolate with peppermint flavor', 2.89);

