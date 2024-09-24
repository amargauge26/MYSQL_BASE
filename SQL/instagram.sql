CREATE DATABASE IF NOT EXISTS instagramdb;

USE instagramdb;

CREATE TABLE IF NOT EXISTS users (
    userid INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS posts (
    postid INT PRIMARY KEY,
    userid INT,
    caption VARCHAR(50),
    FOREIGN KEY (userid) REFERENCES users(userid)
);

INSERT INTO users (userid, username, email)
VALUES
(1, 'riti', 'abc@gmail.com'),
(2, 'raj', 'xyz@gmail.com'),
(3, 'rahul', 'abc2@gmail.com');

INSERT INTO posts (postid, userid, caption)
VALUES
(101, 1, 'light'), 
(102, 2, 'air'),
(103, 3, 'water');


use instagrambd;

show tables;


select * from users;
select * from posts;



