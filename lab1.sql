--Try creating the database design for the following.
--Users can signup/login to the website. They can post online complaints in the website.


-- 1. User table for login/to website..

CREATE TABLE users(
id INT NOT NULL AUTO_INCREMENT,
email VARCHAR(100) NOT NULL,
password VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

-- 2. Table for post online complaints..

CREATE TABLE online_complaints(
    id INT AUTO_INCREMENT,
    user_id VARCHAR(100) NOT NULL,
    complaint_details VARCHAR(300) NOT NULL,
    date DATE NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id)
);


