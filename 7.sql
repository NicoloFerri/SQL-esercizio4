
/*
create table meal_order(
time_meal_ordered date,
meal_name varchar(255)
);

INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
VALUES (NOW(), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta'),
(DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Sushi Platter'),
(DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Pesto Pasta'),
(DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 10 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 11 HOUR), 'Pesto Pasta'),
(DATE_ADD(NOW(), INTERVAL 12 HOUR), 'Sushi Platter'),
(DATE_ADD(NOW(), INTERVAL 13 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 14 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 15 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 16 HOUR), 'Sushi Platter'),
(DATE_ADD(NOW(), INTERVAL 17 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 18 HOUR), 'Spaghetti Bolognese'), 
(DATE_ADD(NOW(), INTERVAL 19 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 20 HOUR), 'Pesto Pasta'),
(DATE_ADD(NOW(), INTERVAL 21 HOUR), 'Sushi Platter'),
(DATE_ADD(NOW(), INTERVAL 22 HOUR), 'Steak and Mash');


create table meal(
meal_id int auto_increment primary key,
name varchar(255),
price double,
calories int
);

insert into meal (name,price,calories)
values('Grilled Chicken Sandwich',15.00,750),
      ('Pesto Pasta',13.50,900),
      ('Steak and Mash',17.50,550),
      ('Spaghetti bolognese',14.00,670),
      ('Sushi PLatter',12.50,450);


 */


select  max(price) 
from meal
where calories > 500;


select avg(calories) 
from meal
where price > 15;


select name, price
from meal
having price = (select max(price) from meal);

select name, price
from meal
having price < (select avg(price) from meal);


select name,price,calories
from meal
having price < (select avg(price) from meal)  and calories > 600;



