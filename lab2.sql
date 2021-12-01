--Users can signup/login to the website. They can post online complaints in the website.
--Employees can work on the complaints and mark the complaint as completed/inprogress/stuck
--Agents can login to the website. They can see the complaints and assign them to employees or mark them as closed.

-- 1. User table for login to website.

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

-- 2. Table for post online complaints.

CREATE TABLE online_complaints(
    id INT NOT NULL AUTO_INCREMENT,
    user_id VARCHAR(100) NOT NULL,
    complaint_details VARCHAR(300) NOT NULL,
    date DATE,
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

-- 3. Employee table.

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    phone_no VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(8) NOT NULL,
    PRIMARY KEY (id)
);

-- 4.Agent table.

CREATE TABLE agent(
    id INT NOT NULL AUTO_INCREMENT,
    phone_no VARCHAR(50),
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

-- 5. Complaint status table.

CREATE TABLE complaint_status(
    id INT NOT NULL AUTO_INCREMENT,
    complaint_details VARCHAR(300) not NULL,
    date DATE,
    user_id INT,
    employee_id INT,
    agent_id INT,
    complaints_status ENUM('Completed', 'Inprogress', 'Stuck'),
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(employee_id) REFERENCES employee(id),
    FOREIGN KEY(agent_id) REFERENCES agent(id)
);
