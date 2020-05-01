USE online_store;

CREATE TABLE brands (
  id int(128) NOT NULL AUTO_INCREMENT,
  brand varchar(128) NOT NULL,
  image varchar (128) not null,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE categories (
  id int(128) NOT NULL AUTO_INCREMENT,
  category varchar(128) NOT NULL DEFAULT 'name category',
  description varchar(128) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY category_UNIQUE (category)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
