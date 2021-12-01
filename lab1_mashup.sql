
CREATE TABLE IF NOT EXISTS users( 
	id int NOT NULL AUTO_INCREMENT, 
	name VARCHAR(100) NOT NULL, 
	email VARCHAR(100) NOT NULL, 
  	password varchar(50) NOT NULL,
	PRIMARY KEY(id));

CREATE TABLE IF NOT EXISTS complaints( 
	id INT NOT NULL AUTO_INCREMENT, 
	user_id INT, 
  	complaint text NOT NULL,
  	`date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id), 
	FOREIGN KEY(user_id) REFERENCES users(id));

