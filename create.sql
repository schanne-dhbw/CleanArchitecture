-- create table Items (id bigint not null, item varchar(255), primary key (id))
CREATE TABLE Items
(
  id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
  item VARCHAR(255),
  PRIMARY KEY (id)
);

-- create table Users (id bigint generated by default as identity, userName varchar(255), primary key (id))
CREATE TABLE Users
(
  id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
  userName VARCHAR(255),
  PRIMARY KEY (id)
);

-- create table Orders (id bigint not null, orderDate timestamp, orderId varchar(255), createdBy_id bigint, primary key (id))
CREATE TABLE Orders
(
  id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
  orderId VARCHAR(255),
  orderDate TIMESTAMP,
  createdBy_id BIGINT,
  PRIMARY KEY (id),
  FOREIGN KEY (createdBy_id) REFERENCES Users(id)
);

-- create table OrderItem (id bigint not null, orderItem varchar(255), orderId bigint, primary key (id))
CREATE TABLE OrderItem
(
  id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
  orderItem VARCHAR(255),
  orderId BIGINT,
  PRIMARY KEY (id),
  FOREIGN KEY (orderId) REFERENCES Orders(id)
);

