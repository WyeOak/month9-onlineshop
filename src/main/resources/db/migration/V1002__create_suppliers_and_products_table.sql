USE online_store;


CREATE TABLE suppliers (
  id INT(128) NOT NULL AUTO_INCREMENT,
  supplier VARCHAR(128) NOT NULL,
  image varchar (128) not null,
  address VARCHAR(128),
  contacts VARCHAR(128),
  PRIMARY KEY (id)
  ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE products (
  id int(128) NOT NULL AUTO_INCREMENT,
  category_id int(128) NOT NULL,
  brand_id int(128) DEFAULT NULL,
  product varchar(128) NOT NULL,
  image varchar (128) not null,
  price decimal(10,2) DEFAULT '0.00',
  description varchar(128) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FK_category_idx (category_id),
  KEY FK_brand_idx (brand_id),
  CONSTRAINT FK_brand FOREIGN KEY (brand_id) REFERENCES brands (id) ON UPDATE CASCADE,
  CONSTRAINT FK_category FOREIGN KEY (category_id) REFERENCES categories (id) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;