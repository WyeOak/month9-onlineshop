USE online_store;

CREATE TABLE actions (
  id int(128) NOT NULL AUTO_INCREMENT,
  action_date datetime NOT NULL default '0000-00-00 00:00:00',
  product_id int(128) NOT NULL,
  supplier_id int(128) NOT NULL,
  qty decimal(10,3) NOT NULL DEFAULT '0.000',
  price decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (id),
  INDEX FK_product_idx (product_id),
  CONSTRAINT FK_product FOREIGN KEY (product_id) REFERENCES products (id),
  CONSTRAINT FK_supplier FOREIGN KEY (supplier_id) REFERENCES suppliers (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;