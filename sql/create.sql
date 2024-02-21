create table categories
(
    categoryid  serial
        primary key,
    name        varchar(255) not null,
    description text
);
create table ingredients
(
    ingredientid    serial
        primary key,
    name            varchar(255) not null,
    measurementunit varchar(50)  not null
);
create table inventoryitems
(
    inventoryitemid   serial
        primary key,
    ingredientid      integer
        references ingredients,
    quantityavailable numeric(10, 2) not null,
    reorderlevel      numeric(10, 2) not null,
    lastrestockdate   date           not null
);
create table orderdetails
(
    orderdetailid serial
        primary key,
    orderid       integer
        references orders,
    productid     integer
        references products,
    quantity      integer not null
);
create table orders
(
    orderid     serial
        primary key,
    datetime    timestamp      not null,
    totalamount numeric(10, 2) not null,
    status      varchar(50)    not null
);
create table productingredients
(
    productingredientid serial
        primary key,
    productid           integer
        references products,
    ingredientid        integer
        references ingredients,
    quantity            numeric(10, 2) not null
);
create table products
(
    productid  serial
        primary key,
    name       varchar(255)   not null,
    price      numeric(10, 2) not null,
    isactive   boolean        not null,
    categoryid integer
        references categories,
    imageurl   varchar(255)
);
