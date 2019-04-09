CREATE TABLE customers(
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(50),
  address VARCHAR(255),
  email VARCHAR(255)
);
CREATE TABLE orders(
  order_id INT AUTO_INCREMENT,
  staff VARCHAR(50),
  customers_id INT,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customers_id) REFERENCES customers(id)
);
CREATE TABLE order(
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  staff VARCHAR(50),
  customers_id INT REFERENCES customers(id)
);
